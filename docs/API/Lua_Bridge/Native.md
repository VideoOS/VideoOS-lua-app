本组件提供了访问android/iOS原生功能的能力

# API

[isPortraitScreen ](#isPortraitScreen)
[deviceBuildVersion ](#deviceBuildVersion)
[titleBarHeight](#titleBarHeight)
[isTitleBarShow ](#isTitleBarShow)
[packageName ](#packageName)
[getIdentity](#getIdentity)
[md5](#md5)
[aesEncrypt](#aesEncrypt)
[aesDecrypt](#aesDecrypt)
[zipString](#zipString)
[unZipString](#unZipString)
[unZipFile](#unZipFile)
[encode](#encode)
[decode](#decode)
[base64Encode](#base64Encode)
[base64Decode](#base64Decode)
[destroyView](#destroyView)
[stringDrawLength](#stringDrawLength)
[sendAction](#sendAction)


## ios
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| isPortraitScreen   |   -  |   Boolean| -|   设备是否是竖屏|

例:
```lua
local isPortrait = Native:isPortraitScreen()
```

## deviceBuildVersion
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| deviceBuildVersion   |   -  |   Number| -|   系统版本号|

例:
```lua
local buildVersion = Native:deviceBuildVersion()
```


## titleBarHeight
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| titleBarHeight   |   -  |   Number| -|   设备导航栏高度|

例:
```lua
local titleBarHeght = Native:titleBarHeight()
```

## isTitleBarShow
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| isTitleBarShow   |   -  |   Boolean| -|   导航栏是否展示|

```lua
local isTitleBarShow = Native:isTitleBarShow()
```

## packageName
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| packageName   |   -  |   String| -|   获取应用包名|

```lua
local packageName = Native:packageName()
```

## getIdentity
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| getIdentity   |   -  |   String| -|   获取设备唯一标志|

```lua
local identity = Native:getIdentity()
```

## md5
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| md5   |   String  |   String| -|   获取字符串的md5值|

```lua
local md5 = Native:md5("os_lua")
```

## aesEncrypt
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| aesEncrypt   |   key,iv,content  |   String| -|   aes加密|

```lua
local md5 = Native:aesEncrypt("yourSecretKey","yourIvParameterSpec","os_lua")
```

## aesDecrypt
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| aesDecrypt   |   key,iv,content    |   String| -|   aes解密|

```lua
local md5 = Native:aesDecrypt("yourSecretKey","yourIvParameterSpec","os_lua")
```

## zipString
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| zipString   |   String   |   String| -|   字符串压缩|

```lua
local zipString = Native:zipString("os_lua")
```

## unZipString
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| unZipString   |   String   |   String| -|   字符串解压缩|

```lua
local unZipString = Native:unZipString("os_lua")
```


## unZipFile
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| unZipFile   |   filePath:待解压的文件路径,targetPath：解压后的文件路径   |   Number| -|   文件解压缩|

```lua
local unZipFile = Native:unZipFile("sourceFile","yourTargetPath")
```


## encode
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| encode   |   String  |   String| -|   url encode|

```lua
local encode = Native:encode("http://....")
```


## decode
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| decode   |   String  |   String| -|   url decode|

```lua
local encode = Native:decode("http://....")
```

## base64Encode
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| base64Encode   |   String  |   String| -|   字符串进行 base64Encode|

```lua
local result = Native:base64Encode("os_lua")
```

## base64Decode
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| base64Decode   |   String  |   String| -|   字符串进行 base64Decode|

```lua
local result = Native:base64Decode("os_lua")
```


## destroyView
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| destroyView   |   -  |   -| -|   销毁当前LuaView对象|

```lua
 Native:destroyView()
```

## stringDrawLength
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| stringDrawLength   |   text:String,testSize:Float  | Float  | -|  获取字符串显示的宽度值 |

```lua
local textWidth = Native:stringDrawLength("os_lua",12.1)
```

## sendAction
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| sendAction   |   uri:String,data:LuaTable  | -  | -| 路由跳转功能 |

```lua
 local base64LuaName = Native:base64Encode("test.lua")
 --关闭前一个testFile形成的LuaView
 Native:sendAction("turnOff://" .. base64LuaName, nil)
 --生成新的luaView
Native:sendAction("turn://" .. base64LuaName, {})
```