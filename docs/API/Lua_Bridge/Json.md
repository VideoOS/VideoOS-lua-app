Json是OS_Lua系统中的Json组件

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|    toTable    |   v: String/Data/LuaTable   |  r: LuaTable   |  -   |     给定内容转成LuaTable  |

例:
```lua
Json():toTable(97, "abc", "def")
```

| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
|  isValid      |  v: String/Data    |   r: Boolean  |  Android    |   是否有效JsonString    |

例:
```lua
Json():isValid("def")
```





