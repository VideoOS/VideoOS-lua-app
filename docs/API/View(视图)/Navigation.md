Navigation 是OS_Lua系统中的导航条组件 


```lua
Navigation.title("测试view")

img = Image();
img.image("http://gtms02.alicdn.com/tps/i2/TB1qmXnHpXXXXcuaXXXQG.m0FXX-640-128.jpg",function()
    Navigation.background(img)
end);
```

# API

* [title](#title)
* [background](#background)
* [left](#left)
* [right](#right)


## title
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   title     |   v: String/StyledString/Unicode   |  v   |  -   |导航条标题|

例:
```lua
navigation  = Navigation()
navigation:title("title")
```

## background
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  background      |   v: String/Image   |  -   |  -   |    设置导航条背景   |

例:
```lua
navigation  = Navigation()
navigation:background(0xff00FF)
```

## left
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    left    |v: Boolean|  v   |  -   |   显示左侧按钮    |

例:
```lua
navigation  = Navigation()
navigation:left(ture)
```

## right
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   right     |  v: Boolean    |  v   |  -   |   显示右侧按钮    |

例:
```lua
navigation  = Navigation()
navigation:right(ture)
```
