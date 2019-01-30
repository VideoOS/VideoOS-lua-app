Animation 是OS_Lua系统中的动画组件。


```lua
-- alpha动画
Animation().scale(2, 0.5).duration(2).delay(1)

-- 位移动画
view = View()
Animation().with(view).translation(100, -100).duration(3).interpolator(Interpolator.ACCELERATE_DECELERATE).callback({
    onStart = function()
        print("Running")
    end,
    onCancel = function()
        print("Canceled")
    end,
    onEnd = function()
        print("End")
    end,
    onPause = function()
        print("Paused")
    end,
    onResume = function()
        print("Running")
    end,
})
```

# API
* [with](#with)
* [start](#start)
* [alpha](#alpha)
* [rotation](#rotation)
* [scale](#scale)
* [scaleX](#scaleX)
* [scaleY](#scaleY)
* [translation](#translation)
* [translationX](#translationX)
* [translationY](#translationY)
* [duration](#duration)
* [delay](#delay)
* [repeatCount](#repeatCount)
* [interpolator](#interpolator)
* [cancel](#cancel)
* [pause](#pause)
* [isPaused](#isPaused)
* [isRunning](#isRunning)
* [resume](#resume)
* [reverses](#reverses)
* [values](#values)
* [callback](#callback)
* [onStart](#onStart)
* [onEnd](#onEnd)
* [onRepeat](#onRepeat)
* [onCancel](#onCancel)
* [onPause](#onPause)
* [onUpdate](#onUpdate)
* [onResume](#onResume)

## with
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    with    |  v: View    | -    |  -   |   设置动画target    |

例:
```lua
animation = Animation()
view = View()
view:frame(50, 300, 100, 100)
view:backgroundColor(0xff0000, 1)
view:callback({
    onClick = function()
        print("scale:", view:scale())
        print("translation:", view:translation())
    end
})
animation:with(view)
```

## start
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  start      |   -   | -    |  -   |   开始动画     |

例:
```lua
animation= Animation()
animation:start()
```

## alpha
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    alpha    |   v0: Number<br>v1: Number     | -    |  -   |   设置alpha动画     |

例:
```lua
animation= Animation()
animation:alpha(0.5,3)
```


## rotation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    rotation    |   v0: Number<br>v1: Number    | -    |  -   |    设置旋转动画    |

例:
```lua
animation= Animation()
animation:rotation(30,4)
```


## scale
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   scale     |   x: Number<br>: Number    | -    |  -   |   设置缩放动画(x轴缩放比、y轴缩放比)    |

例:
```lua
animation= Animation()
animation:scale(10,10)
```


## scaleX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   scaleX     |  x: Number    | -    |  -   |    设置x轴缩放动画   |

例:
```lua
animation= Animation()
animation:scaleX(4)
```


## scaleY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   scaleY     |  y: Number    | -    |  -   |   设置y轴缩放动画    |

例:
```lua
animation= Animation()
animation:scaleY(4)
```

## translation
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   translation     |   x: Number<br>: Number   | -    |  -   |   设置x轴、y轴位移动画    |

例:
```lua
animation= Animation()
animation:translation(3,4)
```

## translationX
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   translationX     |    x: Number  | -    |  -   |  设置x轴位移动画     |

例:
```lua
animation= Animation()
animation:translationX(23)
```

## translationY
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   translationY     |   y: Number   | -    |  -   |   设置y轴位移动画    |

例:
```lua
animation= Animation()
animation:translationY(5)
```

## duration
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   duration     |   time: Number   | -    |  -   |   设置动画时长    |

例:
```lua
animation= Animation()
animation:duration(0.25)
```


## delay
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   delay     |  time: Number    | -    |  -   |   设置动画启动延时    |

例:
```lua
animation= Animation()
animation:delay(3)
```


## repeatCount
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    repeatCount    |   count: Number   | -    |  -   |     设置动画重复测试（<0表示一直重复）  |

例:
```lua
animation= Animation()
animation:repeatCount(3)
```


## interpolator
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    interpolator    |  v: Interplator    | -    |  -   |   插值器    |

例:
```lua
animation= Animation()
animation:interpolator(Interplator:ACCELERATE)
```

###### Interpolator 
	1	ACCELERATE_DECELERATE	-	先加速后减速插值
	2	ACCELERATE	-	加速插值
	3	ANTICIPATE	-	预期插值
	4	ANTICIPATE_OVERSHOOT	-	预期弹性插值
	5	BOUNCE	Android	回弹插值
	6	CYCLE	Android	环形插值
	7	DECELERATE	-	减速插值
	8	LINEAR	-	线性插值
	9	OVERSHOOT	Android	弹性插值

## cancel
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   cancel     |    -  | -    |  -   |    取消动画   |

例:
```lua
animation= Animation()
animation:cancel()
```

## pause
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|     pause   |  -    | -    |  -   |     暂停动画  |

例:
```lua
animation= Animation()
animation:pause()
```


## isPaused
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    isPaused    |    -  | v: Boolean  |  -   |   动画是否暂停    |

例:
```lua
animation= Animation()
animation:isPaused()
```

## isRunning
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   isRunning     |   -   | v: Boolean  |  -   |   动画是否运行    |

例:
```lua
animation= Animation()
animation:isRunning()
```

## resume
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|      resume  |   -   | -    |  -   |  恢复动画     |

例:
```lua
animation= Animation()
animation:resume()
```


## reverses
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    reverses    |   v: Boolean   | -    |  -   |   动画重复播放时是否反转    |

例:
```lua
animation= Animation()
animation:reverses(ture)
```


## values
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    values    |   v: Number[]   | -    |  -   |  设置动画用到的参数     |

例:
```lua
animation= Animation()
animation:values(2)
```


## callback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   callback     |   v: LuaTable   | -    |  -   |     设置动画的回调  |

例:
```lua
animation= Animation()
animation:callback({})
```


## onStart
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   onStart     |   v: LuaFunction   | -    |  -   |    动画开始回调   |

例:
```lua
animation= Animation()
animation:onStart(
    function()
        print("Running")
    end,
)
```

## onEnd
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    onEnd    |   v: LuaFunction   |   -  |   -  |    动画结束回调   |

例:
```lua
animation= Animation()
animation:onEnd(
    function()
        print("End")
    end
)
```
	
## onRepeat
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   onRepeat     |   v: LuaFunction   |   -  |   -  |   动画重复回调    |

例:
```lua
animation= Animation()
animation:onRepeat(
    function()
        print("Repeat")
    end
)
```

## onCancel
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   onCancel     |   v: LuaFunction   |   -  |   -  |  动画取消回调     |

例:
```lua
animation= Animation()
animation:onCancel(
    function()
        print("Cancel ")
    end
)
```

## onPause
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    onPause    |   v: LuaFunction   |   -  |   -  |   动画暂停回调    |

例:
```lua
animation= Animation()
animation:onPause(
    function()
        print("Pause ")
    end
)
```

## onUpdate
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  onUpdate      |   v: LuaFunction   |   -  |   Android   |    动画状态更新回调   |

例:
```lua
animation= Animation()
animation:onUpdate(
    function()
        print("Update ")
    end
)
```

## onResume
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   onResume     |   v: LuaFunction   |   -  |   -  | 动画恢复回调      |

例:
```lua
animation= Animation()
animation:onResume(
    function()
        print("Resume")
    end
)
```
