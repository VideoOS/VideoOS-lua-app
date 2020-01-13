# OS Lua

## 动态化方案
`OS_Lua`是在[LuaView](https://github.com/alibaba/LuaViewSDK)开源项目基础上，开发的一套视频互动对接层，其初衷是为了提升移动端互动模块动态化能力，同时做到Android、iOS业务代码共用，减少同一业务的人员重复投入。

## 小程序
使用`OS_Lua`的客户端能够具备动态化能力，做到bug随时修，业务随时上，且在硬件交互，动画等功能上提供比H5更好的体验。

## Lua
OS_Lua 使用Lua语言进行代码编写，目前支持两个端：Android和iOS。Android 端使用LuaJ引擎，iOS端使用LuaC引擎。

## 入口方法
OS_lua 所有的lua文件运行时，都从show方法开始执行。

```lua
function show(args)
    print("first load")
end
```
