Alert 是OS_Lua系统中的对话框组件。


```lua
Alert("提示", "这是一个提示", "OK", function()
    print("OK clicked")
end)


Alert("提示", "这是一个提示", "OK", "Cancel", function()
    print("OK clicked")
end, function()
    print("Cancel clicked")
end)


local as1 = StyledString("一个按钮", { fontColor = 0xffff0000, backgroundColor = 0xff00ff00, fontSize = 30 })
local text = StyledString("文字", { fontColor = 0xffff0000, backgroundColor = 0xff00ff00, fontSize = 30 })
local ok = StyledString("确定", { fontColor = 0xffff0000, backgroundColor = 0xff00ff00, fontSize = 30 })
Alert(as1, text, ok, function()
    print("点击了")
end)
```
## Altert
Alert(title, content, buttonTexts[], buttonCallbacks[])

* Title: String/StyledString/Unicode
* Content: String/StyledString/Unicode
* Buttontexts[ ]: String/StyledString/Unicode [ ]
* Buttoncallbacks[ ]: LuaFunction[ ]
