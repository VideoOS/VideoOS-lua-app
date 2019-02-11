StyledString是OS_Lua系统中的富文本组件。


```lua
StyledString("test", { fontColor = 0xff0000ff, fontSize = 14 })

StyledString(Unicode(0xe607), { fontColor = 0xff00aaff, fontStyle = "bold" })
```

#### StyledString(text, config)

- text: String/Unicode
- config: LuaTable
    - fontSize: Number, 文字大小
    - fontColor: Number, 文字颜色
    - fontName: String, 文字样式
    - fontWeight: Number/FontWeight, 文字权重
    - fontStyle: String/FontStyle，文字样式
    - backgroundColor: Number, 文字背景色
    - strikethrough: Boolean，是否删除线
    - underline: Boolean，是否下划线

## append
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    append    |   v: StyledString   |   v  |   -  |  新增一段     |

例:
```lua
Styledstring = StyledString()
Styledstring:append("12345")
```
