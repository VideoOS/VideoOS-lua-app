AudioPlayer 是OS_Lua系统中的音频播放器组件。


# API
<!-- TOC --&
[play](#play)
[pause ](#pause )
[resume](#resume)
[stop](#stop)
[seekTo](#seekTo)
[callback](#callback)
[playing](#playing)
[pausing](#pausing)
[looping](#looping)
<!-- /TOC --&

##play
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   play     |  name: String<br&times: Number    |   -  |  -    |   播放（uri，重复次数）    |

    例:
    player = AudioPlayer()
	player:play("http://fm111.img.xiaonei.com/tribe/20070613/10/52/A314269027058MUS.mp3")

##pause
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    pause    |  -    |   -  |  Android    |    暂停播放   |

    例:
    player = AudioPlayer()
	pause:pause()


##resume
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   resume     |  -    |   -  |  Android    |   恢复播放    |

    例:
    player = AudioPlayer()
	pause:resume()


##stop
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    stop    |  -    |   -  |  -    |   停止播放    |

    例:
    player = AudioPlayer()
	player:stop()


##seekTo
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   seekTo     |  sec: Number    |   -  |  Android    |   到某个位置    |

    例:
    player = AudioPlayer()
	player:seekTo(30)


##callback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   callback     |  v: LuaFunction    |   -  |  Android    |    回调   |

    例:
    player = AudioPlayer()
	player:callback(
	function()
	
	end
	)


##playing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   playing     |  -    |   v: Boolean  |  Android    |  是否播放     |

    例:
    player = AudioPlayer()
	player:playing()


##pausing
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   pausing     |  -    |   v: Boolean  |  Android    |  是否暂停     |

    例:
    player = AudioPlayer()
	player:pausing()

##looping
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   looping     |  -    |   v: Boolean  |  Android    |    是否循环播放   |

    例:
    player = AudioPlayer()
	player:looping()



