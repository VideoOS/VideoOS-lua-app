Label 是OS_Lua系统中的文本组件。相当于Android的TextView,iOS的UILabel。

# API

[text](#text)
[textColor](#textColor)
[textSize](#textSize)
[fontSize](#fontSize)
[fontName](#fontName)
[font](#font)
[gravity](#gravity)
[textAlign](#textAlign)
[lines](#lines)
[maxLines](#maxLines)
[lineCount](#lineCount)
[minLines](#minLines)
[ellipsize](#ellipsize)
[adjustTextSize](#adjustTextSize)
[adjustFontSize](#adjustFontSize)

##text
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   text     |   v: String/StyledString/Unicode   |  v   |  -   |  Label文本     |

    例:
    local label = Label()
	label:text("label")

##textColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   textColor     |  color: Number    |   color  | -    |  文本颜色     |

    例:
    local label = Label()
	label:textColor(0x000000)

##textSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    textSize    |  size: Number    |  size   |  -   |    文本字体大小   |

    例:
    local label = Label()
	label:textSize(20)

##fontSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    fontSize    |  size: Number    |   size  |   -  |   文本字体大小    |

    例:
    local label = Label()
	label:fontSize(20)

##fontName
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   fontName     |  name: String    |   name  |  -   |   文本字体    |

    例:
    local label = Label()
	label:fontName("JHSIconfont")

##font
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  font      |   name: String<br&size: Number   |  name<br&size   |   -  |   文本字体&amp;大小    |

    例:
    local label = Label()
	label:font("JHSIconfont",20)

##gravity
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   gravity     |   v: Gravity   |   v  |   -  |    文本对齐方式   |

    例:
    local label = Label()
	label:gravity(Gravity.LEFT)
	''' 
	1	LEFT				Android		左对齐
	2	TOP				 Android		上对齐
	3	RIGHT			  Android		右对齐
	4	BOTTOM		   Android		下对齐
	5	START			  Android		左or上对齐
	6	END				 Android		右or下对齐
	7	CENTER			Android		居中对齐
	8	H_CENTER		Android		水平居中对齐
	9	V_CENTER		Android		垂直居中对齐
	10	FILL				Android		铺满
	11	H_FILL			Android		水平铺满
	12	V_FILL			Android		垂直铺满
	'''

##textAlign
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   textAlign     |  v: TextAlign    |   v  |  -   |  文本对齐方式     |

    例:
    local label = Label()
	label:textAlign(TextAlign.CENTER)
	'''
	1	LEFT	    左&amp;垂直居中
	2	RIGHT	  整体居中
	3	CENTER	右&amp;垂直居中
	'''

##lines
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   lines     |   v: Number   |   v  |  -    |  文字行数     |

    例:
    local label = Label()
	label:lines(20)

##maxLines
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   maxLines     |   v: Number   | v    |  Android   |   文本最大行数    |

    例:
    local label = Label()
	lable:maxLines(10)

##lineCount
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   lineCount     |   v: Number   |  v   |  -   |   文本最大行数    |

    例:
    local label = Label()
	label:lineCount(3)

##minLines
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    minLines    |  v: Number    |  v   |  Android    |  文本最小行数     |

    例:
    local label = Label()
	label:minLines(3)

##ellipsize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   ellipsize     |  v: Ellipsize    |   v  |   -  |   文本省略方式    |

    例:
    local label = Label()
	lable:ellipsize(Ellipsize.END)
	'''
	1	START			 起始位置省略
	2	MIDDLE		   中间位置省略
	3	END				结束为止省略
	4	MARQUEE		跑马灯
	'''

##adjustTextSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   adjustTextSize     |    -  |   -  |  Android    |   字体大小适应宽度    |

    例:
    local label = Label()
	label:adjustTextSize()

##adjustFontSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    adjustFontSize    |    -  |  -   |   -  |    字体大小适应宽度   |

    例:
    local label = Label()
	lable:adjustFontSize()















