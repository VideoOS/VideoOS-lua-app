AppLet 是OS_Lua系统中的B类小程序的容器。

# API

* [appletSize](#appletSize) 
* [showRetryPage](#showRetryPage) 
* [event](#event) 
* [showErrorPage](#showErrorPage) 





## appletSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    appletSize    |   -    |   width，height  |  -   |   容器大小    |

例:
```lua
local width, height = Applet:appletSize()
```

## showRetryPage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    showRetryPage    |   v: String,<br/>table: LuaTable(会通过event方法返回)    |   -  |  -   |  默认重试页面    |

例:
```lua
Applet:showRetryPage("网络开小差啦，请重试")
```

## event
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    event    |   -    |   table: LuaTable  |  -   |  点击重试按钮会回调event方法 |

例:
```lua
function event(data)
	-- 返回1是（广告, os相关） 2是（B类小程序）
	local eventType = tostring(data.eventType)
	
	-- 返回1是（网络重试） 2是（刷新当前lua页面）
	local actionType = tostring(data.appletActionType)
	
	-- 如果是retry则会返回retry时塞入的data,如果是refresh则会把sendAction中的data塞入
	local data = data.data
end
```


## showErrorPage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    showErrorPage    |   v: String    |   -  |  -   |  展示默认错误页面    |

例:
```lua
Applet:showErrorPage("Error")
```

