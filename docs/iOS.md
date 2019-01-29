# Video++ iOS互动层对接

## SDK集成
有两种方式将Video++互动层添加到你的工程：

- 使用CocoaPods
- 手动添加framework

### 使用CocosPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries in your projects. See the [Get Started](http://cocoapods.org/#get_started) section for more details.

##### Podfile
```
platform :ios, '8.0'
pod 'VideoPls-iOS-SDK', '~> 1.0'
```
如果你使用的是swift开发，请确保添加 `use_frameworks!` 
```
platform :ios, '8.0'
use_frameworks!
```
### 手动添加framework
#### 快速集成SDK
1.	将下载的SDK解压后导入您的工程中  (注:请务必在此步骤中选择“Create groups”单选按钮组, 因该SDK体积过大，不要勾选“Copy items if needed”。用这种方式仅引用该SDK,避免引起项目体积过大的问题)
	 <img src="https://vplscdn.videojj.com/docs/img/docs_ios_2.png" style="max-width: 600px;width: 100%;"/>

2. 设置项目的Framework Search Paths  (注:由于我们采用了Reference的方式，所以此处必须在Framework Search Paths里面添加SDK在本机所在的路径，路径从Users开始),如图：
   <img src="https://vplscdn.videojj.com/docs/img/docs_ios_3.png" style="max-width: 600px;width: 100%;"/>

3.	添加依赖库(Xcode 7 下 `*.dylib` 库后缀名更改为 `*.tbd` ),请确保已添加以下 依赖库:

    ```js
    libz.tbd
    libsqlite3.tbd
    MediaPlayer.framework,
    WebKit.framework,
    ImageIO.framework
    Security.framework
    CoreMedia.framework
    AVFoundation.framework
    MobileCoreService.framework
    Accelerate.framework
    CoreTelephony.framework
    SystemConfiguration.framework
    AssetsLibrary.framework
    Photos.framework
    CoreData.framework
    ```
4. 设置 Other Linker flags.  
	在 Other Linker Flags 中添加 –ObjC,如图(注意:如果项目中加载多个静态库有冲突，并使用了`-force_load` 的，不能添加`-ObjC`，且相 应此库也需要加入 `force_load`，对应路径需要指定到 `VideoPlsCytronSDK.framework/VideoPlsCytronSDK.h`):
	  <img src="https://vplscdn.videojj.com/docs/img/docs_ios_4.png" style="max-width: 600px;width: 100%;"/>

5. 可能依赖的第三方库(具体视平台不同而不一致)

```
 'AFNetworking', '~>2.0'
 'SDWebImage', '4.2.2'
```
	  
## 互动层对接	

### SDK初始化
在 `AppDelegate.m` 文件中导入 `<VideoPlsInterfaceControllerSDK/VPIConfigSDK.h>` ，并在 `application:didFinishLaunchingWithOptions:` 方法中初始化SDK。

示例代码：

```objective-c
#import <VideoPlsInterfaceControllerSDK/VPIConfigSDK.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{ 
    //other code
    [VPIConfigSDK initSDK];
    //other code
}
```
### 对接`VPInterfaceController`
	
1. 根据需要接入的`SDK`创建`VPInterfaceControllerConfig`，将`SDK`需要的信息配置在`config`中。
	
	* identifier 为点播视频url或直播房间号
	* types 为视频类型（点播or直播），默认为点播

2. 利用生成的`config`初始化`InterfaceController`， `interfaceController.view`就是生成的互动层，将这个`view`添加到播放器层之上就可以了。根据接入的`SDK`的需求可能有一些特殊的接口，放在相应的文件中，如需要调用，将对应文件`import`就可以调用了,详细作用请看注释。

	```
    //配置信息
    VPInterfaceControllerConfig *config = [[VPInterfaceControllerConfig alloc] init];
    config.identifier = videoUrl; //or roomId
    config.types = VPInterfaceControllerTypeVideoOS; //or VPInterfaceControllerTypeLiveOS
    //扩展信息
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    [dict setObject:@"lol" forKey:@"category"];
    config.extendDict = dict;

    //播放器size
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    VPIVideoPlayerSize *videoPlayerSize = [[VPIVideoPlayerSize alloc] init];
    videoPlayerSize.portraitFullScreenWidth = screenSize.width < screenSize.height ? screenSize.width : screenSize.height;
    videoPlayerSize.portraitFullScreenHeight = screenSize.width < screenSize.height ? screenSize.height : screenSize.width;
    videoPlayerSize.portraitSmallScreenHeight = videoPlayerSize.portraitFullScreenWidth * 9.0/16.0;
    videoPlayerSize.portraitSmallScreenOriginY = 0.0;

    VPInterfaceController  *interfaceController = [[VPInterfaceController alloc] initWithFrame:self.view.bounds config:config videoPlayerSize:videoPlayerSize];

    interfaceController.delegate = self;
    interfaceController.userDelegate = self;
    interfaceController.videoPlayerDelegate = self;

    [self.view addSubview:interfaceController.view];

    [interfaceController start];

    ...
    //结束时，调用stop
    [interfaceController stop];

	```

3. 接着，设置当前互动层显示区域，代码如下所示

	```
 	[interfaceController notifyVideoScreenChanged:type];
	```

	* 互动层加载完成、视频加载完成，建议调用更新方法，旋转横竖屏之后必须调用更新方法

