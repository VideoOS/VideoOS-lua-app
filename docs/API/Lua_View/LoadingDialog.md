LoadingDialog 是OS_Lua系统中的加载对话框组件。(Android专有)

# API

* [show](#show)
* [isShow](#isShow)
* [start](#start)
* [isStart](#isStart)
* [startAnimating](#startAnimating)
* [isAnimating](#isAnimating)
* [hide ](#hide )
* [stop ](#stop )
* [stopAnimating ](#stopAnimating )
* [color ](#color )


## show
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   show     |    -  |  -   |    - |   开始转动    |

例:
```lua
loading = LoadingDialog()
loading:show()
```

## isShow
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  isShow      |    -  |   v: Boolean  | -    |  是否开始转动     |

例:
```lua
loading = LoadingDialog()
loading:isShow()
```

## start
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    start    |    -  |  -   |   -  |   开始转动    |

例:
```lua
loading = LoadingDialog()
loading:start()
```

## isStart
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   isStart     |  -    |  v: Boolean   |  -   |   是否开始转动    |

例:
```lua
loading = LoadingDialog()
loading:isStart()
```

## startAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    startAnimating    |  -    |   -  |   -  |    开始转动   |

例:
```lua
loading = LoadingDialog()
loading:startAnimating()
```

## isAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    isAnimating    |   -   |   v: Boolean  |    - |   是否开始转动    |

例:
```lua
loading = LoadingDialog()
loading:isAnimating()
```

## hide
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    hide    |   -   |  -   | -    |    停止动画   |

例:
```lua
loading = LoadingDialog()
loading:hide()
```

## stop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    stop    |   -   |   -  |   -  |   停止动画    |

例:
```lua
loading = LoadingDialog()
loading:stop()
```

## stopAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   stopAnimating     |   -   |  -   |  -   |   停止动画    |

例:
```lua
loading = LoadingDialog()
loading:stopAnimating()
```

## color
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    color    |  v: Number    |   v  |   -  |    颜色   |

例:
```lua
loading = LoadingDialog()
loading:color(0xCCCCCC)
```




