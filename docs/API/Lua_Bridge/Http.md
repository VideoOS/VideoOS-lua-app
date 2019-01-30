网络请求组件，给lua文件提供了访问网络的能力


### Http(initParams, callback)

- initParams: LuaTable，请求参数
	- method: String, 请求方法
	- params: LuaTable, 请求业务参数
- callback: LuaFunction, 回调
	- 返回参数response为LuaTable
	- response.data() 得到 Data数据

```lua
Http({
    "method": "POST",
    "params": {
        "k1": "v1",
        "k2": "v2"
    }
}, function(response)
    print("called success")
end)


http = Http()
http.get("http://luaview.github.io", {
    query = 1
}, function(response)
    print("called success")
end)
```


#API

* [get ](#get)
* [post ](#post)
* [delete](#delete)
* [put ](#put)
* [upload ](#upload)
* [code ](#upload)
* [data ](#upload)
* [header ](#upload)
* [cancel ](#upload)
* [request  ](#upload)
* [callback  ](#upload)
* [params  ](#upload)
* [timeout  ](#upload)
* [retryTimes](#upload)
* [method  ](#upload)
* [url ](#upload)


## get
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| get(url,table,function)   |   url:地址，table:请求参数，function:请求回调  |   －| -|   http的get请求|

例:
```lua
Native:get("http://.....", {k1=v1,k2=v2}, function(data)
--data 为网络返回数据
end)
```

## post
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| post(url,table,function)   |   url:地址，table:请求参数，function:请求回调  |   －| -|   http的post请求|

例:
```lua
Native:post("http://....", {k1=v1,k2=v2}, function(data)
--data 为网络返回数据
end)
```

## delete
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| delete(url,table,function)   |   url:地址，table:请求参数，function:请求回调  |   －| -|   http的delete请求|

例:
```lua
Native:delete("http://......", {k1=v1,k2=v2}, function(data)
--data 为网络返回数据
end)
```

## put
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| put(url,table,function)   |   url:地址，table:请求参数，function:请求回调  |   －| -|   http的put请求|

例:
```lua
Native:put("http://......", {k1=v1,k2=v2}, function(data)
--data 为网络返回数据
end)
```


## upload
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| upload(url,filePath,function)   |   url:地址，filePath:文件路径，function:请求回调  |   －| -|   文件上传|

例:
```lua
Native:upload("http://......","file://xxx/xxx/test.jpg", function(data)
--data 为网络返回数据
end)
```

## code
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    code    |    -  |  -   |  IOS   |  http响应的code     |

例:
```lua
http = Http()
http:code()
```

## data
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  data      |    -  |    - |  IOS   |   http响应的数据体(数据块类型)    |

例:
```lua
http = Http()
http:data()
```

## header
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    header    |    -  |   -  |   IOS  |   http响应的头信息    |

例:
```lua
http = Http()
http:header()
```

## cancel
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   cancel     |   -   |  -   |   -  |   中止     |

例:
```lua
http = Http()
http:cancel()
```

## request
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   request     |    -  |   -  |   Android   |   请求     |

例:
```lua
http = Http()
http:request()
```

## callback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    callback    |    v: LuaFunction  |  -   |   Android   |      请求回调 |

例:
```lua
http = Http()
http:callback(
    local str = tostring( http:data() );
    local object = Json:toTable(str);
	print(object);
)
```

## params
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    params    |  v: LuaTable    |   v  |  Android    |  请求参数     |

例:
```lua
http = Http()
http:params({       
	"k1": "v1",
    "k2": "v2"
})
```

## timeout
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   timeout     |   v: Number   |  v   |   Android  |   超时时间    |

例:
```lua
http = Http()
http:timeout(30)
```

## retryTimes
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  retryTimes      |    v: Number  |  v   |   Android  |    重试次数   |

例:
```lua
http = Http()
http:retryTimes(5)
```

## method
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   method     |   v: String, get/post   |   v  |   Android   |   设置请求方法    |

例:
```lua
http = Http()
http:method("POST")
```

## url
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    url    |   v: String   |  v    |   Android   |    设置请求Url   |

例:
```lua
http = Http()
http:url("http://luaview.github.io")
```





