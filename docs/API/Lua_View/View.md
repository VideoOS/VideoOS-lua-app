View 是OS_Lua系统中最基础的View。相当于Android的ViewGroup，iOS的UIView。其中View是所有View级别控件api的父类。

# API
<a href="#initParams">initParams</a>
[invalidate](#invalidate)
[padding](#padding)
[frame](#frame)
[backgroundColor](#backgroundColor)
[size](#size)
[xy](#xy)
[align](#align)
[alignLeft](#alignLeft)
[alignTop](#alignTop)
[alignRight](#alignRight)
[alignBottom](#alignBottom)
[alignLeftTop](#alignLeftTop)
[alignTopLeft](#alignTopLeft)
[alignCenterTop](#alignCenterTop)
[alignTopCenter](#alignTopCenter)
[alignRightTop](#alignRightTop)
[alignTopRight ](#alignTopRight )
[alignLeftBottom](#alignLeftBottom)
[alignBottomLeft](#alignBottomLeft )
[alignCenterBottom](#alignCenterBottom)
[alignBottomCenter](#alignBottomCenter)
[alignRightBottom](#alignRightBottom)
[alignBottomRight](#alignBottomRight)
[alignCenter](#alignCenter)
[alignLeftCenter](#alignLeftCenter)
[alignCenterLeft](#alignCenterLeft)
[alignRightCenter](#alignRightCenter)
[alignCenterRight](#alignCenterRight)
[alignCenterHorizontal](#alignCenterHorizontal)
[alignHorizontalCenter](#alignHorizontalCenter)
[alignCenterVertical](#alignCenterVertical)
[alignVerticalCenter](#alignVerticalCenter)
[center](#center)
[x](#x)
[y](#y)
[left](#left)
[top](#top)
[right](#right)
[bottom](#bottom)
[width](#width)
[minWidth](#minWidth)
[height](#height)
[centerX](#centerX)
[centerY](#centerY)
[visible](#visible)
[hidden](#hidden)
[show](#show)
[isShow](#isShow)
[hide](#hide)
[isHide](#isHide)
[enabled](#enabled)
[alpha](#alpha)
[borderWidth](#borderWidth)
[borderColor](#borderColor)
[clipsToBounds](#clipsToBounds)
[shadowPath](#shadowPath)
[masksToBounds](#masksToBounds)
[shadowOffset](#shadowOffset)
[shadowRadius](#shadowRadius)
[shadowOpacity](#shadowOpacity)
[shadowColor](#shadowColor)
[sizeToFit](#sizeToFit)
[addGestureRecognizer](#addGestureRecognizer)
[removeGestureRecognizer](#removeGestureRecognizer )
[transform3D](#transform3D)
[anchorPoint](#anchorPoint)
[removeFromSuper](#removeFromSuper)
[removeFromParent](#removeFromParent)
[hasFocus](#hasFocus)
[requestFocus](#requestFocus)
[clearFocus](#clearFocus)
[rotation](#rotation)
[rotationXY](#rotationXY)
[scale](#scale)
[scaleX](#scaleX)
[scaleY](#scaleY)
[translation](#translation)
[translationX](#translationX)
[translationY](#translationY)
[bringToFront](#bringToFront)
[scrollTo](#scrollTo)
[scrollBy](#scrollBy)
[scrollX](#scrollX)
[offsetX](#offsetX)
[scrollY](#scrollY)
[offsetY](#offsetY)
[scrollXY](#scrollXY)
[offsetXY](#offsetXY)
[offset](#offset)
[showScrollIndicator](#showScrollIndicator)
[callback](#callback)
[onClick](#onClick)
[onLongClick](#onLongClick)
[adjustSize](#adjustSize)
[cornerRadius](#cornerRadius)
[startAnimation](#startAnimation)
[stopAnimation](#stopAnimation)
[isAnimating](#isAnimating)
[flexCss](#flexCss)
[flxLayout](#flxLayout)
[effects](#effects)
[nativeView](#nativeView)
[borderDash](#borderDash)
[margin](#margin)
[onTouch](#onTouch)
[onShow](#onShow)
[onHide ](#onHide )
[onBack](#onBacck) 
[onLayout](#onLayout)
[addView](#addView)
[removeView](#removeView)
[removeAllViews](#removeAllViews)
[children](#children)
[flexChildren](#flexChildren)

<a name="invalidate">invalidate</a>
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| initParams   |   table: LuaTable  |   -| Android |   初始化参数|

    例:
    TableView().initParams({
	})

##invalidate
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| invalidate    |   - |   -| - |   强制重绘|

    例:
	local view = View()
	view:invalidate()

##padding
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| padding    |   left: Number <br&   top: Number<br&  right: Number  <br& bottom: Number  |   -| - |   内边距|

    例:
	local view = View()
	view:padding(5, 5, 5, 5)

##frame
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| frame    |   x: Number<br&   y: Number <br&width: Number<br& height: Number  |  - | - |  View尺寸|

    例:
	local view = View()
	view:frame(5, 5, 5, 5)

##backgroundColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| backgroundColor    |   color: Number<br& alpha: Number  |   color, <br&alpha | - |   背景色&amp;alpha|

    例:
	local view = View()
	view:backgroundColor(0xff0000, 0.5)

##size
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| size    |   width: Number<br& height: Number  |   width, <br&height | - |   尺寸 |

    例:
	local view = View()
	view:size(100, 100)

##xy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| xy    |  x: Number<br& y: Number  |   x，<br&y| - |   x、y坐标|

    例:
	local view = View()
	view:xy(100, 100)

##align
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| align  |  aligns[]: Align  | -| - |   设置自身在父容器的布局|

    例:
    local view = View()
	view:align(Align.RIGHT, Align.BOTTOM)

##alignLeft
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   alignLeft     |  -    |  -   |   -  |   设置自身位于父容器Left&amp;Top    |

    例:
    local view = View()
	view:alignLeft()

##alignTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   alignTop     |  -    |  -   |   -  |   设置自身位于父容器Left&amp;Top    |

    例:
    local view = View()
	view:alignTop()

##alignRight
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignRight     |  -    |  -   |   -  |   设置自身位于父容器Right&amp;Top    |

    例:
    local view = View()
	view:alignRight()

##alignBottom
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignBottom    |  -    |  -   |   -  |   设置自身位于父容器Left&amp;Bottom    |

    例:
    local view = View()
	view:alignBottom()

##alignLeftTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignLeftTop    |  -    |  -  |   Android  |   设置自身位于父容器Left&amp;Top    |

    例:
    local view = View()
	view:alignLeftTop()

##alignTopLeft
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignTopLeft    |  -    |  -  |   Android  |   设置自身位于父容器Left&amp;Top    |

    例:
    local view = View()
	view:alignTopLeft()

##alignCenterTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterTop    |  -    |  -  |   Android  |   设置自身位于父容器Center&amp;Top    |

    例:
    local view = View()
	view:alignCenterTop()

##alignTopCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignTopCenter    |  -    |  -  |   Android  |   设置自身位于父容器Center&amp;Top    |

    例:
    local view = View()
	view:alignTopCenter()

##alignRightTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignRightTop    |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Top    |

    例:
    local view = View()
	view:alignRightTop()

##alignTopRight
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignTopRight   |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Top    |

    例:
    local view = View()
	view:alignTopRight()

##alignLeftBottom
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignLeftBottom   |  -    |  -  |   Android  |   设置自身位于父容器Let&amp;Bottom    |

    例:
    local view = View()
	view:alignLeftBottom()

##alignBottomLeft
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignBottomLeft  |  -    |  -  |   Android  |   设置自身位于父容器Left&amp;Bottom    |

    例:
    local view = View()
	view:alignBottomLeft()

##alignCenterBottom
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterBottom   |  -    |  Android  |  -   |   设置自身位于父容器Center&amp;Bottom    |

    例:
    local view = View()
	view:alignCenterBottom()

##alignBottomCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignBottomCenter   |  -    |  Android  |  -   |   设置自身位于父容器Center&amp;Bottom    |

    例:
    local view = View()
	view:alignBottomCenter()

##alignRightBottom
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignRightBottom  |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Bottom    |

    例:
    local view = View()
	view:alignRightBottom()

##alignBottomRight
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignBottomRight  |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Bottom    |

    例:
    local view = View()
	view:alignBottomRight()

##alignCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenter  |  -    |  -  |   -  |   设置自身位于父容器Center  |

    例:
    local view = View()
	view:alignCenter()

##alignLeftCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignLeftCenter  |  -    |  -  |   Android  |   设置自身位于父容器Left&amp;Center    |

    例:
    local view = View()
	view:alignLeftCenter()

##alignCenterLeft
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterLeft  |  -    |  -  |   Android  |   设置自身位于父容器Left&amp;Center   |

    例:
    local view = View()
	view:alignCenterLeft()

##alignRightCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignRightCenter  |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Center    |

    例:
    local view = View()
	view:alignRightCenter()

##alignCenterRight
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterRight  |  -    |  -  |   Android  |   设置自身位于父容器Right&amp;Center    |

    例:
    local view = View()
	view:alignCenterRight()

##alignCenterHorizontal
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterHorizontal  |  -    |  -  |   Android  |   设置自身位于父容器Center in Horizontal     |

    例:
    local view = View()
	view:alignCenterHorizontal()

##alignHorizontalCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignHorizontalCenter  |  -    |  -  |   Android  |   设置自身位于父容器Center in Horizontal     |

    例:
    local view = View()
	view:alignHorizontalCenter()

##alignCenterVertical
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignCenterVertical   |  -    |  -  |   Android  |   设置自身位于父容器Center in Vertical      |

    例:
    local view = View()
	view:alignCenterVertical()

##alignVerticalCenter
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alignVerticalCenter   |  -    |  -  |   Android  |   设置自身位于父容器Center in Vertical      |

    例:
    local view = View()
	view:alignVerticalCenter()

##center
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    center   |    x: Number<br& y: Number  |   x<br&y  |  -   |    中心点坐标   |

    例:
    local view = View()
	view:center(100,100)

##x
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    x   |   x: Number   |  x   |   -  | x坐标      |

    例:
    local view = View()
	view:x(10)

##y
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   y    |  y:Number    |  y   |  -   |   y坐标    |

    例:
    local view = View()
	view:y(10)

##left
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    left   |  left: Number    |  left   |  -   |    距离父容器左侧边距   |

    例:
    local view = View()
    view:left(10)

##top
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    top   |   top: Number   |   top  |  -   |   距离父容器上侧边距    |

    例:
    local view = View()
	view:top(10)

##right
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    right   |   right: Number   |  right   |  -   |   距离父容器右侧边距    |

    例:
    local view = View()
	view:right(10)

##bottom
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    bottom   |  bottom: Number    |  bottom   |  -   |    距离父容器底部边距   |

    例:
    local view = View()
	view:bottom(10)

##width
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    width    |   width: Number   |   width  | -    |   宽度     |

    例:
    local view = View()
	view:width(10)

##minWidth
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    minWidth    |   width: Number   |   width  |  Android    |   最小宽度    |

    例:
    local view = View()
	view:minWidth(10)

##height
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    height    |   height: Number   |  height   |  -   |  高度     |

    例:
    local view = View()
	view:height(10)

##centerX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  centerX      |   x: Number   |  x   |  -   |   中心点x坐标    |

    例:
    local view = View()
	view:centerX(10)

##centerY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   centerY     |    y: Number  |   y  |  -   |   中心点y坐标    |

    例:
    local view = View()
	view:centerY(10)

##visible
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  visible      |   v: Boolean   | v    |   Android   |     可见性  |

    例:
    local view = View()
	view:visible(ture)

##hidden
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   hidden     |  v: Boolean    |  v   |   -  |      可见性 |

    例:
    local view = View()
	view:hidden(ture)

##show
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    show    |   -   |   -  |  -   |   显示    |

    例:
    local view = View()
	view:(show)

##isShow
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  isShow     |  -    |   v: Boolean  |  -   |    是否可见   |

    例:
    local view = View()
	local show=view:(isShow)

##hide
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    hide    |   -   |   -  |  -   |   隐藏     |

    例:
    local view = View()
	view:(hide)

##isHide
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    isHide    |  -    |   v: Boolean  |  -   |   是否 隐藏    |

    例:
    local view = View()
	local hide=view:(isHide)

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    enabled    |   v: Boolean   |  v   |  -   |  是否可用     |

    例:
    local view = View()
	local enabled=view:enabled(ture)

##alpha
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   alpha     |   alpha: Number   |   alpha  |   -  |   透明度    |

    例:
    local view = View()
	view:alpha(0.5)

##borderWidth
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  borderWidth      |   width: Number   |   width   |  -   |    边框宽度   |

    例:
    local view = View()
	view:borderWidth(5)

##borderColoer
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   borderColor     |   color: Number   |  color    |  -   |    边框颜色   |

    例:
    local view = View()
	view:borderColor(0xff0000)

##clipsToBounds
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    clipsToBounds    |   v: Boolean   |  v   |  iOS   |    View边框是否剪接   |

    例:
    local view = View()
	view:clipsToBounds(ture)

##shadowPath
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   shadowPath     |  v: Boolean    |  v   |  iOS   |    只对边框外部加阴影   |

    例:
    local view = View()
	view:shadowPath(ture)

##masksToBounds
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   masksToBounds     |   v: Boolean   |  v   |  iOS   |   设置边框是否裁剪    |

    例:
    local view = View()
	view:masksToBounds(ture)

##shadowOffset
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   shadowOffset     |    v: Number  |   v  |  iOS   |   设置View阴影偏移位置    |

    例:
    local view = View()
	view:shadowOffset(10)

##shadowRadius
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   shadowRadius     |   v: Number   |   v  |  iOS   |   设置View阴影高斯模糊半径    |

    例:
    local view = View()
	view:shadowRadius(2)

##shadowOpacity
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  shadowOpacity      |   v: Number   |  v   | iOS    |   设置View阴影透明度    |

    例:
    local view = View()
	view:shadowOpacity(8)

##shadowColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    shadowColor    |   v: Number   |  v   | iOS    |   设置View阴影颜色    |

    例:
    local view = View()
	view:shadowColor(0xff0000)

##sizeToFit
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    sizeToFit    |    -  | -    |   -  |   适应View内容的大小    |

    例:
    local view = View()
	view:sizeToFit()

##addGestureRecognizer
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    addGestureRecognizer    |    -  |  -   |  iOS   |   添加手势    |

    例:
    local view = View()
	view:addGestureRecognizer()

##removeGestureRecognizer
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   removeGestureRecognizer     |  -    |   -  |  iOS   |    移除手势   |

    例:
    local view = View()
	view:removeGestureRecognizer()

##transform3D
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    transform3D    |  v: Number[]    |   -  |  iOS   |   设置3D变换矩阵    |

    例:
    local view = View()
	transform1 = Transform3D();
	transform1:scale(2,2,2);
	view:transform3D(transform1)

##anchorPoint
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    anchorPoint    |  x: Number <br&y: Number    |  -   |  -   |   锚点    |

    例:
    local view = View()
	view:anchorPoint(0.0,0.5)

##removeFromSuper
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    removeFromSuper    |  -    |   -  |  -   |   从父容器移除    |

    例:
    local view = View()
	view:removeFromSuper()

##removeFromParent
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   removeFromParent     |    -  |    - |  -   |    从父容器移除   |

    例:
    local view = View()
	view:removeFromParent()

##hasFocus
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   hasFocus     |   -   |  v: Boolean   |  -   |   是否有焦点    |

    例:
    local view = View()
	local has=view:hasFocus()

##requestFocus
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   requestFocus     |   -   |  -   |   -  |     请求焦点  |

    例:
    local view = View()
	view:requestFocus()

##clearFocus
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    clearFocus    |    -  |  -   |   -  |   取消焦点    |

    例:
    local view = View()
	view:clearFocus()

##rotation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    rotation    |  v: Number    |  -   |  -   |  旋转角度     |

    例:
    local view = View()
	view:rotation (3.14/2)

##rotationXY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    rotationXY    |   rx: Number <br&ry: Number   |   rx, ry  |  -   |   根据x坐标和y坐标得到的旋转角度，pivot    |

    例:
    local view = View()
	local rx,ry=view:rotationXY(5,6)

##scale
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scale     |  sx: Number <br& sy: Number    |   sx, sy  |  -   |   x，y缩放    |

    例:
    local view = View()
	local sx,sy=view:scale(4,9)

##scaleX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scaleX     |  sx: Number    |  sx   |  -   |   x坐标缩放    |

    例:
    local view = View()
	view:scaleX(5)

##scaleY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scaleY     |   sy: Number   |  sy   |   -  |   y坐标缩放    |

    例:
    local view = View()
	view:scaleY(5)

##translation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    translation    |  tx: Number <br&ty: Number    | x,y    | -    |  x、y位移     |

    例:
    local view = View()
	view:translation(5,4)

##translationX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  translationX      |   tx: Number   |  tx   |   -  |   x坐标位移    |

    例:
    local view = View()
	view:translationX(4)

##translationY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   translationY     |   ty: Number   |  ty   | -    |  y坐标位移     |

    例:
    local view = View()
	view:translationY(3)

##bringToFront
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  bringToFront      |  -    |  -   |   Android   |   将view设置到前台    |

    例:
    local view = View()
	view:bringToFront()

##scrollTo
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  scrollTo      |   sx: Number<br&sy: Number   | -    | Android    |  滚动到某个位置     |

    例:
    local view = View()
	view:scrollTo(2,5)

##scrollBy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  scrollBy      |  sx: Number <br&sy: Number    |  -   |  Android   |   移动一段距离    |

    例:
    local view = View()
	view:scrollBy(3,3)

##scrollX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    scrollX    |  sx: Number    | sx     |  Android   |   x方向滚动到某个位置    |

    例:
    local view = View()
	view:scrollX(10)

##offsetX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  offsetX      |  sx: Number    |   sx   |  Android   |   x方向滚动到某个位置    |

    例:
    local view = View()
	view:offsetX(5)

##scrollY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scrollY     |   sy: Number   |  sy   |  Android   |  y方向滚动到某个位置     |

    例:
    local view = View()
	view:scrollY(3)

##offsetY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   offsetY    |    sy: Number  |  sy   |  Android   |   y方向滚动到某个位置    |

    例:
    local view = View()
	view:offsetY(3)

##scrollXY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scrollXY     |   sx: Number<br&sy: Number   |  sx, sy   |    Android |   x、y方向移动到某个位置    |

    例:
    local view = View()
	view:scrollXY(3,4)

##offsetXY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   offsetXY     |   sx: Number<br&sy: Number   |  sx, sy   |   Android  |   x、y方向移动到某个位置    |

    例:
    local view = View()
	view:offsetXY(3,4)

##offset
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   offset     |   sx: Number<br&sy: Number   | sx, sy    |  Android   |    x、y方向移动到某个位置   |

    例:
    local view = View()
	view:offset(3,4)

##showScrollIndicator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  showScrollIndicator      |  h: Boolean<br&v: Boolean    | h, v    |  Android   |    设置滚动条是否显示（横向、纵向）   |

    例:
    local view = View()
	view:showScrollIndicator(ture,ture)

##callback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   callback     |  v: LuaTable    |  v   |  -   |    监听view的各种事件   |

    例:
    local view = View()
	view:callback(
	    function()
        Alert("Hello LuaView")
	end)

##onClick
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   onClick     |   v: LuaFunction   |   v  |   -  |    设置view的点击事件   |

    例:
    local view = View()
	view:onClick( function()
        print("onClick")
        local x,y,w,h = view:frame();
        view:frame(x+1,y+1,w-1,h-1);
	end);

##onLongClick
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   onLongClick     | v: LuaFunction     |   v  | Android     |  设置view的长按事件     |

    例:
    local view = View()
	view:onLongClick( function()
        print("onLongClick")
	end);

##adjustSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  adjustSize      | -     |  -   |  -   |    调整大小以适应内容   |

    例:
    local view = View()
	view:adjustSize()

##cornerRadius
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   cornerRadius     |  radius: Number    |   radius   |  -   |   设置边框圆角半径    |

    例:
    local view = View()
	view:cornerRadius(3)

##startAnimation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    startAnimation    |    anims: Animation[]  |   -  |  -   |   开始播放动画    |

    例:
    local view = View()
	anim1 = Animation():alpha(1, 0):duration(1)
	anim2 = Animation():scale(1, 0):duration(2):delay(0.2)
	view:startAnimation(anim1, anim2)

##stopAnimation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    stopAnimation    |  -    | -    |  -  |    停止动画播放   |

    例:
    local view = View()
	view:stopAnimation()

##isAnimating
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   isAnimating     |   -   |  v: Boolean   |  -   |   是否正在播放动画    |

    例:
    local view = View()
	view:isAnimating()

##flexCss
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   flexCss     |   v: String   |   v  |  -   |   设置flex属性    |

    例:
    local view = View()
	view:flexCss("margin-left: 10, sizetofit: 1, align-self: center")

##flxLayout
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   flxLayout     |  v: String    |   v  |  iOS   |   设置flex布局    |

    例:
    local view = View()
	view:flxLayout(true, function()
    print("do something")
	end)

##effects
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   effects     |   effect: ViewEffect<br&color: Number<br&alpha: Number   |  effect    |  -   |   设置view的特效    |

    例:
    local view = View()
	view:effects(ViewEffect.CLICK) -- 点击特效
	view:effects(ViewEffect.CLICK, 0xff0000, 0.5) -- 点击特效，颜色红色，alpha=0.5
	view:effects(ViewEffect.NONE) -- 无效果

##nativeView
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    nativeView    | -     |  v: Object   | -    |   获取NativeView    |

    例:
    local view = View()
	view:nativeView()

##borderDash
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   borderDash     |  v: Number    |   -  |  -   |    设置边框虚线   |

    例:
    local view = View()
	view:borderDash(4)

##margin
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   margin     |   l: Number<br&t: Number<br&r: Number<br&b: Number   |  l, t, r, b   |  Android    |   边距    |

    例:
    local view = View()
	view:margin(4,5,6,7)

##onTouch
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|     onTouch   |  v: LuaFunction    |  v   |  -   |   设置触摸事件    |

    例:
    local view = View()
	view:onTouch(function()
	end)

##onShow
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    onShow    |  v: LuaFunction    | v    |  -   |   显示监听    |

    例:
    local view = View()
	view:onShow(function()
    print("i am show")
	end)

##onHide
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   onHide     |  v: LuaFunction    |  v   |  -   |   隐藏监听    |

    例:
    local view = View()
	view:onHide(function()
    print("i am hide")
	end)

##onBack
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   onBack     |  v: LuaFunction    |   v  |  -   |    返回按钮监听   |

    例:
    local view = View()
	view:onBack(function()
    print("back pressed")
	end)

##onLayout
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    onLayout    |  v: LuaFunction    |   v  |  -   |   布局监听    |

    例:
    local view = View()
	view:onLayout(function()
    print("i am layouted")
	end)

##addView
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    addView    |  v: View    |   -  |   -  |   添加子View    |

    例:
    local view = View()
	parent = View()
	parent:addView(view)

##removeView
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    removeView    |   v: View   |  -   |  -   |    移除子View   |

    例:
	child = View()
	parent = View()
	parent:addView(child)
	parent:removeView(child)

##removeAllViews
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   removeAllViews     |   -   |  -   |   -  |   移除所有子View    |

    例:
    child = View()
	parent = View()
	parent:addView(child)
	parent:removeAllViews()

##children
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   children     |  v: LuaFunction    | -    | -    |   子View构造函数    |

    例:
    parent = View()
	parent:children(function(parent) -- 所有在函数里创建的View都会被自动添加到parent里
    view = View()
    ...
	end)

##flexChildren
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   flexChildren     |  v: View[]    |   -  |  -   |   Flexbox 设置childViews    |

    例:
	child1 = View()
	child2 = View()
	parent = View()
	parent.flexChildren(child1, child2)


