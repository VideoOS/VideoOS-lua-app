ScrollView 是OS_Lua系统中的基础列表组件。相当于iOS的UIScrollView。 

# API

[contentSize](#contentSize)
[offset](#offset)
[contentInset](#contentInset)
[showScrollIndicator](#showScrollIndicator)
[isRefreshing](#isRefreshing)


##contentSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  contentSize      |    -  |  -   |  IOS    |     设置内容区域大小  |

    例:
    scrollView = ScrollView();
	scrollView:contentSize( 200, 400 )

##offset
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    offset    |  -    |   -  | IOS     |   设置内容偏移    |

    例:
    scrollView = ScrollView();
	scrollView:offset(150,0,false); -- 最后一个参数 是否需要动画

##contentInset
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   contentInset     |     - |   -  |  IOS    |   设置ContentInset    |

    例:
    scrollView = ScrollView();
	scrollView:contentInset(5,5,5,5)

##showScrollIndicator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   showScrollIndicator     |    v: Boolean  |  v   |   IOS   |   是否显示滚动条信息    |

    例:
    scrollView = ScrollView();
	scrollView:showScrollIndicator(ture)

##isRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   isRefreshing     |  -    | v: Boolean    |  IOS    |   是否正在刷新    |

    例:
    scrollView = ScrollView();
	scrollView:isRefreshing()
















