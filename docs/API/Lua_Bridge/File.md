File是OS_Lua系统中的文件操作组件

## save
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   save     |  path: String<br>data: Data<br>callback: LuaFunction <br> data: Data <br>path: String<br>callback: LuaFunction    |  -   |   -  |  保存data内数据到path指定的文件内，文件名支持子目录或者上级目录     |

例:
```lua
file= File()
data=Data("aaa")
	File:save("test.html",data,) -- 同步存
File:save("test.html",data, function(status)
    -- 异步存
end)
```

## read
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|    read    |   path: String<br>callback: LuaFunction   |   Data  |   -  |  读取给定path的文件，并返回Data数据，支持异步读取，异步返回数据通过callback返回     |

例:
```lua
data = File:read("test.html") -- 同步读
File:read("test.html", function(data)
    -- 异步读取
end)
```

## exists
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   exists     |   path: String   |   -  |   -  |    文件是否存在   |

例:
```lua
File.exists("test.html")
```

## path
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|    path    |  name: filename    |  path:String   |   -  |  获取给定文件名的绝对存储路径     |

例:
```lua
File.path("test.html")
```


