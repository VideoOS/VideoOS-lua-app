RefreshCollectionView 是OS_Lua系统中的可刷新列表组件。相当于Android的RecyclerView, iOS的UICollectionView。->[CollectionView](https://www.showdoc.cc/web/#/oslua?page_id=548875552059371) -> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632)

```lua
-- RefreshCollectionView 例子
local cv = RefreshCollectionView {
    ...
    Callback = {-- 相比CollectionView，多了PullDown回调
        ...
        PullDown = function()
          -- 下拉刷新回调
        end
    }
  }
```

# API

[initRefreshing](#initRefreshing)
[isRefreshing](#isRefreshing)
[startRefreshing](#startRefreshing)
[stopRefreshing](#stopRefreshing)

##initRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  initRefreshing      |  -    |  -   |   iOS  |    初始化刷新组件   |

    例:
    collectionView  = RefreshCollectionView ()
	collectionView:initRefreshing()

##isRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   isRefreshing     |   -   |   v: Boolean  |   -  |    是否正在刷新   |

    例:
    collectionView  = RefreshCollectionView ()
	collectionView:isRefreshing()

##startRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   startRefreshing     |   -   |  -   |  -   |    开始刷新   |

    例:
    collectionView  = RefreshCollectionView ()
	collectionView:startRefreshing()

##stopRefreshing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  stopRefreshing      |     - |   -  |   -  |   停止刷新    |

    例:
    collectionView  = RefreshCollectionView ()
	collectionView:stopRefreshing()




