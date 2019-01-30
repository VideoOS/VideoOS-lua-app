PagerIndicator 是OS_Lua系统中的页面组指示器组件。


# API

* [unselectedColor](#unselectedColor)
* [selectedColor](#selectedColor)
* [fillColor](#fillColor)
* [pageColor](#pageColor)
* [currentPageColor](#currentPageColor)
* [strokeWidth](#strokeWidth)
* [strokeColor](#strokeColor)
* [radius](#radius)
* [snap](#snap)
* [currentPage](#currentPage)
* [currentItem](#currentItem)


## unselectedColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   unselectedColor     |  color: Number    |  color    |   -  |   未选中指示器颜色    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:unselectedColor(0xff00FF)
```

## selectedColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  selectedColor      |   color: Number   |   color   |  -   |   选中指示器颜色    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:selectedColor(0xff00FF)
```

## fillColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   fillColor     |   color: Number   |   color   |  Android    |   未选中指示器颜色    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:fillColor(0xff00FF)
```

## pageColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    pageColor    |  color: Number    |   color   |  -   |   未选中指示器颜色    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:pageColor(0xff00FF)
```

## currentPageColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    currentPageColor    |  color: Number    |  color    |   -  |   选中指示器颜色    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:currentPageColor(0xff00FF)
```

## strokeWidth
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   strokeWidth     |   width: Number   |   width   | Android     |   线条宽度    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:strokeWidth(2)
```

## strokeColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   strokeColor     |   color: Number   |   color   |   Android   |  线条颜色     |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:strokeColor(0xff00FF)
```

## radius
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    radius    |   v: Number   |   v  | Android     |   圆点半径    |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:radius(10)
```

## snap
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  snap      |  v: Boolean    |  v   |  Android    |    是否有点移动动画   |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:snap(ture)
```

## currentPage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   currentPage     |   v: Number   |  v   |  -   |  设置/获取当前页面     |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:currentPage(2)
```

## currentItem
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    currentItem    |   v: Number   |  v   |   Android   |    设置/获取当前页面   |

例:
```lua
PagerIndicator = PagerIndicator()
PagerIndicator:currentItem(2)
```
