--气泡控件--
require "os_config"
require "os_util"
require "os_string"
require "os_constant"
require "os_track"
bubble = object:new()
bubble.views = {}
local scale = getScale()
local delayTime = 0 --记录延时时间
local bubbleIndex = 0 --记录添加滑动控件的index

local bubbleViewSpace = 10
local bubbleImageSpace = 10
local bubbleAngleWidth = 6 --气泡三角的宽度

local promptShowTime = 1000

local allBubbleIsCreate = false

local imageDefaultBackgroundColor = 0xF2F2F3

local bubbleAnimScale = 1.08

local bubbleShowTime = 15000
local bubbleShowAllTime = 13000

local loadBubbleCount = 0
local totalBubbleCount = 0
local showlaunchPlanCount = 0;

local OS_BUBBLE_TEXT_COLOR = 0XF5D876

local OS_BUBBLE_CLOSE = "iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAAAXNSR0IArs4c6QAAABxpRE9UAAAAAgAAAAAAAAANAAAAKAAAAA0AAAANAAAB+IoRfI4AAAHESURBVEgNhJRBTgJBEEWRAJmFIZiwk8WcgCuw8gq6wh0bohvCEOL06HgKohsPwAHYuPVe/ld2TXpGEjr5dHVV/V9d3T30ev/HVeLKZM+EhbAUnoV9xJPmR4HYrUCuj1TDfa3ZE4by5sKDUAiIvwihA3zEyCE3F+AyXOtvdeb3Wr47YSe8Ce9CLbxGVJqBr2vZ5JALBy4aZ4dXv1H0XkAIMrN34QW6cxp3DhpotYYXYRcksDN2i0BX9NIaDlw00PLOvIadKy0j1CoyGAwuiVedHC8GD82h0Ixc1k6gdeuk3+97gXI8HnfFLEYBYuKUQpVw0EALzVywwbP0I3Nxm6fTaTWfz2vFIYbRaNTEo21+cshVThccIa/Rnv5MBs+z6SYeRYnAZrP5Wq1WB8URKbMsqwA2PmLkKBfRMjlG7wptatgHx7dQCwRtVzoS7IDQ8Xj8Lorig/VkMjFg4yMWNxIix7uCXwtoLwT74vnweASe5HdihV1wu91+Ksc2gJ1sAF5IunEdNNFeCva3ArlVSOsq3gNHFFx4vV4fAEWSwmV6f3Aj/AXz12Wt2c6TBE+0++C4FAsUOJ1OPwAbH7F4Zw2nowN3/wsAAP//Y+jNTwAAAchJREFUhZQ9TsNAEIWXyEQuUBSkdKTwCXyFVHAEqEKXJoImigPCXjCnQNBwgBwgDS334n3LjllHlljpZWdn3ryZ/XGcc+5RaAQ/hDzP/XQ6Jd6s1+u3w+HwDbDxEYMzlBt95D4I7l5g8Sz0EsbjMeua+Ha7/djv918UANj4iMGJ3F6+/GgSvxPcUngSeoWyLCMJkq+q6v1IuCtMDA7cmJMWQxPtW8EtBI6vFYKwZj+ZTLCb1WoVuo+C4ajsKK0BOHBjjhUivxXQpoabC5XwKoRCsbO6LMt2s9l8RiEEau4j3glH6onBEfeFeLIrtNBE+0JwuXAjQLRuwjybzTzF5CepSe8h2sEPB+5xvtZook2NMAr97oRuV6PRyBJrHYlPOjV/8BFTXthdkmO7QbMQupHJuhRIspcSBIcKRF6vYOKjiD0sNE+FME7ifKb5WmC7vWJad6L/2FYEDbTQZFiNzjiXEwLCHCNzuIdoDxVM45aDBlqMrsjv8u+XLtjyTqAzkluBXdqRUNDWxODAJedKsJ3IHB5WnXMtBDrjefIt8OFZ9zbjIwYHbiHYnZiWXMMjJfAs58JCWAr8XSEMsPERg9M9YdmphpbO/QAEn2PTz/v3hwAAAABJRU5ErkJggg=="
local OS_BUBBLE_PROMPT = "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"
local OS_BUBBLE_DEFAULT_IMAGE = "iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAIAAAAC64paAAAEGWlDQ1BrQ0dDb2xvclNwYWNlR2VuZXJpY1JHQgAAOI2NVV1oHFUUPrtzZyMkzlNsNIV0qD8NJQ2TVjShtLp/3d02bpZJNtoi6GT27s6Yyc44M7v9oU9FUHwx6psUxL+3gCAo9Q/bPrQvlQol2tQgKD60+INQ6Ium65k7M5lpurHeZe58853vnnvuuWfvBei5qliWkRQBFpquLRcy4nOHj4g9K5CEh6AXBqFXUR0rXalMAjZPC3e1W99Dwntf2dXd/p+tt0YdFSBxH2Kz5qgLiI8B8KdVy3YBevqRHz/qWh72Yui3MUDEL3q44WPXw3M+fo1pZuQs4tOIBVVTaoiXEI/MxfhGDPsxsNZfoE1q66ro5aJim3XdoLFw72H+n23BaIXzbcOnz5mfPoTvYVz7KzUl5+FRxEuqkp9G/Ajia219thzg25abkRE/BpDc3pqvphHvRFys2weqvp+krbWKIX7nhDbzLOItiM8358pTwdirqpPFnMF2xLc1WvLyOwTAibpbmvHHcvttU57y5+XqNZrLe3lE/Pq8eUj2fXKfOe3pfOjzhJYtB/yll5SDFcSDiH+hRkH25+L+sdxKEAMZahrlSX8ukqMOWy/jXW2m6M9LDBc31B9LFuv6gVKg/0Szi3KAr1kGq1GMjU/aLbnq6/lRxc4XfJ98hTargX++DbMJBSiYMIe9Ck1YAxFkKEAG3xbYaKmDDgYyFK0UGYpfoWYXG+fAPPI6tJnNwb7ClP7IyF+D+bjOtCpkhz6CFrIa/I6sFtNl8auFXGMTP34sNwI/JhkgEtmDz14ySfaRcTIBInmKPE32kxyyE2Tv+thKbEVePDfW/byMM1Kmm0XdObS7oGD/MypMXFPXrCwOtoYjyyn7BV29/MZfsVzpLDdRtuIZnbpXzvlf+ev8MvYr/Gqk4H/kV/G3csdazLuyTMPsbFhzd1UabQbjFvDRmcWJxR3zcfHkVw9GfpbJmeev9F08WW8uDkaslwX6avlWGU6NRKz0g/SHtCy9J30o/ca9zX3Kfc19zn3BXQKRO8ud477hLnAfc1/G9mrzGlrfexZ5GLdn6ZZrrEohI2wVHhZywjbhUWEy8icMCGNCUdiBlq3r+xafL549HQ5jH+an+1y+LlYBifuxAvRN/lVVVOlwlCkdVm9NOL5BE4wkQ2SMlDZU97hX86EilU/lUmkQUztTE6mx1EEPh7OmdqBtAvv8HdWpbrJS6tJj3n0CWdM6busNzRV3S9KTYhqvNiqWmuroiKgYhshMjmhTh9ptWhsF7970j/SbMrsPE1suR5z7DMC+P/Hs+y7ijrQAlhyAgccjbhjPygfeBTjzhNqy28EdkUh8C+DU9+z2v/oyeH791OncxHOs5y2AtTc7nb/f73TWPkD/qwBnjX8BoJ98VQNcC+8AAAAcaURPVAAAAAIAAAAAAAAACgAAACgAAAAKAAAACgAAAFC91KuHAAAAHElEQVQ4EWJ4//4D2YiBbJ1AjaOaSQz5IRpgAAAAAP//Zj9XwQAAABlJREFUY3j//gPZiIFsnUCNo5pJDPkhGmAA15NiHWOru6gAAAAASUVORK5CYII="

