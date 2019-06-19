
# json

```lua
-- 测试json字符串转成lua对象
object = Json:toTable( '{"a":false, "b":true, "c":{}, "d":0, "f":1 }' );

print("1:",object);

print( "2:",Json:toString(object) )

-- 测试Lua对象转成native
dic = viewController:testJson(object);
print("3:",dic)
```
