Toast 是OS_Lua系统中的提示信息组件。

```lua
Toast("测试")

Toast(StyledString("测试", {fontColor=0xffff0000, backgroundColor=0xff00ff00, fontSize=50}))
```

#### Toast(message)

- message: String/StyledString/Unicode

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |
|    show    |   v: String/StyledString/Unicode   |    - |   -  |    显示提示   |

    例:
    toast= Toast()
	toast:show()