local OS_BUBBLE_LEFT_IMAGE = "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"

local OS_BUBBLE_RIGHT_IMAGE = "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"

--[[
userType 1 左边用户
userType 2 右边用户
messageType 1 文本
messageType 2 图片
messageType 3 选择
]] --

local function getHotspotExposureTrackLink(data, index)
    if (data == nil or index == nil) then
        return nil
    end
    local hotspotTrackLinkTable = data.hotspotTrackLink
    if (hotspotTrackLinkTable == nil) then
        return nil
    end
    local indexHotspotTrackLinkTable = hotspotTrackLinkTable[index]
    if (indexHotspotTrackLinkTable == nil) then
        return nil
    end
    return indexHotspotTrackLinkTable.exposureTrackLink
end

local function getHotspotClickTrackLink(data, index)
    if (data == nil or index == nil) then
        return nil
    end
    local hotspotTrackLinkTable = data.hotspotTrackLink
    if (hotspotTrackLinkTable == nil) then
        return nil
    end
    local indexHotspotTrackLinkTable = hotspotTrackLinkTable[index]
    if (indexHotspotTrackLinkTable == nil) then
        return nil
    end
    return indexHotspotTrackLinkTable.clickTrackLink
end

local function linkUrl(data) --获取linkUrl
    if (data == nil) then
        return nil
    end
    local link = data.link
    if (link ~= nil and string.match(tostring(link), "http") == "http") then
        return link
    else
        return nil
    end
end

local function closeView()
    if Native:getCacheData(bubble.id) == tostring(eventTypeShow) then
        Native:widgetEvent(eventTypeClose, bubble.id, adTypeName, actionTypeNone, "")
        Native:deleteBatchCacheData({ bubble.id })
    end
    Native:destroyView()
end

local function clickView(url, ise)
    Native:widgetEvent(eventTypeClick, bubble.id, adTypeName, actionTypeOpenUrl, url)
    local clickLinkUrl = getHotspotClickTrackLink(bubble.data, 1)
    if (clickLinkUrl ~= nil) then
        Native:get(clickLinkUrl)
    end
    if (bubble.launchPlanId ~= nil) then
        osTrack(bubble.launchPlanId, 3, 2)
    end
end

local function registerWindow()
    local nativeWindow = nil
    if System.ios() then
        nativeWindow = NativeWindow()
    else
        nativeWindow = nativeWindow
    end
    local callbackTable = {
        onShow = function()
        end,
        onHide = function()
            if (System.ios()) then
                closeView()
            end
        end,
        onHome = function()
            closeView()
        end
    }
    if (nativeWindow == nil and System.android()) then
        nativeWindow = window
    end
    if (nativeWindow == nil) then
        return
    end
    nativeWindow:callback(callbackTable)
    return nativeWindow
end

local function getMessagesTable(data)
    if (data == nil) then
        return nil
    end
    local contentDataTable = data.data
    if (contentDataTable == nil) then
        return nil
    end
    return contentDataTable.messages
end

local function scaleAnim(scale)
    local anim = Animation():scale(scale):duration(0.2)
    return anim
end

local function startViewScaleAnim(view, scale, table)
    if (view == nil) then
        return
    end
    if table ~= nil then
        scaleAnim(scale):with(view):callback(table):start()
    else
        scaleAnim(scale):with(view):start()
    end
end

local function moveAnim(x, y)
    local anim = Animation():translation(x, y):duration(0.5):reverses(true):repeatCount(10000)
    return anim
end

local function startViewMoveAnim(view, x, y, table)
    if (view == nil) then
        return
    end
    if table ~= nil then
        moveAnim(x, y):with(view):callback(table):start()
    else
        moveAnim(x, y):with(view):start()
    end
end

--延时回调--
local function performWithDelay(callback, delay)
    if callback ~= nil and delay ~= nil then
        local timer = Timer()
        timer:interval(delay)
        timer:repeatCount(false)
        timer:delay(delay / 1000)
        timer:callback(callback)
        timer:start()
        return timer
    end
end

local function getScrollViewLocation(data)
    if (data == nil) then
        return 0, 0, 0, 0
    end
    local contentDataTable = data.data
    if (contentDataTable == nil) then
        return 0, 0, 0, 0
    end

    --现在服务器不传位置，固定位置显示
    contentDataTable.width = 0.354
    contentDataTable.ratio = 0.66
    contentDataTable.positionX = 0.0
    contentDataTable.positionY = 0.17

    local screenWidth, screenHeight = System.screenSize()
    local width = 0
    local height = 0
    local x = 0
    local y = 0
    local scaleWidth = contentDataTable.width
    if (scaleWidth ~= nil) then
        width = math.max(screenWidth, screenHeight) * scaleWidth
    end
    --忽略服务器长宽比，采用设计高
    height = math.min(screenWidth, screenHeight) * 247.0 / 375.0
    local scaleX = contentDataTable.positionX
    if (scaleX ~= nil) then
        x = math.max(screenWidth, screenHeight) * scaleX
    end
    local scaleY = contentDataTable.positionY
    if (scaleY ~= nil) then
        y = math.min(screenWidth, screenHeight) * scaleY
    end
    bubble.x = x
    bubble.y = y
    bubble.width = width
    bubble.height = height
    bubble.scale = width / 236.5
    bubble.textDefaultWidth = 141 * bubble.scale
    return x, y, width, height
