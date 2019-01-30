RefreshTableView 是OS_Lua系统中的可刷新列表组件。相当于Android的RecyclerView，iOS不支持 


# API

* [refreshEnable](#refreshEnable)
* [initRefreshing](#initRefreshing)
* [isRefreshing](#isRefreshing)
* [startRefreshing](#startRefreshing)
* [stopRefreshing](#stopRefreshing)

## refreshEnable
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    refreshEnable    |    v: Boolean  |   -  |  -   |     -  |

例:
```lua
RefreshTab = RefreshTableView ()
RefreshTab:refreshEnable(ture)
```

## initRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  initRefreshing      |    -  |  -   |  -   |    初始化刷新组件   |

例:
```lua
RefreshTab = RefreshTableView ()
RefreshTab:initRefreshing()
```

## isRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    isRefreshing    |  -    |  v: Boolean  |  -   |   是否正在刷新    |

例:
```lua
RefreshTab = RefreshTableView ()
RefreshTab:isRefreshing()
```

## startRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   startRefreshing     |   -   | -   |   -  |   开始刷新    |

例:
```lua
RefreshTab = RefreshTableView ()
RefreshTab:startRefreshing()
```

## stopRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   stopRefreshing     |   -   |  -   |   -  |    停止刷新   |

例:
```lua
RefreshTab = RefreshTableView ()
RefreshTab:stopRefreshing()
```
