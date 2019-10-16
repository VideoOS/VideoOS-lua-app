TextFiled 是OS_Lua系统中的输入框组件。相当于Android的Label ,iOS的UITextFiled。
# API

* [hint](#hint)
* [placeholder](#placeholder)
* [text](#text)
* [inputType](#inputType)
* [textColor](#textColor)
* [textSize](#textSize)
* [maxLength](#maxLength)
* [resignFirstResponder](#resignFirstResponder)


##  hint
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|    hint    |   v: String/StyledString/Unicode   |  v   |  -   |    同placeholder    |

例:
```lua
textFiled = TextField()
textFiled:hint("我是输入框")

```
##  placeholder
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   placeholder     |   v: String/StyledString/Unicode   |   v  |    - |   -     |

例:
```lua
textFiled = TextField()
textFiled:placeholder("我是输入框")

```
##  text
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   text   |   text: String/StyledString/Unicode   |   text:String  |    - |   -     |

例:
```lua
textFiled = TextField()
textFiled:text("我是输入框")


```
##  inputType
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   inputType   |   text: String/StyledString/Unicode   |   -  |    - |   键盘样式    |

例:
```lua
textFiled = TextField()
textFiled:inputType("number")
-- number 数字键盘
-- password 26字母键盘
-- visible_password 26字母键盘
```

##  textColor
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   textColor   |   color: Number   |   color   |    - |   颜色   |

例:
```lua
textFiled = TextField()
textFiled:textColor("0x000000 ")

```
##  textSize
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   textSize   |   size : Number   |   size    |    - |   字体大小   |

例:
```lua
textFiled = TextField()
textFiled:textSize(20)
```
##  maxLength
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   maxLength   |   Length : Number   |   Length    |    - |   字符最大长度  |

例:
```lua
textFiled = TextField()
textFiled:maxLength(20)
```
##  resignFirstResponder
| api  |参数   |返回参数   |平台   |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|   resignFirstResponder   |   -   |   -    |    - |   收起键盘  |

例:
```lua
textFiled = TextField()
textFiled:resignFirstResponder()
```




