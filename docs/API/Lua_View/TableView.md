TableView 是OS_Lua系统中的基础列表组件。相当于Android的ListView  iOS已不支持 


# API

[reload](#reload)
[showScrollIndicator](#showScrollIndicator)
[scrollToTop](#scrollToTop)
[scrollToCell](#scrollToCell)
[miniSpacing](#miniSpacing)
[lazyLoad](#lazyLoad)
[header](#header)
[footer](#footer)


## reload
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  reload      |    section: Number<br&row: Number  |  -   |  -   | Android支持参数      |

例:
```lua
local tab = TableView()
tab:reload(2,3)

```
## showScrollIndicator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  showScrollIndicator      |   v: Boolean   |  v   |  -   |   是否显示滚动条信息    |

例:
```lua
local tab = TableView()
tab:showScrollIndicator(ture)

```
## scrollToTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    scrollToTop    |   offset: Number<br&animate: Boolean   |  -   |  -   |     滚动到顶部(offset间隔，animate是否动画)  |

例:
```lua
local tab = TableView()
tab:scrollToTop(2,ture)

```
## scrollToCell
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    scrollToCell    |  section: Number<br&rowInSection: Number<br&offset: Number<br&animate: Boolean    |  -   |  -   |   滚动到指定cell，offset间隔，animate是否动画    |

例:
```lua
local tab = TableView()
tab:scrollToCell(2,3,4,ture)

```
## miniSpacing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    miniSpacing    |  space: Number    |   space   |   -  |   cell间隙    |

例:
```lua
local tab = TableView()
tab:miniSpacing(10)

```
## lazyLoad
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   lazyLoad     |   v: Boolean   |  -   |   -  |    是否懒加载Cell   |

例:
```lua
local tab = TableView()
tab:lazyLoad(ture)

```
## header
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  header      |   v: View   |  -   |    - |   设置Header，nil的时候清空header    |

例:
```lua
local tab = TableView()
view=View()
view:size(200,400)
tab:header(view)

```
## footer
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   footer     |   v: View   |  -   |  -   |   设置Footer，nil的时候清空footer    |

例:
```lua
local tab = TableView()
view=View()
view:size(200,400)
tab:footer(view)
```