4. 全部完成之后调用 `start` ，开启互动层。
5. 获取互动层状态信息需要遵守`VPInterfaceStatusNotifyDelegate`协议，详见注释
6. 如需深度对接账号系统需要遵守`VPUPUserLoginInterface`协议，详见注释
7. 如退出播放页面或直播间，调用`stop`方法

#### 用户对接相关
1. VPIUserLoginInterface 和 VPIUserInfo, VPIUserInfo用来组装用户实例, VPIUserLoginInterface 用来获取关于用户数据的回调; 
* ```- (VPIUserInfo *)vp_getUserInfo``` 通过平台方得到你们的userInfo
* ```- (void)vp_userLogined:(VPIUserInfo *) userInfo``` 通过sdk登陆后会给你们对应的用户信息
* ```- (void)vp_requireLogin:(void (^)(VPIUserInfo *userInfo))completeBlock``` 登陆成功后组成userInfo使用completeBlock(userInfo)完成回调

#### 获取互动层状态信息
VPInterfaceStatusNotifyDelegate ```- (void)vp_interfaceActionNotify```, 会回传互动层状态和需要的操作

* adID 为广告的唯一标识
* adName 为广告名
* eventType 为广告触发的事件，包括展示、点击、关闭等
* actionType 为对接方需要做的操作，包括打开外链，暂停视频，播放视频
* url 为外链地址

示例如下：

```
	- (void)vp_interfaceActionNotify:(NSDictionary *)actionDictionary {

        VPIActionType actionType = (VPIActionType)[[actionDictionary objectForKey:@"actionType"] integerValue];
        switch (actionType) {
            case VPIActionTypeOpenUrl:
                if ([actionDictionary objectForKey:@"url"]) {
                    VPWebViewController *webViewController = [[VPWebViewController alloc] init];
                    __weak typeof(self) weakSelf = self;
                    [webViewController loadUrl:[actionDictionary objectForKey:@"url"] close:^{
                        __strong typeof(self) strongSelf = weakSelf;
                        [strongSelf->_interfaceController platformCloseActionWebView];
                    }];
                    [self presentViewController:webViewController animated:YES completion:nil];
                }
                break;
            case VPIActionTypePauseVideo:
                [_player pause];
                _mediaControlView.hidden = YES;
                break;
            case VPIActionTypePlayVideo:
                [_player play];
                _mediaControlView.hidden = NO;
                break;

            default:
                break;
        }

        VPIEventType eventType = (VPIEventType)[[actionDictionary objectForKey:@"eventType"] integerValue];
        if (eventType == VPIEventTypeBack) {
            [self dismissPlayerViewController];
        }
	}
```
#### 注意事项

1. VPInterfaceControllerConfig identifier参数为视频的标识(原url),可以用url作为参数 或 使用拼接 ID的方式来识别(前提为与pc对接并通过)。
2. 文档中的代码仅供参考，实际参数请根据项目自行配置。
3. 互动层会向下层 view 发放点击手势，不用担心控制器界面会被阻挡手势。
4. 请将互动层置于合适位置以防阻挡手势。
5. 最佳位置为加载控制栏的下方,并且于手势层的上方,请不要将 cytronView 放 入包含手势操作的 View 中。
6. `SDK`目前支持系统为 ios8 以上。
7. 存在bundle包时请将bundle包放入资源文件中,使SDK能正常调用。

## Demo演示

为了方便测试数据，在Demo中有一份演示的投放数据adInfo.json，包含云图和中插投放的数据，数据格式如下：

```
{
    "totalRecord": 2,
    "resMsg": "处理成功",
    "attachInfo": null,
    "resCode": "00",
    "launchInfoList": [{
                       "id": "cd0d5140-4922-442a-87f6-af3aa74c5a5e",
                       "template": "os_cloud.lua",
                       "videoStartTime": 10000,
                       "videoEndTime": 31000,
                       "clockStartTime": null,
                       "clockEndTime": null,
                       "duration": 20000,
                       "data": {
                       "positionY": 0.5,
                       "isShowAds": true,
                       "creativeName": "wp-sucai-008",
                       "interactionTemplateId": 34,
                       "imageUrl": "https://consolecdn.videojj.com/upload_img/5a193ce05e027500009bc40e.jpeg",
                       "width": 0.1,
                       "linkUrl": "https://www.baidu.com",
                       "interactionTypeId": 53,
                       "isShowClose": true,
                       "ratio": 1,
                       "positionX": 0.5,
                       "needShowOnPortrait": true
                       }
                       }, {
                       "id": "fdcc4b0a-03a7-4697-b64f-9c93b7d55409",
                       "template": "os_wedge.lua",
                       "videoStartTime": 5000,
                       "videoEndTime": 23000,
                       "clockStartTime": null,
                       "clockEndTime": null,
                       "duration": 20000,
                       "data": {
                       "isShowAds": true,
                       "creativeName": "wp-wedge-001",
                       "interactionTemplateId": 35,
                       "isShowClose": true,
                       "positionX": 0,
                       "positionY": 0,
                       "videoDuration": 60,
                       "repeatTimes": 5,
                       "isShowCountdown": true,
                       "videoUrl": "http://qa-video.oss-cn-beijing.aliyuncs.com/mp4/xfxz0227tvc.mp4",
                       "closeAfter": 10000,
                       "width": 1,
                       "linkUrl": "http://baidu.com",
                       "interactionTypeId": 54,
                       "ratio": 1,
                       "needShowOnPortrait": true
                       }
                       }]
}
```

模拟投放操作流程，启动Demo App，点击点播，进入点播页面以后，点击右下角的按钮，在弹出的列表中，选择模拟，即可模拟投放数据。