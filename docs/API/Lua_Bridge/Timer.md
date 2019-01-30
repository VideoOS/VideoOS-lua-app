Timer 是OS_Lua系统中的定时器组件。


# API

* [delay](#delay)
* [repeat ](#repeat )
* [repeatCount ](#repeatCount )
* [interval](#interval)
* [start](#start)
* [callback](#callback)
* [cancel](#cancel)


## delay
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   delay     |   v: Number   |   v  | -    |    启动延时   |

例:
```lua
timer = Timer()
timer:delay(2)
```

## repeat
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|    repeat    |    v: Number   |  v   |  -   |  重复次数     |

例:
```lua
timer = Timer()
timer:repeat(2)
```

## repeatCount
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   repeatCount     |   v: Number    |   v  |    - |    重复次数   |

例:
```lua
timer = Timer()
timer:repeatCount(3)
```

## interval
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   interval     |  v: Number    |   v  |   -  |   重复间隔    |

例:
```lua
timer = Timer()
timer:interval(3)
```

## start
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   start     |   v: Number   |   v  |    - |   启动    |

例:
```lua
timer = Timer()
timer:start(0)
```

## callback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|    callback    |   v: LuaFunction   |   v  |   -  |    回调   |

例:
```lua
timer = Timer()
timer:callback(
function()
end
)
```

## cancel
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|   cancel     |   -   |    - |  -   |   取消    |

例:
```lua
timer = Timer()
timer:cancel()
```

