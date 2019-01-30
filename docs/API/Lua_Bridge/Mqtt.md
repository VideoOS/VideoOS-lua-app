该组件使得lua文件拥有监听和控制Mqtt相关业务的能力。
# API

[startMqtt ](#startMqtt)
[stopMqtt](#stopMqtt)
[mqttCallback ](#mqttCallback)

## startMqtt
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| startMqtt   |   LuaTable|   -|-|  请求链接mqtt服务|

例:
```lua
local mqtt = Mqtt()
media:startMqtt({})
```
## stopMqtt
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| stopMqtt   |   -|   -|-|  请求断开mqtt服务|

例:
```lua
local mqtt = Mqtt()
media:stopMqtt()
```

## mqttCallback
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ |------------ |
| mqttCallback   |   LuaFunction|   -|-|  mqtt数据到来时调用|

例:
```lua
local mqtt = Mqtt()
media:mqttCallback(function(mqttDataStr)

end)
```