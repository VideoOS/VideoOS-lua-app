HScrollView  是OS_Lua系统中的横向滑动组件。

# API

[offset](#offset)
[scrollTo](#scrollTo)
[offsetBy](#offsetBy)
[scrollBy](#scrollBy)
[smoothScrollTo](#smoothScrollTo)
[smoothScrollBy](#smoothScrollBy)
[pageScroll](#pageScroll)
[fullScroll](#fullScroll)
[contentSize](#contentSize)


##offset
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
| offset   |  x: Number<br&y: Number<br&smooth: Boolean    |    x,y |   -  |    滚动到x,y，smooth表示是否平滑滚动   |

    例:
    scrollView = HScrollView()
	scrollView:offset(40,60,ture)

##scrollTo
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    scrollTo    |  x: Number<br&y: Number<br&smooth: Boolean    |  -   |  Android   |   滚动到x,y，smooth表示是否平滑滚动   |

    例:
    scrollView = HScrollView()
	scrollView:scrollTo(23,45,ture)

##offsetBy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   offsetBy |  dx: Number<br&dy: Number<br&smooth: Boolean  |   x,y  |   Android  |    滚动到x,y，smooth表示是否平滑滚动   |

    例:
    scrollView = HScrollView()
	scrollView:offsetBy(23,45,ture)

##scrollBy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   scrollBy     |    dx: Number<br&dy: Number<br&smooth: Boolean  |  -   | Android    |    滚动到x,y，smooth表示是否平滑滚动   |

    例:
    scrollView = HScrollView()
	scrollView:scrollBy(23,45,ture)

##smoothScrollTo
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   smoothScrollTo     |   x: Number<br&y: Number   | -    |    Android  |   平滑滚动到x,y    |

    例:
    scrollView = HScrollView()
	scrollView:smoothScrollTo(2,3)

##smoothScrollBy
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   smoothScrollBy     |   x: Number<br&y: Number   |  -   |  Android    |    滚动到x,y   |

    例:
    scrollView = HScrollView()
	scrollView:smoothScrollBy(2,3)

##pageScroll
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    pageScroll    |   direction: Number  |   -  |  Android    |   滚动一页(direction&0右滚，否则左滚)    |

    例:
    scrollView = HScrollView()
	scrollView:pageScroll(3)

##fullScroll
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    fullScroll    |  direction: Number    |  -   |   Android   |   滚动到底(direction&0右滚，否则左滚)    |

    例:
    scrollView = HScrollView()
	scrollView:fullScroll(3)

##contentSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|     contentSize   |   -   |  -   | IOS    |    内容区域大小   |

    例:
    scrollView = HScrollView()
	contentSize:contentSize(100,300)






