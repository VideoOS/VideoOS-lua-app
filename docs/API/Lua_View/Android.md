Image 是OS_Lua系统中的图片组件。相当于Android的ImageView,iOS的UIImageView。-> [View](https://www.showdoc.cc/web/#/oslua?page_id=547028714523632)

# API

[image](#image)
[contentMode](#contentMode)
[scaleType](#scaleType)
[startAnimationImages](#startAnimationImages)
[stopAnimationImages](#stopAnimationImages)
[isAnimationImages](#isAnimationImages)
[placeHolderImage](#placeHolderImage)

##image
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  image      |  v: String, c: LuaFunction    |  v   |   -  |    设置图片url（本地、网络），回调   |

    例:
    local imageView = Image()
	imageView:image("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png")

##contentMode
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|  contentMode      |   type: ScaleType   |  type    |  Android    |   图片缩放模式    |

    例:
    local imageView = Image()
	imageView:contentMode(ScaleType.FIT_XY)

##scaleType
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    scaleType    |   type: ScaleType   |   type   |  -   |    图片缩放模式   |


    例:
    local imageView = Image()
	imageView:scaleType(ScaleType.FIT_XY)

	'''
	1	FIT_XY				   左上铺满
	2	FIT_START			  左or上铺满
	3	FIT_END			 	右or下铺满
	4	FIT_CENTER			居中铺满
	5	CENTER				   居中
	6	CENTER_CROP		 居中裁剪
	7	CENTER_INSIDE		居中包含
	8	MATRIX					矩阵
	'''

##startAnimationImages
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    startAnimationImages    |  images: String[]    |   -  |  -   |  帧动画（本地图）     |

    例:
    local imageView = Image()
	names = {};
	
	for i=1,16 do
	names[i] = "img" .. i .. ".tiff"
	end
	
	imageView:image("img16.tiff");
	imageView:startAnimationImages( names, 2.0, 1000);-- 图片数组，动画执行时间，循环次数

##stopAnimationImages
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    stopAnimationImages    |   -   |   -  |   -  |   停止播放帧动画    |

    例:
    local imageView = Image()
	imageView:stopAnimationImages()

##isAnimationImages
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   isAnimationImages     |   -   |   -  |  -   |   是否正在播放帧动画    |

    例:
	local imageView = Image()
	imageView:isAnimationImages()

# 需要合并的  VPLuaImageView  

##placeHolderImage
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   placeHolderImage     |   v: String   |   -  |  -   |   占位图    |

    例:
	local imageView = Image()
	imageView:placeHolderImage("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png")