end

local function createUserTypeLeftWithMessageText(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local userParent = View()
    local pos = 0;
    local icon = Image(Native)
    icon:image("os_bubble_item_icon_bg")
    icon:placeHolderImage("os_bubble_item_icon_bg")
    icon:frame(0, 18 * bubble.scale, 32 * bubble.scale, 32 * bubble.scale)
    icon:cornerRadius(8 * bubble.scale)

    local nameView = Label(Native)
    nameView:margin(37 * bubble.scale, 17 * bubble.scale, 0, 0)
    nameView:textColor(0xFFFFFF)
    nameView:textSize(12)

    local message = Label(Native)
    message:margin(37 * bubble.scale, 39 * bubble.scale, 41 * bubble.scale, 0)
    message:maxLines(100)
    message:textColor(OS_BUBBLE_TEXT_COLOR)
    message:textSize(12)
    message:backgroundColor("os_game_message_left_bg")
    message:anchorPoint(0, 0)
    message:scale(0)
    userParent:onLayout(function()
        message:backgroundColor(0xFFFFFF)
        message:backgroundColor("os_game_message_left_bg")
    end)
    startViewScaleAnim(message, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(message, 1.0)
        end,
        onPause = function()
        end,
        onResume = function()
        end,
    })
    local avatar = data.avatar
    if (avatar ~= nil) then
        icon:image(avatar)
    end
    local name = data.name
    if (name ~= nil) then
        nameView:text(name)
        if nameView.textShadow then
            nameView:textShadow(0x666666, 5)
        end
    end
    local content = data.content
    if (content ~= nil) then
        message:text(content)
    end
    local marginView = View()
    marginView:margin(bubble.scrollviewWidth, 0, 0, 0)
    userParent:addView(marginView)
    userParent:addView(icon)
    userParent:addView(nameView)
    userParent:addView(message)
    bubbleIndex = bubbleIndex + 1

    userParent:onClick(function()
        createNextBubbleMessage(bubble.messagesTable)
    end)
    return userParent
end

local function createUserTypeLeftWithMessageTextIOS(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local userParent = ThroughView()
    userParent:frame(0, 0, bubble.scrollviewWidth, bubble.height * 0.5)

    local icon = Image(Native)
    icon:cornerRadius(8 * bubble.scale)
    icon:placeHolderImage(Data(OS_BUBBLE_DEFAULT_IMAGE))
    icon:stretch(5, 5)
    icon:frame(0, 18 * bubble.scale, 32 * bubble.scale, 32 * bubble.scale)

    local nameView = Label(Native)
    nameView:frame(37 * bubble.scale, 17 * bubble.scale, bubble.scrollviewWidth - 37 * bubble.scale, 20 * bubble.scale)
    nameView:textColor(0xFFFFFF)
    nameView:textSize(12)

    local messageBackground = ThroughView()
    --messageBackground:backgroundColor(0x0000FF)
    messageBackground:anchorPoint(0, 0)
    userParent:addView(messageBackground)

    local messageBubbleImage = Image(Native)
    messageBubbleImage:placeHolderImage(Data(OS_BUBBLE_LEFT_IMAGE))
    messageBubbleImage:image(Data(OS_BUBBLE_LEFT_IMAGE))
    messageBubbleImage:stretch(22, 16)
    messageBubbleImage:scaleType(ScaleType.FIT_XY)
    messageBackground:addView(messageBubbleImage)

    local message = Label(Native)
    message:frame(37 * bubble.scale, 39 * bubble.scale, 41 * bubble.scale, 0)
    message:lines(0)
    message:textColor(OS_BUBBLE_TEXT_COLOR)
    message:textSize(12)
    messageBackground:addView(message)

    local content = data.content
    if (content ~= nil) then
        message:text(content)
    else
        return nil
    end

    textWidth, textHeight = Native:stringSizeWithWidth(message:text(), bubble.textDefaultWidth, 12)
    message:frame(bubbleAngleWidth + bubbleImageSpace, bubbleImageSpace, textWidth, textHeight)
    messageBubbleImage:frame(0, 0, textWidth + bubbleImageSpace * 2 + bubbleAngleWidth, textHeight + bubbleImageSpace * 2)
    messageBackground:frame(37 * bubble.scale, 39 * bubble.scale, textWidth + bubbleImageSpace * 2 + bubbleAngleWidth, textHeight + bubbleImageSpace * 2)
    userParent:height(messageBackground:y() + messageBackground:height())

    messageBackground:scale(0)
    startViewScaleAnim(messageBackground, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(messageBackground, 1.0)
        end,
        onPause = function()
        end,
        onResume = function()
        end,
    })
    local avatar = data.avatar
    if (avatar ~= nil) then
        icon:image(avatar)
    end
    local name = data.name
    if (name ~= nil) then
        nameView:text(name)
        if nameView.textShadow then
            nameView:textShadow(0x666666, 5)
        end
    end

    userParent:addView(icon)
    userParent:addView(nameView)
    userParent:addView(messageBackground)
    bubbleIndex = bubbleIndex + 1
    return userParent
end

