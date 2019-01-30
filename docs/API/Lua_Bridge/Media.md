该组件为lua文件提供了监听播放器状态的能力，比如监听播放器的开始，暂停，大小变化等状态。

# API

[mediaCallback ](#mediaCallback)
[onMediaPause](#onMediaPause)
[onMediaPlay ](#onMediaPlay)
[onMediaEnd](#onMediaEnd)
[onMediaProgress ](#onMediaProgress)
[onMediaSeeking](#onMediaSeeking)
[onPlayerSize ](#onPlayerSize)
[startVideoTime ](#startVideoTime)
[stopVideoTime](#stopVideoTime)

##  mediaCallback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| mediaCallback   |   LuaTable|   -|-|   设置luaView宿主播放器的回调函数|

例:
```lua
local media = Media()
media.mediaCallback({
    onMediaPause = function()
        print("media pause")
    end,
    onMediaPlay = function()
        print("media is playing")
    end,
    onMediaEnd = function()
        print("media stop")
    end,
    onMediaProgress = function(currentProgress)
        print("media currentProgress")
    end，
	onMediaSeeking = function(seekTo)
        print("media seekTo")
    end,
	onPlayerSize = function(mediaType)
        print("media mediaType")
    end
});
```

## onMediaPause
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onMediaPause   |   LuaFunction|   -|-|    播放器已经暂停回调|

例:
```lua
local media = Media()
media:onMediaPause(function() 

end)
```

## onMediaPlay
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onMediaPlay   |   LuaFunction|   -|-|    视频正在播放回调|

例:
```lua
local media = Media()
media:onMediaPlay(function() 

end)
```

## onMediaEnd
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onMediaEnd   |   LuaFunction|   -|-|    视频播放结束回调|

例:
```lua
local media = Media()
media:onMediaEnd(function() 

end)
```

## onMediaProgress
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onMediaProgress   |   LuaFunction|   -|-|    视频播放进度监听|

例:
```lua
local media = Media()
media:onMediaProgress(function(currentProgress) 

end)
```

## onMediaSeeking
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onMediaSeeking   |   LuaFunction|   -|-|    视频快进和快退进度监听|

例:
```lua
local media = Media()
media:onMediaSeeking(function(seekTo) 

end)
```

## onPlayerSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| onPlayerSize   |   Number，0:竖屏小屏幕，1:竖屏全屏，2 ：横评全屏|   -|-|    视频的展示形态|

例:
```lua
local media = Media()
media:onPlayerSize(function(mediaType) 

end)
```

## startVideoTime
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| startVideoTime   |  -|   -|-|    开始内置循环，实时获取播放进度，自动展示特定时间点的LuaView 元素|

例:
```lua
local media = Media()
media:startVideoTime()
```

## stopVideoTime
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| stopVideoTime   |  -|   -|-|    停止内置循环|

例:
```lua
local media = Media()
media:stopVideoTime()
```