系统信息组件，静态，通过该组件可以获取系统的信息，比如操作系统的版本号，屏幕尺寸，网络类型等信息。

# API

[ios ](#ios)
[android ](#android)
[vmVersion](#vmVersion)
[osVersion ](#osVersion)
[platform ](#platform)
[scale ](#scale)
[device](#device)
[screenSize](#screenSize)
[network ](#network)
[gc ](#gc)
[keepScreenOn](#keepScreenOn)


## ios
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| ios   |   -  |   Boolean| -|   是否是iOS平台|

```
例：
local isIOS = System:ios()
```

## android
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| android    |   -  |   Boolean| -|   是否是Android平台|

```
例：
local isAndoroid = System:android()
```

## sdkVersion
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| sdkVersion    |   -  |   String| -|   LuaView版本|

```
例：
local sdkVersion = System:sdkVersion()
```

## osVersion
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| osVersion     |   -  |   String| -|   操作系统版本|

```
例：
local osVersion = System:osVersion()
```

## platform
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| platform     |   -  |   String| -|   平台系统型号|

```
例：
local platform = System:platform()
```

## scale
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| scale      |   -  |   Number| -|   屏幕缩放比|

```
例：
local scale = System:scale()
```

## device
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| device       |   -  |   LuaTable| -|   设备信息|

```
例：
local deviceTable = System:device()
local device = deviceTable.device
local brand = deviceTable.brand
local product = deviceTable.product
local manufacturer = deviceTable.manufacturer
local windowWidth = deviceTable.window_width
local windowHeight = deviceTable.window_height
lcoal navHeight = deviceTable.nav_height
local bottomNavHeight=deviceTable.bottom_nav_height
local statusBarHeight = deviceTable.status_bar_height


```

## screenSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| screenSize        |   -  |   width:Number,height:Number| -|   屏幕尺寸|

```
例：
local width,height = System:screenSize()
```

## gc
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| gc        |   -  |   -| -|   执行内存回收|

```
例：
System:gc()
```

## keepScreenOn
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| keepScreenOn        |   -  |   Boolean| -|   是否保持屏幕常亮|

```
例：
local keepScreenOn = System:keepScreenOn()
```