该组件使得lua文件中监听页面的生命周期状态，比如resume,pause,destroy等状态
# API
<!-- TOC --&
[onPageWillAppear ](#onPageWillAppear)
[onPageDidAppear](#onPageDidAppear)
[onPagePause ](#onPagePause)
[onPageWillDisappear](#onPageWillDisappear)
[onPageDidDisappear ](#onPageDidDisappear)
[onPageDestroy](#onPageDestroy)
<!-- /TOC --&


##onPageWillAppear
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPageWillAppear   |  LuaFunction|   -|-|    页面刚开始创建时调用|

```
例：
local page = Page()
media:onPageWillAppear(function() 

end)
```

##onPageDidAppear
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPageDidAppear   |  LuaFunction|   -|-|    页面已经可见时调用|

```
例：
local page = Page()
media:onPageDidAppear(function() 

end)
```

##onPagePause
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPagePause   |  LuaFunction|   -|-|    页面暂停时调用|

```
例：
local page = Page()
media:onPagePause(function() 

end)
```

##onPageWillDisappear
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPageWillDisappear   |  LuaFunction|   -|iOS|    页面即将不可见时调用|

```
例：
local page = Page()
media:onPageWillDisappear(function() 

end)
```

##onPageDidDisappear
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPageDidDisappear   |  LuaFunction|   -|iOS|    页面不可见时调用|

```
例：
local page = Page()
media:onPageDidDisappear(function() 

end)
```


##onPageDestroy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| onPageDestroy   |  LuaFunction|   -|iOS|    页面销毁时调用|

```
例：
local page = Page()
media:onPageDestroy(function() 

end)
```