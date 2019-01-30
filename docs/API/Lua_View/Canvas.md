Canvas 是OS_Lua系统中的自定义绘制组件。



# API
* [drawLine](#drawLine)
* [drawPoint](#drawPoint)
* [drawRect](#drawRect)
* [drawRoundRect](#drawRoundRect)
* [drawCircle](#drawCircle)
* [drawOval](#drawOval)
* [drawArc](#drawArc)
* [drawText](#drawText)
* [drawImage](#drawImage)
* [color](#color)
* [alpha](#alpha)
* [strokeWidth](#strokeWidth)
* [textSize](#textSize)
* [font](#font)
* [bold](#bold)
* [resetPaint](#resetPaint)
* [translate](#translate)
* [scale](#scale)
* [rotate](#rotate)
* [skew](#skew)
* [nativeObj](#nativeObj)
* [save](#save)
* [restore](#restore)
* [clipRect](#clipRect)
* [size](#size)







# a. 绘制API

## drawLine
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    drawLine    |   x1: Number<br/>y1: Number<br/>x2: Number<br/>y2: Number   |  -   |   -  |    绘制线条。(x1,y1), (x2, y2)分别为起点终点   |

例:
```lua
canvas:drawLine(0,23,50,100)
```

## drawPoint
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   drawPoint     |   x: Number<br/>y: Number   |    - |  -   |    绘制点   |

例:
```lua
canvas:drawPoint(2,5)
```

## drawRect
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    drawRect    |   x: Number<br/>y: Number<br/>w: Number<br/>h: Number   |    - |  -   |   绘制矩形。x起点x坐标，y起点y坐标，w宽度，h高度    |

例:
```lua
canvas:drawRect(100,3,0,50)
```

## drawRoundRect
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   drawRoundRect     |   x: Number<br/>y: Number<br/>w: Number<br/>h: Number<br/>rx: Number<br/>ry: Number   |    - |  -   |   绘制圆角矩形<br/>x起点x坐标<br/>y起点y坐标<br/>w宽度，h高度<br/>rx为x轴圆角半径<br/>ry为y轴圆角半径    |

例:
```lua
canvas:drawRoundRect(10,10,100,10010,5)
```

## drawCircle
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   drawCircle     |   x: Number<br/>y: Number<br/>r: Number   |    - |  -   |   绘制圆。(x, y)为圆心坐标，r为半径    |

例:
```lua
canvas:drawCircle(100,100,10)
```

## drawOval
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    drawOval    |   x: Number<br/>y: Number<br/>rx: Number<br/>ry: Number   |    - |  -   |   绘制椭圆。(x, y)为圆心坐标，rx, ry为椭圆半径    |

例:
```lua
canvas:drawOval(50,50,10,15)
```

## drawArc
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    drawArc    |   x: Number<br/>y: Number<br/>w: Number<br/>h: Number<br/>startAngle: Number<br/>sweepAngle: Number<br/>useCenter: Boolean   |    - |  -   |  绘制扇形<br/>(x,y)为左上角坐标<br/>(w,h)为扇形宽高<br/>startAngle为开始角度<br/>sweepAngle为覆盖角度, useCenter为是否覆盖完整扇形面积（默认为false）     |

例:
```lua
canvas:drawArc(10,10,50,50,30,90,ture)
```

## drawText
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   drawText     |   text: String/StyledString/Unicode<br/>x: Number<br/>y:Number   |    - |  -   |   绘制文本    |

例:
```lua
canvas:drawText("label",10,10)
```

## drawImage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   drawImage     |    image: String/Image <br/>x: Number<br/>y: Number<br/>w: Number<br/>h: Number  |    - |  -   |   绘制图片，支持本地图和Image对象    |

例:
```lua
img=image()
img:image("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png")
canvas:drawImage(img,10,10,100,100)
```

# b. 画笔属性API

## color
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    color    |  color: Number    |    - |  -   |  设置画笔颜色     |

例:
```lua
canvas:color(0xff0000)
```

## alpha
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   alpha     |   alpha: Number   |    - |  -   |    设置画笔透明度   |

例:
```lua
canvas:alpha(0.5)
```

##s trokeWidth
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    strokeWidth    |   w: Number   |    - |  -   |   设置画笔粗细    |

例:
```lua
canvas:strokeWidth(3)
```

## style
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   style     |   style: PaintStyle   |    - |  -   |    设置画笔填充样式   |

例:
```lua
canvas:style(PaintStyle.STROKE)
```

###### PaintStyle

	1	FILL  - 填充
	2	STROKE  - 中空
	3	EOFILL  - 中空（IOS）
	4	FILLSTROKE  - 中空（IOS）
	5	EOFILLSTROKE  - 中空（IOS）

## textSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  textSize      |   size: Number   |    - |  -   |  设置文本字体大小     |

例:
```lua
canvas:textSize(20)
```

## font
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   font     |   name: String   |    - |  -   |    设置字体名称   |

例:
```lua
canvas:font("JHSIconfont ")
```

## bold
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  bold      |   bold: Boolean   |    - |  -   |    设置是否粗体   |

例:
```lua
canvas:bold(ture)
```

## resetPaint
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    resetPaint    |   -   |    - |  -   |   重置画笔所有属性    |

例:
```lua
canvas:resetPaint()
```

# c. 画布变换API

## translate
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   translate     |   dx: Number<br/>dy: Number   |    - |  -   |    位移变换，dx为x轴移动距离，dy为y轴移动距离   |

例:
```lua
canvas:translate(50,30)
```

## scale
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   scale     |  sx: Number<br/>sy: Number    |    - |  -   |   缩放变换，sx为x轴缩放比率，sy为y轴缩放比率    |

例:
```lua
canvas:scale(5,6)
```

## rotate
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   rotate     |  r: Number<br/>x: Number<br/>y: Number    |    - |  -   |   旋转变换，r为角度；(x,y) 坐标（可选）    |

例:
```lua
canvas:rotate(10,20,30)
```

## skew
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   skew     |  x: Number<br/>y: Number    |    - |  Android    |    斜切变换，xy斜切比率   |

例:
```lua
canvas:skew(3,4)
```

# d. 其它API

## nativeObj
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   nativeObj     |  -    |    native canvas |  -   |   获取对应的native对象    |

例:
```lua
print(canvas:nativeObj())
```

## save
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    save    |   -   |    - |  -   |   保存当前画布状态    |

例:
```lua
canvas:save()
```

## restore
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    restore    |  -    |    - |  -   |  恢复当前画布状态     |

例:
```lua
canvas:restore()
```

## clipRect
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   clipRect     |   left: Number<br/>top: Number<br/>right: Number<br/>bottom: Number   |    - |  -   |    裁剪矩形区域   |

例:
```lua
canvas:clipRect(100,30,40,50)
```

## size
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   size     |  -    |    w, h |  -   |   获取画布尺寸    |

例:
```lua
canvas:size()
```
