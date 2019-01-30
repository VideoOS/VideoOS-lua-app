WebView 是OS_Lua系统中的html组件。

# API
<!-- TOC --&
[loadUrl](#loadUrl)
[canGoBack](#canGoBack)
[canGoForward](#canGoForward)
[goBack](#goBack)
[goForward](#goForward)
[reload](#reload)
[title](#title)
[isLoading](#isLoading)
[stopLoading](#stopLoading)
[url](#url)
[pullRefreshEnable](#pullRefreshEnable)
<!-- /TOC --&

##loadUrl
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    loadUrl    |  v: String    |   -  |  -   |   加载url    |

    例:
    webView = WebView();
	webView:loadUrl("http://www.taobao.com")

##canGoBack
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   canGoBack     |  -    | v: Boolean    |   -  |    是否可以回退   |

    例:
    webView = WebView();
	webView:canGoBack()

##canGoForward
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   canGoForward     |   -   |  v: Boolean   |    - |    是否可以前进   |

    例:
    webView = WebView();
	webView:canGoForward()

##goBack
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    goBack    |  -    |  -   |  -   |   回退一页    |

    例:
    webView = WebView();
	webView:goBack()

##goForward
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   goForward     |   -   |  -   |  -   |    前进一页   |

    例:
    webView = WebView();
	webView:goForward()

##reload
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   reload     |  -    | -    |   -  |  重新加载     |

    例:
    webView = WebView();
	webView:reload()

##title
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   title     |   -   |  v: String   |  -   |    获取Title   |

    例:
    webView = WebView();
	webView:title()

##isLoading
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  isLoading      |   -   |  v: Boolean   |   -  |   是否正在加载    |

    例:
    webView = WebView();
	webView:isLoading()

##stopLoading
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  stopLoading      |  -    |   -  |  -   |    停止加载   |

    例:
    webView = WebView();
	webView:stopLoading()

##url
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   url    |    -  |  v: String   |  -   |   获取url    |

    例:
    webView = WebView();
	webView:url()

##pullRefreshEnable
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    pullRefreshEnable    |  v: Boolean    |  -   |   -  |   是否可以下拉刷新    |

    例:
    webView = WebView();
	webView:pullRefreshEnable()



