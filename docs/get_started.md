# VideoOS入门
`VideoOS `是在[LuaView](https://github.com/alibaba/LuaViewSDK)开源项目基础上，开发的一套视频互动对接层，其初衷是为了提升移动端互动模块动态化能力，同时做到Android、iOS业务代码共用，减少同一业务的人员重复投入。
## VideoOS基础
VideoOS采用Lua语音开发，开发VideoOS小程序需要熟悉Lua语言，Lua语言入门可以学习[菜鸟教程](https://www.runoob.com/lua/lua-tutorial.html)。

VideoOS是在[LuaView](https://github.com/alibaba/LuaViewSDK)开源项目基础上做的二次开发，所以一些常用UI控件的熟悉可以参考[LuaView Demo](https://github.com/alibaba/LuaViewSDK/tree/master/IOS/Demo/Demo/lua)

### VideoOS Lua入口方法
VideoOS所有的lua文件运行时，都从show方法开始执行。

```lua
function show(args)
    print("first load")
end
```

### VideoOS调用本地Lua
VideoOS可以通过下面方法获取的调用本地Lua的路径：

#### iOS
```Objective-C
NSString *filepath = [VPUPPathUtil luaOSPath];
```

#### Android
```Objective-C
VenvyFileUtil.getCachePath(Context()) + "/lua/os/cache/demo");
```
将开发的lua文件放在上面获取到的路径中，通过调用原生的接口调用lua文件

#### iOS
```Objective-C
[interfaceController navigationWithURL:[NSURL URLWithString:@"LuaView://defaultLuaView?template=ifs_hotspot.lua&id=5aa5fa5133edbf375fe43fff4"] data:dict];
```

#### Android
```Objective-C
Uri uri = Uri.parse("LuaView://defaultLuaView?template=ifs_hotspot.lua&id=ifs_hotspot");
HashMap<String, String> params = new HashMap<>();
params.put("data", dict);
mVideoPlusView.navigation(uri, params, new IRouterCallback() {
    @Override
    public void arrived() {
        mVideoPlusView.start();
    }

    @Override
    public void lost() {

    }
});
```
注：ifs_hotspot.lua是本地调用的lua文件，id（5aa5fa5133edbf375fe43fff4）是这个文件的一标识，dict是传给lua文件的数据

### lua文件打开其他lua文件
lua文件可以通过`Native:sendAction`方法打开其他lua文件
```lua
Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_car_window.lua" .. "&id=" .. "os_card_car_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
```
注：os_card_car_window.lua是打开的lua文件，"os_card_car_window" .. tostring(card.id)是这个文件的一标识，priority是lua加载的层级，priority值越大，新加载的View在父View的越上层, data是传给lua文件的数据
 
## 注意事项

1. 语言自带的方法用`.`或`:`调用都可以，自定义的方法用`:`调用
2. 创建的对象需要被其他对象持有，不然在内存紧张时，lua会调用`gc`方法，释放未被持有的对象
3. 可以用`.`的方式，检查某个对象是否支持此方法

```lua
if (ruleView.movementMethod) then
    ruleView:movementMethod()
end
```
 