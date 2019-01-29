CollectionView 是OS_Lua系统中的基础列表组件。相当于Android的RecyclerView, iOS的UICollectionView。Android: -> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632) , iOS:-> [ScrollView](https://www.showdoc.cc/web/#/oslua?page_id=548856573448041) -> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632)  



[========]
```lua
-- CollectionView 例子
local cv = CollectionView {
    Section = {
        SectionCount = function()
            -- 返回页面区块的个数（不同区块的种类数）
            return sectionCount
        end,
        RowCount = function(section)
            -- 返回每个区块对应有的坑位数
            if(section == 1) then
                return rowCount1
            else
                return rowCount2
            end
        end
    },
    Cell = {
        Id = function(section, row)
            -- 返回每个区块对应额坑位ID
            if (section == 1) then
                return "Label"
            elseif(section == 2) then
                return "ImageAndLabel"
            end
        end,
        Label = {
            Size = function(section, row)
                return w, cellHeight
            end,
            Init = function(cell, section, row)
                cell.title = Label()
            end,
            Layout = function(cell, section, row)
                cell.title.frame(0, 0, w - cellHeight, cellHeight)
                cell.title.text("测试" .. section .. "--" .. row .. "--" .. rowTitle)
                cell.title.backgroundColor(0xdcdcdc)
            end
        },
        ImageAndLabel = {
            Size = function(section, row)
                -- 返回Cell的宽、高
                return w, cellHeight
            end,
            Init = function(cell, section, row)
                -- Cell的初始化，一般在这里创建对应的Cell各个UI元素
                cell.icon = Image()
                cell.title = Label()
            end,
            Layout = function(cell, section, row)
                -- Cell的布局，一般在这里对Cell的各个UI元素进行布局（设置位置、内容）
                cell.icon.frame(20, 0, cellHeight, cellHeight)
                cell.icon.image(imageUrl1)

                cell.title.frame(20 + cellHeight, 0, w - cellHeight, cellHeight)
                cell.title.text("测试" .. section .. "--" .. row .. "--" .. rowTitle)
            end,
            Callback = function(section, row)
                -- 在这里处理Cell的点击事件，或者长按时间，默认处理的是点击事件，长按时间需要定义Callback为表                
            end
        }
    },
        Callback = {-- 整个CollectionView的事件回调
        Scrolling = function( firstVisibleSection, firstVisibleRow, visibleCellCount )
          -- 滚动中回调
        end,
        ScrollBegin = function(firstVisibleSection, firstVisibleRow, visibleCellCount )
          -- 滚动开始回调
        end,
        ScrollEnd = function(firstVisibleSection, firstVisibleRow, visibleCellCount )
          -- 滚动结束回调
        end
    }
    }
```

[========]


# API

[reload ](#reload )
[showScrollIndicator](#showScrollIndicator )
[scrollToTop](#scrollToTop)
[scrollToCell](#scrollToCell)
[miniSpacing](#miniSpacing)
[lazyLoad](#lazyLoad)


##reload
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    reload    |   section: Number <br&row: Number   |   -  |    - |   Android支持参数    |

    例:
    local collectionview = CollectionView()
	collectionview:reload() -- IOS
	collectionview:reload(3,2)--Android

##showScrollIndicator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    showScrollIndicator    |  v: Boolean    | v    | -    |    是否显示滚动条信息   |

    例:
    local collectionview = CollectionView()
	collectionview:showScrollIndicator()


##scrollToTop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  scrollToTop      |   offset: Number<br&animate: Boolean   | -    |   -  |    滚动到顶部(offset间隔，animate是否动画)   |

    例:
    local collectionview = CollectionView()
	collectionview:scrollToTop(3,ture)

##scrollToCell
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    scrollToCell    |  section: Number <br& rowInSection: Number <br& offset: Number <br& animate: Boolean   |  -   |  -   |    滚动到指定cell，offset间隔，animate是否动画   |

    例:
    local collectionview = CollectionView()
	collectionview:scrollToCell(3,2,1,ture)

##miniSpacing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    miniSpacing    |   space: Number   |   space   |  -   |   cell间隙    |

    例:
    local collectionview = CollectionView()
	collectionview:miniSpacing(4)


##lazyLoad
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    lazyLoad    |   v: Boolean   | -    |   Android   |   是否懒加载Cell    |

    例:
    local collectionview = CollectionView()
	collectionview:lazyLoad(ture)






