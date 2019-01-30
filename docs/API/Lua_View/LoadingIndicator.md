LoadingIndicator 是OS_Lua系统中的 加载指示器组件 。


# API

* [start](#start)
* [isStart](#isStart)
* [startAnimating](#startAnimating)
* [isAnimating](#isAnimating)
* [stop](#stop)
* [stopAnimating](#stopAnimating)
* [color](#color)

## start
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   start     |  -    |  -   |  -   |  开始转动     |

例:
```lua
loading = LoadingIndicator()
loading:start()
```

## isStart
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   isStart     |   -   |   v: Boolean  |  Android    |  是否开始转动     |

例:
```lua
loading = LoadingIndicator()
loading:isStart()
```

## startAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    startAnimating    |   -   |   -  | Android     |    开始转动   |

例:
```lua
loading = LoadingIndicator()
loading:startAnimating()
```

## isAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    isAnimating    |   -   |   v: Boolean  |   -  |   是否在动画中    |

例:
```lua
loading = LoadingIndicator()
loading:isAnimating()
```

## stop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   stop     |   -   |  -   |   -  |   停止动画    |

例:
```lua
loading = LoadingIndicator()
loading:stop()
```

## stopAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    stopAnimating    |   -   |  -   |  Android    |   停止动画    |

例:
```lua
loading = LoadingIndicator()
loading:stopAnimating()
```

## color
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   color     |  v: Number    |   v  | -    |   颜色    |

例:
```lua
loading = LoadingIndicator()
loading:color(0xCCCCCC)
```
