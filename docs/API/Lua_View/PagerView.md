PagerView 是OS_Lua系统中的页面组组件（轮播图）。-> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632)


```lua
-- PagerView 列子
pagerView = PagerView{
    PageCount = function()
        -- 获取页面个数
        return table:getn(net.options);
    end,
    Pages = {
        Init = function(page, pos)
          -- 页面初始化代码放置在这里，一般在这里创建出对应的视图，如
          -- page.ui = Image()
        end,
        Layout = function(page, pos)
          -- 页面对应的布局代码放置在这里，一般是对Page页面的内容进行填充，如
          -- page.ui.image("image_url")
        end
    },
    Callback = {-- 处理PagerView的各种事件，如滚动开始，滚动中，滚动结束事件
        Scrolling = function(pageIndex, percent, offset)
            -- PagerView的滚动监听写在这里
            local x = (pageIndex - 1) * scrW + offset;
            local y = 0;
            if (bar) then
                bar.renewContentScrollOffset(x, y);
            end
        end,
        ScrollEnd = function(pageIndex)
           -- PagerView滚动结束回调
        end
    }
};
```

# API

[reload](#reload)
[indicator](#indicator)
[currentPage](#currentPage)
[currentItem](#currentItem)
[autoScroll ](#autoScroll )
[looping ](#looping )
[previewSide](#previewSide)
[showScrollBar](#showScrollBar)

##reload
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  reload      |   -   |  -   |  -   |     重新加载数据  |

    例:
    pagerView  = PagerView ()
	pagerView:reload()

##indicator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    indicator    |  v: [PagerIndicator](https://www.showdoc.cc/web/#/oslua?page_id=559009569098584)    |   -  |  -   |    设置页面组指示器   |

    例:
    pagerView  = PagerView ()
	indicator = PagerIndicator()
	indicator:pageColor(0xff00FF)
	pagerView:indicator(indicator)
	indicator:frame(0,10,scrW,100)

##currentPage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    currentPage    |  v: Number    |   v  |   -  |   设置/获取当前页    |

    例:
    pagerView  = PagerView ()
	pagerView:currentPage(3)

##currentItem
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    currentItem    |   v: Number   |  v   |  -   |    设置/获取当前页    |

    例:
    pagerView  = PagerView ()
	pagerView:currentItem(2)

##autoScroll
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|     autoScroll   | duration: Number     |   -  |  -   |   自动轮播    |

    例:
    pagerView  = PagerView ()
	pagerView:autoScroll(1)

##looping
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   looping     |   v: Boolean   |   v   |  -   |    自动轮播   |

    例:
    pagerView  = PagerView ()
	pagerView:looping(ture)

##previewSide
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   previewSide     |   l: Number<br&r: Number   |  -   |  -   |     支持左右透出预览  |

    例:
    pagerView  = PagerView ()
	pagerView:previewSide(10,20)

##showScrollBar
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    showScrollBar    |   -   |  -   |  IOS   |   是否显示类似CollectionView的滚动条    |

    例:
    pagerView  = PagerView ()
	pagerView:showScrollBar(ture)




