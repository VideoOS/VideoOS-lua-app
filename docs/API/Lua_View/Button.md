Button 是OS_Lua系统中的按钮组件。相当于Android的Button,iOS的UIButton。-> [Label](https://www.showdoc.cc/web/#/oslua?page_id=548690578324962) -> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632)

# API

[title](#title)
[titleColor](#titleColor)
[text](#text)
[textColor](#textColor)
[image](#image)
[selected](#selected)
[enabled](#enabled)
[font](#font)
[fontSize](#fontSize)
[textSize](#textSize)

##title
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   title     |    v: String/StyledString/Unicode  |  v   |   -  |   按钮文字    |
    例:
    local button = Button()
	button:title("button")

##titleColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   titleColor      |    color: Number  |  color    |   -  |   -    |

    例:
    local button = Button()
	button:titleColor(0x000000)

##text
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    text    |  v: String/StyledString/Unicode   |   v  |  iOS   |  按钮文字     |

    例:
    local button = Button()

##textColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   textColor     |   color: Number    |  color   |   iOS  |  文本颜色     |

    例:
    local button = Button()
	button:textColor(0x000000)

##image
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    image    |   img1: String<br&img2: String   |  img1, img2   |  -   |  按钮点按图片（正常，点击)     |

    例:
    local button = Button()
	button:image("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png",
        				  "http://g.alicdn.com/ju/lua/2.0.25/doc/icon2.png"
         				)

##selected
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   selected     |    v: Boolean  |  v   |   iOS  |    是否selected   |

    例:
    local button = Button()
	button:selected(ture)

##enabled
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   enabled     |  v: Boolean    |  v   |  iOS    |  是否使能     |

    例:
    local button = Button()
	button:enabled(ture)

##font
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   font     |  fontName:String,<br&fontSize:Number  |  fontName:String,<br&fontSize:Number  |  -    |  title font     |

    例:
    local button = Button()
	button:font("GillSans",24)

##fontSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   fontSize     |   fontSize:Number   |  fontSize:Number   |  -    |  title font size     |

    例:
    local button = Button()
	button:fontSize(24)

##textSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   textSize     |   fontSize:Number   |  fontSize:Number   |  -    |  deprecated Use fontSize  |

    例:
    local button = Button()
	button:textSize(24)




# 需要合并的   VPLuaButton

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   selectedImage    |  v: String    |  -   |  -   |  设置button选中的图片     |

    例:
    local button = Button()
	button:selectedImage("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png")








