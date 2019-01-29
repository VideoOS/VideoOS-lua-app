Vibrator是OS_Lua系统中的震动组件。

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    hasVibrator    |  -    |  v: Boolean   |  -   |   是否有震动硬件    |

    例:
    vibrator = Vibrator ()
	vibrator:hasVibrator()

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    vibrate    |  mode: Number[], repeatTimes: Number    |  -   |  -   |    震动(模式，次数)   |

    例:
    vibrator = Vibrator ()
	vibrator.vibrate() -- 默认震动
	vibrator.vibrate(2) -- 震动两次
	vibrator.vibrate({1, 2, 1, 0.3, 0.2, 0.1, 0.01, 1.1}, 4) -- 特殊震动模式


| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|   cancel     |  -    |  -   |  -   |    取消震动   |

    例:
    vibrator = Vibrator ()
	vibrator:cancel()