local function createUserTypeLeftWithMessageImage(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local userParent = View()

    local icon = Image(Native)
    icon:image("os_bubble_item_icon_bg")
    icon:placeHolderImage("os_bubble_item_icon_bg")
    icon:frame(0, 18 * bubble.scale, 32 * bubble.scale, 32 * bubble.scale)
    icon:cornerRadius(8.0 * bubble.scale)

    local nameView = Label(Native)
    nameView:margin(37 * bubble.scale, 17 * bubble.scale, 0, 0)
    nameView:textColor(0xFFFFFF)
    nameView:textSize(12)

    local prompt = Image(Native)
    prompt:size(33 * bubble.scale, 33 * bubble.scale)
    prompt:image(OS_ICON_BUBBLE_PROMPT_LEFT)
    prompt:scaleType(ScaleType.FIT_CENTER)
    prompt:hide()

    local messageView = View()
    messageView:padding(scale, scale, scale, scale)
    messageView:borderColor(OS_BUBBLE_TEXT_COLOR)
    messageView:borderWidth(scale)
    messageView:cornerRadius(13.0)

    local message = Image(Native)
    message:image("os_bubble_item_bg")
    message:placeHolderImage("os_bubble_item_bg")
    message:cornerRadius(13.0)

    messageView:addView(message)

    local messageWidth = 141 * bubble.scale
    local messageHeight
    local aspectRatio = data.aspectRatio
    if (aspectRatio == nil) then
        aspectRatio = 2.5
    end

    local content = data.content
    if (content ~= nil) then
        local dataWidth = content.width
        if dataWidth < messageWidth then
            messageWidth = dataWidth
        end
        aspectRatio = content.width * 1.0 / content.height
    end

    messageHeight = messageWidth / aspectRatio
    messageView:frame(37 * bubble.scale, 39 * bubble.scale, messageWidth, messageHeight)
    message:frame(0, 0, messageWidth - 2 * scale, messageHeight - 2 * scale)
    local promptTop = messageHeight * 0.85 + 39 * bubble.scale
    -- prompt:margin(162 * bubble.scale, promptTop, 0, 0)

    local promptTop = messageView:y() + messageView:height() - 17 * bubble.scale
    prompt:xy(messageView:x() + messageView:width() - 17 * bubble.scale, promptTop)

    if data.link ~= nil and string.match(tostring(data.link), "http") == "http" then
        performWithDelay(function()
            prompt:show()
            startViewMoveAnim(prompt, -prompt:width() * 0.3, -prompt:height() * 0.3, nil)
        end, promptShowTime)
        messageView:onClick(function()
            clickView(data.link, data.id)
            prompt:hide()
        end)
    end
    userParent:addView(icon)
    userParent:addView(nameView)
    userParent:addView(messageView)
    userParent:addView(prompt)
    local avatar = data.avatar
    if (avatar ~= nil) then
        icon:image(avatar)
    end
    local name = data.name
    if (name ~= nil) then
        nameView:text(name)
        if nameView.textShadow then
            nameView:textShadow(0x666666, 5)
        end
    end
    local contentImageUrl = data.content.fileUrl
    if (contentImageUrl ~= nil) then
        message:image(contentImageUrl, function(status)
            if status == true then
            end
        end)
    end
    bubbleIndex = bubbleIndex + 1
    userParent:frame(0, 0, bubble.scrollviewWidth, 52 * bubble.scale + messageHeight + 2 * scale)

    messageView:anchorPoint(0, 0)
    messageView:scale(0)
    startViewScaleAnim(messageView, bubbleAnimScale, {
        onStart = function()
        end,
        onEnd = function()
            startViewScaleAnim(messageView, 1.0, {
                onEnd = function()
                end
            })
        end,
    })
    userParent:onClick(function()
        createNextBubbleMessage(bubble.messagesTable)
    end)
    return userParent
end

local function createUserTypeLeftWithMessageImageIOS(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local userParent = ThroughView()
    userParent:frame(0, 0, bubble.scrollviewWidth, bubble.height * 0.5)

    local icon = Image(Native)
    icon:placeHolderImage(Data(OS_BUBBLE_DEFAULT_IMAGE))
    icon:stretch(5, 5)
    icon:frame(0, 18 * bubble.scale, 32 * bubble.scale, 32 * bubble.scale)
    icon:cornerRadius(8.0 * bubble.scale)

    local nameView = Label(Native)
    nameView:frame(37 * bubble.scale, 17 * bubble.scale, bubble.width - 37 * bubble.scale, 20 * bubble.scale)
    nameView:textColor(0xFFFFFF)
    nameView:textSize(12)

    local prompt = Image(Native)
    prompt:size(33 * bubble.scale, 30 * bubble.scale)
    prompt:placeHolderImage(Data(OS_BUBBLE_PROMPT))
    prompt:image(OS_ICON_BUBBLE_PROMPT_LEFT)
    prompt:scaleType(ScaleType.FIT_XY)
    prompt:hide()

    local message = Image(Native)
    message:placeHolderImage(Data(OS_BUBBLE_DEFAULT_IMAGE))
    message:stretch(5, 5)
    message:anchorPoint(0, 0)
    message:cornerRadius(13.0)
    message:borderColor(OS_BUBBLE_TEXT_COLOR)
    message:borderWidth(1)

    local messageWidth = 141 * bubble.scale
    local messageHeight
    local aspectRatio = data.aspectRatio
    if (aspectRatio == nil) then
        aspectRatio = 2.5
    end

    local content = data.content
    if (content ~= nil) then
        local dataWidth = content.width
        if dataWidth < messageWidth then
            messageWidth = dataWidth
        end
        aspectRatio = content.width * 1.0 / content.height
    end

    messageHeight = messageWidth / aspectRatio
    message:frame(37 * bubble.scale, 39 * bubble.scale, messageWidth, messageHeight)
    local promptTop = message:y() + message:height() - 17 * bubble.scale
    prompt:xy(message:x() + message:width() - 17 * bubble.scale, promptTop)
    userParent:frame(0, 0, bubble.width, prompt:y() + prompt:height())

    if data.link ~= nil and string.match(tostring(data.link), "http") == "http" then
        performWithDelay(function()
            prompt:show()
            startViewMoveAnim(prompt, -prompt:width() * 0.3, -prompt:height() * 0.3, nil)
        end, promptShowTime)
        message:onClick(function()
            clickView(data.link, data.id)
            prompt:hide()
        end)
    end

    message:scale(0)
    startViewScaleAnim(message, bubbleAnimScale, {
        onEnd = function()
            startViewScaleAnim(message, 1.0)
        end,
    })

    userParent:addView(icon)
    userParent:addView(nameView)
    userParent:addView(message)
    userParent:addView(prompt)

    local avatar = data.avatar
    if (avatar ~= nil) then
        icon:image(avatar)
    end
    local name = data.name
    if (name ~= nil) then
        nameView:text(name)
        if nameView.textShadow then
            nameView:textShadow(0x666666, 5)
        end
    end
    local contentImageUrl = data.content.fileUrl
    if (contentImageUrl ~= nil) then
        message:image(contentImageUrl, function(status)
            if status == true then
            end
        end)
    end
    bubbleIndex = bubbleIndex + 1
    return userParent
end

local function createUserTypeRightWithMessageText(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local pos = 0;
    local userParent = View()

    local message = Label(Native)
    message:textColor(OS_BUBBLE_TEXT_COLOR)
    message:margin(76 * bubble.scale, 19 * bubble.scale, 0, 0)
    message:maxLines(100)
    message:textSize(12)
    message:align(Align.RIGHT)

    message:backgroundColor("os_game_message_right_bg")
    message:anchorPoint(bubble.width, 40)
    message:scale(0)
    userParent:onLayout(function()
        pos = pos + 1;
        if (pos <= 2) then
            message:backgroundColor(0xFFFFFF)
            message:backgroundColor("os_game_message_right_bg")
        end
    end)
    startViewScaleAnim(message, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(message, 1.0)
        end,
        onPause = function()
        end,
        onResume = function()
        end,
    })
    userParent:addView(message)
    if (data ~= nil) then
        local content = data.content
        if (content ~= nil) then
            message:text(content)
        end
    end
    bubbleIndex = bubbleIndex + 1
    userParent:onClick(function()
        createNextBubbleMessage(bubble.messagesTable)
    end)
    return userParent
end

local function createUserTypeRightWithMessageTextIOS(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end

    local userParent = View()
    userParent:frame(0, 0, bubble.scrollviewWidth, bubble.height * 0.5)

    local messageBackground = ThroughView()
    messageBackground:anchorPoint(1, 0)
    userParent:addView(messageBackground)

    local messageBubbleImage = Image(Native)
    messageBubbleImage:placeHolderImage(Data(OS_BUBBLE_RIGHT_IMAGE))
    messageBubbleImage:image(Data(OS_BUBBLE_RIGHT_IMAGE))
    messageBubbleImage:stretch(16, 16)
    messageBubbleImage:scaleType(ScaleType.FIT_XY)
    messageBackground:addView(messageBubbleImage)

    local message = Label(Native)
    message:frame(5 * bubble.scale, 19 * bubble.scale, 41 * bubble.scale, 0)
    message:lines(0)
    message:textColor(OS_BUBBLE_TEXT_COLOR)
    message:textSize(12)
    messageBackground:addView(message)

    local content = data.content
    if (content ~= nil) then
        message:text(content)
    else
        return nil
    end

    textWidth, textHeight = Native:stringSizeWithWidth(message:text(), bubble.textDefaultWidth, 12)
    message:frame(bubbleImageSpace, bubbleImageSpace, textWidth, textHeight)
    messageBubbleImage:frame(0, 0, textWidth + bubbleImageSpace * 2 + bubbleAngleWidth, textHeight + bubbleImageSpace * 2)
    messageBackground:frame(bubble.scrollviewWidth - messageBubbleImage:width(), 19, messageBubbleImage:width(), messageBubbleImage:height())
    userParent:height(messageBackground:y() + messageBackground:height())

    messageBackground:scale(0)
    startViewScaleAnim(messageBackground, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(messageBackground, 1.0)
        end,
        onPause = function()
        end,
        onResume = function()
        end,
    })

    if (data ~= nil) then
        local content = data.content
        if (content ~= nil) then
            message:text(content)
        end
    end
    bubbleIndex = bubbleIndex + 1
    return userParent
end

local function createUserTypeRightWithMessageImage(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end
    local userParent = View()
    local prompt = Image(Native)
    prompt:size(33 * bubble.scale, 33 * bubble.scale)
    prompt:scaleType(ScaleType.FIT_CENTER)
    prompt:image(OS_ICON_BUBBLE_PROMPT_RIGHT)
    prompt:hide()

    local messageView = View()
    messageView:align(Align.RIGHT)
    messageView:padding(bubble.scale, bubble.scale, bubble.scale, bubble.scale)
    messageView:borderColor(OS_BUBBLE_TEXT_COLOR)
    messageView:borderWidth(scale)
    messageView:cornerRadius(13.0)

    local message = Image(Native)
    message:image("os_bubble_item_bg")
    message:placeHolderImage("os_bubble_item_bg")
    message:cornerRadius(13.0)

    messageView:addView(message)

    local messageWidth = 141 * bubble.scale
    local messageHeight
    local aspectRatio = data.aspectRatio
    if (aspectRatio == nil) then
        aspectRatio = 2.5
    end

    local content = data.content
    if (content ~= nil) then
        local dataWidth = content.width
        if dataWidth < messageWidth then
            messageWidth = dataWidth
        end
        aspectRatio = content.width * 1.0 / content.height
    end

    messageHeight = messageWidth / aspectRatio
    local promptTop = messageHeight * 0.85 + 19 * bubble.scale
    prompt:margin(70 * bubble.scale, promptTop, 0, 0)
    messageView:size(messageWidth, messageHeight)
    messageView:margin(86 * bubble.scale, 19 * bubble.scale, 6 * bubble.scale, 0)
    message:size(messageWidth - 2 * bubble.scale, messageHeight - 2 * bubble.scale)
    if data.link ~= nil and string.match(tostring(data.link), "http") == "http" then
        performWithDelay(function()
            prompt:show()
            startViewMoveAnim(prompt, prompt:width() * 0.3, -prompt:height() * 0.3, nil)
        end, promptShowTime)
        messageView:onClick(function()
            clickView(data.link, data.id)
            prompt:hide()
        end)
    end
    if (data ~= nil) then
        local contentImageUrl = data.content.fileUrl
        if (contentImageUrl ~= nil) then
            message:image(contentImageUrl, function(status)
                if status == true then
                end
            end)
        end
    end
    userParent:addView(messageView)
    userParent:addView(prompt)
    bubbleIndex = bubbleIndex + 1
    userParent:frame(0, 0, bubble.scrollviewWidth, 52 * bubble.scale + messageHeight + 2 * scale)

    messageView:anchorPoint(bubble.width, -40)
    messageView:scale(0)
    startViewScaleAnim(messageView, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(messageView, 1.0, {
                onEnd = function()
                end
            })
        end
    })
    userParent:onClick(function()
        createNextBubbleMessage(bubble.messagesTable)
    end)
    return userParent
end

local function createUserTypeRightWithMessageImageIOS(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end

    local userParent = ThroughView()
    userParent:frame(0, 0, bubble.scrollviewWidth, bubble.height * 0.5)

    local prompt = Image(Native)
    prompt:size(33 * bubble.scale, 30 * bubble.scale)
    prompt:placeHolderImage(Data(OS_BUBBLE_PROMPT))
    prompt:image(OS_ICON_BUBBLE_PROMPT_RIGHT)
    prompt:scaleType(ScaleType.FIT_XY)
    prompt:hide()

    local message = Image(Native)
    message:placeHolderImage(Data(OS_BUBBLE_DEFAULT_IMAGE))
    message:cornerRadius(13.0)
    message:borderColor(OS_BUBBLE_TEXT_COLOR)
    message:borderWidth(1)
    local messageWidth = 141 * bubble.scale
    local messageHeight
    local aspectRatio = data.aspectRatio
    if (aspectRatio == nil) then
        aspectRatio = 2.5
    end

    local content = data.content
    if (content ~= nil) then
        local dataWidth = content.width
        if dataWidth < messageWidth then
            messageWidth = dataWidth
        end
        aspectRatio = content.width * 1.0 / content.height
    end

    messageHeight = messageWidth / aspectRatio

    message:size(messageWidth, messageHeight)
    --message:margin(86 * bubble.scale, 19 * bubble.scale, 0, 0)
    message:anchorPoint(1, 0)
    message:frame(bubble.scrollviewWidth - messageWidth, 19 * bubble.scale, messageWidth, messageHeight)

    local promptTop = message:y() + message:height() - 17 * bubble.scale
    prompt:xy(message:x() - 16 * bubble.scale, promptTop)

    userParent:height(prompt:y() + prompt:height())

    if data.link ~= nil and string.match(tostring(data.link), "http") == "http" then
        performWithDelay(function()
            prompt:show()
            startViewMoveAnim(prompt, prompt:width() * 0.3, -prompt:height() * 0.3, nil)
        end, promptShowTime)
        message:onClick(function()
            clickView(data.link, data.id)
            prompt:hide()
        end)
    end

    message:scale(0)
    startViewScaleAnim(message, bubbleAnimScale, {
        onStart = function()
        end,
        onCancel = function()
        end,
        onEnd = function()
            startViewScaleAnim(message, 1.0)
        end,
        onPause = function()
        end,
        onResume = function()
        end,
    })
    if (data ~= nil) then
        local contentImageUrl = data.content.fileUrl
        if (contentImageUrl ~= nil) then
            message:image(contentImageUrl, function(status)
                if status == true then
                end
            end)
        end
    end
    userParent:addView(message)
    userParent:addView(prompt)
    bubbleIndex = bubbleIndex + 1
    return userParent
end

local function createParent()
    local luaView
    if System.android() then
        luaView = View()
    else
        luaView = ThroughView()
    end
    local screenWidth, screenHeight = System.screenSize()
    luaView:frame(0, 0, screenWidth, screenHeight)
    return luaView
end

local function createScrollView(data)
    local scrollviewParent = View()
    scrollviewParent:frame(bubble.x, bubble.y, bubble.width, bubble.height)
    --scrollviewParent:backgroundColor(0xFF0000)

    local scrollview = ScrollView()

    scrollview:frame(17 * bubble.scale, 0, bubble.width - 17 * bubble.scale, bubble.height)
    bubble.scrollviewWidth = scrollview:width()
    scrollview:clipsToBounds(true)
    scrollview:masksToBounds(true)
    scrollview:contentSize(bubble.width, bubble.height * 2)
    if (System.android()) then
        scrollview:orientation(0)
    end
    --scrollview:backgroundColor(0x00FF00)
    scrollview:callback {
        Scrolling = function()
            --            print("=response=scrolling=");
        end,
        ScrollBegin = function()
            --            print("=response=ScrollBegin=");
        end,
        ScrollEnd = function()
            --            print("=response=ScrollEnd=");
        end
    };

    scrollviewParent:addView(scrollview)

    return scrollviewParent, scrollview
end

local function createBackView(data)
    local backView = Image(Native)
    backView:frame(bubble.x + bubble.width, bubble.y - 26 * bubble.scale, 26 * bubble.scale, 26 * bubble.scale)
    backView:placeHolderImage(Data(OS_BUBBLE_CLOSE))
    backView:image(OS_ICON_CLOSE)
    backView:onClick(function()
        closeView()
    end)
    local isShowClose = data.data.isShowClose
    if isShowClose == true then
        backView:show()
    else
        backView:hide()
    end
    return backView
end

local function createAdvertisingView(data)
    local advertisingView = nil
    if (System:ios()) then
        advertisingView = ThroughView()
    else
        advertisingView = View()
    end

    local advertisingViewWidth = 48 * bubble.scale
    local advertisingViewHeight = 20 * bubble.scale
    advertisingView:frame(bubble.x + 17 * bubble.scale, bubble.y + bubble.height + 10 * bubble.scale, advertisingViewWidth, advertisingViewHeight)
    advertisingView:backgroundColor(0x020202, 0.5)

    local advertisingLabel = Label()
    advertisingLabel:frame(0, 0, advertisingViewWidth, advertisingViewHeight)
    advertisingLabel:text("广告")
    advertisingLabel:textAlign(TextAlign.CENTER)
    advertisingLabel:textColor(0xF4F4F4)
    advertisingView:addView(advertisingLabel)

    local isShowAds = data.data.isShowAds
    if isShowAds == true then
        advertisingView:show()
    else
        advertisingView:hide()
    end
    return advertisingView
end

local function getMessageType(messageData) --1左边 text 2.左图 .3.右 text 4.右图 5.选择器
    if (messageData == nil) then
        return -1
    end
    local userType = messageData.userType
    local messageType = messageData.messageType
    if (userType == nil or messageType == nil) then
        return -1
    end
    if (messageType == 3) then
        return 5
    end
    if (userType == 1 and messageType == 1) then
        return 1
    elseif (userType == 1 and messageType == 2) then
        return 2
    elseif (userType == 2 and messageType == 1) then
        return 3
    elseif (userType == 2 and messageType == 2) then
        return 4
    end
    return -1
end

local function delayTimeCount(type)
    if (type == 1) then
        delayTime = delayTime + 2500
    elseif (type == 2) then
        delayTime = delayTime + 3500
    elseif (type == 3) then
        delayTime = delayTime + 2500
    elseif (type == 4) then
        delayTime = delayTime + 3500
    elseif (type == 5) then
        delayTime = delayTime + 2500
    end
end

local function createBubbleOption(message, k)
    if (message == nil) then
        return nil
    end
    local type = getMessageType(message)
    local optionView
    if (type == 1) then
        if (System.ios()) then
            optionView = createUserTypeLeftWithMessageTextIOS(message, k)
        else
            optionView = createUserTypeLeftWithMessageText(message, k)
        end
    elseif (type == 2) then
        if (System.ios()) then
            optionView = createUserTypeLeftWithMessageImageIOS(message, k)
        else
            optionView = createUserTypeLeftWithMessageImage(message, k)
        end
    elseif (type == 3) then
        if (System.ios()) then
            optionView = createUserTypeRightWithMessageTextIOS(message, k)
        else
            optionView = createUserTypeRightWithMessageText(message, k)
        end
    elseif (type == 4) then
        if (System.ios()) then
            optionView = createUserTypeRightWithMessageImageIOS(message, k)
        else
            optionView = createUserTypeRightWithMessageImage(message, k)
        end
    elseif (type == 5) then
        optionView = createUserMessageSelect(message, k)
    end
    return optionView, type
end

local function createAllBubbleOption(messages)
    if (messages == nil) then
        return
    end
    local lastIndex
    for k, v in pairs(messages) do
        local optionView = createBubbleOption(v, k)
        if (optionView ~= nil) then
            bubble.views[bubbleIndex] = optionView
            bubble.scrollview:addView(optionView)
            bubble.scrollview:fullScroll(1)
        end
        lastIndex = k
    end

    if lastIndex ~= nil and lastIndex > 0 and messages[lastIndex].messageType == 3 then
        local buttonMessage = messages[lastIndex]
        if buttonMessage.messageButtons[1].inner_messages ~= nil and buttonMessage.messageButtons[1].inner_messages[1] ~= nil and buttonMessage.messageButtons[1].inner_messages[1].messageType == 2 then
            if (lastIndex + 1 == bubbleIndex + 1) then
                local leftBtnClickFunction = bubble.leftBtnClickFunction
                leftBtnClickFunction()
            end
        elseif buttonMessage.messageButtons[2].inner_messages ~= nil and buttonMessage.messageButtons[2].inner_messages[1] ~= nil and buttonMessage.messageButtons[2].inner_messages[1].messageType == 2 then
            if (lastIndex + 1 == bubbleIndex + 1) then
                local rightBtnClickFunction = bubble.rightBtnClickFunction
                rightBtnClickFunction()
            end
        end
    end
end

local function addBubbleOption(messages)
    if (messages == nil or table_leng(messages) <= 0) then
        return
    end
    print("LuaView addBubbleOption 11")
    local lastIndex
    loadBubbleCount = loadBubbleCount + 1
    if loadBubbleCount > totalBubbleCount then
        return
    end
    print("LuaView addBubbleOption 22")
    local data = messages[loadBubbleCount]
    local optionView, type = createBubbleOption(data, loadBubbleCount)
    if (optionView ~= nil) then
        bubble.views[bubbleIndex] = optionView
        bubble.scrollview:addView(optionView)
        bubble.scrollview:fullScroll(1)
    end
    print("LuaView addBubbleOption 33")
    bubble.loadTimer = performWithDelay(function()
        addBubbleOption(messages)
    end, data.duration * 1000)
    if (bubble.launchPlanId ~= nil and showlaunchPlanCount == 0) then
        if (type == 5 or linkUrl(messages[loadBubbleCount]) ~= nil) then
            showlaunchPlanCount = showlaunchPlanCount + 1
            osTrack(bubble.launchPlanId, 2, 2)
        end
    end
    if 1 == 1 then
        return
    end

    for k, v in pairs(messages) do
        performWithDelay(function()
            local optionView = createBubbleOption(v, k)
            if (optionView ~= nil) then
                bubble.views[bubbleIndex] = optionView
                bubble.scrollview:addView(optionView)
                bubble.scrollview:fullScroll(1)
            end
        end, delayTime)
        delayTimeCount(getMessageType(v))
        lastIndex = k
    end

    if lastIndex ~= nil and lastIndex > 0 and messages[lastIndex].messageType == 3 then
        local buttonMessage = messages[lastIndex]

        if buttonMessage.messageButtons[1].inner_messages ~= nil and buttonMessage.messageButtons[1].inner_messages[1] ~= nil and buttonMessage.messageButtons[1].inner_messages[1].messageType == 2 then
            performWithDelay(function()
                if (lastIndex + 1 == bubbleIndex + 1) then
                    local leftBtnClickFunction = bubble.leftBtnClickFunction
                    leftBtnClickFunction()
                end
            end, delayTime)
        elseif buttonMessage.messageButtons[2].inner_messages ~= nil and buttonMessage.messageButtons[2].inner_messages[1] ~= nil and buttonMessage.messageButtons[2].inner_messages[1].messageType == 2 then
            performWithDelay(function()
                if (lastIndex + 1 == bubbleIndex + 1) then
                    local rightBtnClickFunction = bubble.rightBtnClickFunction
                    rightBtnClickFunction()
                end
            end, delayTime)
        end
    end
end

local function showSelectButtonMessage(index, messages)

    bubbleIndex = index
    for i, view in pairs(bubble.views) do
        if i > bubbleIndex then
            view:removeFromSuper()
        end
    end

    if messages == nil then
        --外链屏蔽自动展开
        bubbleIndex = bubbleIndex + 1
        return
    end
    local sortMessages = {}
    for k, v in pairs(messages) do
        sortMessages[k + bubbleIndex] = v
    end

    delayTime = 0;
    bubble.buttonClick = true
    addBubbleOption(sortMessages)
end

function createUserMessageSelect(data, index) --左边用户云泡 显示问题
    if (index ~= bubbleIndex + 1) then
        return nil
    end

    local userParent = nil
    if (System.ios()) then
        userParent = ThroughView()
        userParent:frame(0, 0, bubble.scrollviewWidth, bubble.height * 0.5)
    else
        userParent = View()
    end

    local selectLeftView = GradientView()
    selectLeftView:frame(53 * scale, 18 * scale, 72 * scale, 24 * scale)
    -- selectLeftView:gradient(0xFF878A, 0xFC6BA8)
    selectLeftView:backgroundColor(0x1E1C19)
    selectLeftView:corner(12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale)
    selectLeftView:stroke(1, OS_BUBBLE_TEXT_COLOR)
    local selectLeftBtn = Label(Native)
    selectLeftBtn:frame(0, 0, 72 * scale, 24 * scale)
    selectLeftBtn:textAlign(TextAlign.CENTER)
    selectLeftBtn:textColor(OS_BUBBLE_TEXT_COLOR)
    selectLeftBtn:text(data.messageButtons[1].title)
    selectLeftBtn:cornerRadius(20)
    selectLeftBtn:textSize(12)
    selectLeftView:addView(selectLeftBtn)

    local selectRightView = GradientView()
    selectRightView:frame(135.7 * scale, 18 * scale, 72 * scale, 24 * scale)
    -- selectRightView:gradient(0xFF878A, 0xFC6BA8)
    selectRightView:backgroundColor(0x1E1C19)
    selectRightView:corner(12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale, 12 * scale)
    selectRightView:stroke(1, OS_BUBBLE_TEXT_COLOR)
    local selectRightBtn = Label(Native)
    selectRightBtn:frame(0, 0, 72 * scale, 24 * scale)
    selectRightBtn:textAlign(TextAlign.CENTER)
    selectRightBtn:textColor(OS_BUBBLE_TEXT_COLOR)
    selectRightBtn:text(data.messageButtons[2].title)
    selectRightBtn:textSize(12)
    selectRightView:addView(selectRightBtn)


    local leftBtnClickFunction = function()
        --TODO是否需要合并在一起，如果同时有数据怎么处理
        local linkUrl = linkUrl(data.messageButtons[1])
        if (linkUrl ~= nil) then
            clickView(linkUrl, data.id)
        end
    end
    bubble.leftBtnClickFunction = leftBtnClickFunction
    selectLeftBtn:onClick(leftBtnClickFunction)

    local rightBtnClickFunction = function()
        local linkUrl = linkUrl(data.messageButtons[2])
        if (linkUrl ~= nil) then
            clickView(linkUrl, data.id)
        end
    end
    bubble.rightBtnClickFunction = rightBtnClickFunction
    selectRightView:onClick(rightBtnClickFunction)

    if (System.ios()) then
        userParent:height(selectLeftView:y() + selectLeftView:height() + 10)
    else
        local marginView = View()
        marginView:margin(bubble.scrollviewWidth, 0, 0, 0)
        userParent:addView(marginView)
    end

    userParent:addView(selectLeftView)
    userParent:addView(selectRightView)
    bubbleIndex = bubbleIndex + 1
    return userParent
end

local function registerMedia() --监听屏幕方向
    local mediaPausedStatus = false;
    -- body
    -- 注册window callback通知
    local callbackTable = {
        --0: 竖屏小屏幕，1 竖屏全凭，2 横屏全屏
        onPlayerSize = function(type)
            if (bubble.luaview == nil) then
                return
            end
            if (type == 0) then
                bubble.luaview:hide()
            elseif (type == 1) then
                bubble.luaview:hide()
            elseif (type == 2) then
                bubble.luaview:show()
            end
        end,
        onMediaPause = function()
            bubble.luaview:hide()
            bubble.loadTimer:cancel()
            mediaPausedStatus = true
        end,
        onMediaPlay = function()
            if (Native:isPortraitScreen() == false) then
                bubble.luaview:show()
            end
            if (mediaPausedStatus == false) then
                return
            end
            mediaPausedStatus = false
            createNextBubbleMessage(bubble.messagesTable)
        end,
        onMediaProgress = function(progress)
            if bubble.startProgress == nil then
                bubble.startProgress = progress
            end
            if progress - bubble.startProgress >= bubbleShowTime then
                closeView()
                return
            end
            -- if progress - bubble.startProgress >= bubbleShowAllTime then
            --     if (bubble.data == nil) then
            --         return
            --     end
            --     local messagesTable = getMessagesTable(bubble.data)
            --     if (messagesTable == nil) then
            --         return
            --     end
            --     if allBubbleIsCreate == false then
            --         allBubbleIsCreate = true
            --         createAllBubbleOption(messagesTable)
            --     end
            -- end
        end
    }
    local media = Media()
    media:mediaCallback(callbackTable)
    media:startVideoTime()
    return media
end

local function initLoadTime(data)
    print("LuaView initLoadTime")
    local messageData = data.data.messages[loadBubbleCount]
    bubble.loadTimer = performWithDelay(function()
        loadBubbleCount = loadBubbleCount + 1
        bubble.tableView:reload()
        performWithDelay(function()
            bubble.tableView:scrollToCell(1, loadBubbleCount)
        end, 100)
        if loadBubbleCount < totalBubbleCount then
            initLoadTime(data)
        end
    end, messageData.duration * 1000)
end

function itemClick(data)
    if loadBubbleCount >= totalBubbleCount then
        return
    end

    if bubble.loadTimer ~= nil then
        bubble.loadTimer:cancel()
        loadBubbleCount = loadBubbleCount + 1
        bubble.tableView:reload()
        performWithDelay(function()
            bubble.tableView:scrollToCell(1, loadBubbleCount)
        end, 100)
        if loadBubbleCount < totalBubbleCount then
            initLoadTime(data)
        end
    end
end

local function onCreate(data)
    local showLinkUrl = getHotspotExposureTrackLink(data, 1)
    if (showLinkUrl ~= nil) then
        Native:get(showLinkUrl)
    end
    if (bubble.launchPlanId ~= nil) then
        osTrack(bubble.launchPlanId, 1, 2)
    end
    getScrollViewLocation(data)
    bubble.luaview = createParent()
    performWithDelay(function()
        bubble.backview = createBackView(data)
        bubble.luaview:addView(bubble.backview)
    end, 5000)
    totalBubbleCount = table_leng(data.data.messages)
    bubble.scrollviewParent, bubble.scrollview = createScrollView(data)
    bubble.luaview:addView(bubble.scrollviewParent)
    bubble.advertisingView = createAdvertisingView(data)
    bubble.luaview:addView(bubble.advertisingView)

    local messagesTable = getMessagesTable(data)
    if (messagesTable == nil) then
        return
    end
    bubble.messagesTable = messagesTable
    addBubbleOption(messagesTable)
    bubble.scrollviewParent:onClick(function()
        print("LuaView scrollviewParent:onClick")
        createNextBubbleMessage(bubble.messagesTable)
    end)

    if (Native:isPortraitScreen()) then
        bubble.luaview:hide()
    end
end

function createNextBubbleMessage(messagesTable)
    if loadBubbleCount > totalBubbleCount then
        return
    end

    if bubble.loadTimer ~= nil then
        print("LuaView scrollviewParent:onClick")
        bubble.loadTimer:cancel()
        addBubbleOption(messagesTable)
    end
end

local function setBubbleTime(data)
    bubbleShowTime = data.duration
    if bubbleShowTime > 3000 then
        bubbleShowAllTime = bubbleShowTime - 3000
    end
end

function show(args)
    --第二次调用show方法时，直接return
    if (args == nil or bubble.luaview ~= nil) then
        return
    end
    showlaunchPlanCount = 0
    local dataTable = args.data
    if (dataTable == nil) then
        return
    end
    bubble.launchPlanId = dataTable.launchPlanId
    bubble.id = dataTable.id

    setBubbleTime(dataTable)
    Native:widgetEvent(eventTypeShow, bubble.id, bubble.id, adTypeBubble, "") --todo 修改参数为table
    Native:saveCacheData(bubble.id, tostring(eventTypeShow))
    bubble.data = dataTable
    bubble.media = registerMedia()
    bubble.window = registerWindow()
    onCreate(dataTable)
    checkMqttHotspotToSetClose(dataTable, function()
        closeView()
    end)
end