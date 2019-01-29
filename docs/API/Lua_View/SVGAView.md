使用该组件可以在lua中展示svga图片，该组件桥接了Svga插件的基础API供lua文件使用
# API
<!-- TOC --&
[svga ](#svga)
[loops ](#loops)
[fps](#fps)
[frames ](#frames)
[readyToPlay](#readyToPlay)
[startAnimation ](#startAnimation)
[stopAnimation](#stopAnimation)
[pauseAnimation](#pauseAnimation)
[svgaCallback ](#svgaCallback)
[isAnimating ](#isAnimating)
[stepToFrame](#stepToFrame)
[stepToPercentage](#stepToPercentage)
<!-- /TOC --&

##svga
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| svga   |   url:String ,readyToPlay:function |   -| -|   设置Svga资源,第二个参数可不传，解析后会自动播放，如果|

```
例：
local svgaView = SVGAView()
--调用方式1
 svgaView:svga(“http://xxx/test.svga",function() 
    --startAnimation必须调用，否则无法播放
    svgaView:startAnimation()
 end)

--调用方式2：会自动调用startAnimation方法进行播放
 svgaView:svga(“http://xxx/test.svga")
```
##loops
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| loops   |   loopCount:Number |   -| -|   设置svga循环次数|
```
例：
local svgaView = SVGAView()
 svgaView:loops(2)

```

##fps
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| fps   |   -|   Int||   设置svga的 fps值|

```
例：
local svgaView = SVGAView()
local fps = 0
svgaView:svga("http://xxx/fileName.svga",function() 
	 fps=svgaView:fps()
end)
```

##frames
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| frames   |   -|   Int||   设置svga的 frames|
```
例：
local svgaView = SVGAView()
local frames = 0
svgaView:svga("http://xxx/fileName.svga",function() 
	 frames=svgaView:frames()
end)
```

##readyToPlay
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| readyToPlay   |   -|   -|-|   svga解析完毕回调，此时可以调用svga的播放方法|
```
例：
local svgaView = SVGAView()
--readyToPlay初始化方式1
svgaView:readyToPlay(funtion()   end)

--readyToPlay初始化方式2，由svga方法的第二个参数对其初始化
svgaView:svga("http://xxx/fileName.svga",function() 

end)
```

##startAnimation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| startAnimation   |   -|   -|-|   开始播放svga动画|
```
例：
local svgaView = SVGAView()
 svgaView:svga(“http://xxx/test.svga",function() 
    svgaView:startAnimation()
 end)

```

##stopAnimation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| stopAnimation   |   -|   -|-|   停止播放svga动画|
```
例：
local svgaView = SVGAView()
 svgaView:stopAnimation()
```

##pauseAnimation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| pauseAnimation   |   -|   -|-|   暂停播放svga动画|
```
例：
local svgaView = SVGAView()
 svgaView:pauseAnimation()
```

##svgaCallback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| svgaCallback   |   LuaTable|   -|-|   svga动画的播放状态控制回调|
```
例：
local svgaView = SVGAView()
 svgaView:svgaCallback({
   onPause = function()
   end,
   onRepeat = function()
   end,
   onStep = function()
   end,
   onFinished = function()
   end
 })
```
##isAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| isAnimating   |   -|   -|Boolean|   svga动画是否正在播放|
```
例：
local svgaView = SVGAView()
 svgaView:isAnimating()
```

##stepToFrame
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| stepToFrame   | frames: Int,autoPlay:Boolean|   -|-|   svga指定从多少帧播放|
```
例：
local svgaView = SVGAView()
 svgaView:stepToFrame(2,true)
```


##stepToPercentage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| stepToPercentage   |   frames: Float,autoPlay:Boolean|   -|-|   svga指定从某百分比进度开始播放|
```
例：
local svgaView = SVGAView()
 svgaView:stepToPercentage(0.5,true)
```