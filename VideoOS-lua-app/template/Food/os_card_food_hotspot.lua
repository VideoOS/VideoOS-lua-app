--
-- Created by IntelliJ IDEA.
-- User: videojj_pls
-- Date: 2018/10/25
-- Time: 10:11 AM
-- To change this template use File | Settings | File Templates.
--
require "os_config"
require "os_string"
require "os_constant"
require "os_util"
require "os_track"
card = object:new()
local adTypeName = "card"
local scale = getScale()
local OS_ICON_WEDGE_CLOSE = "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"
local OS_ICON_CARD_IMAGE_BG = "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"

local collectStatusCollecting = 1 --未收集到所有卡牌
local collectStatusSuccess = 2 --收集到所有卡牌，但未领取
local collectStatusGet = 3 --收集领取成功
card.requestIds = {}
local function translationAnim(x, y)
    local anim = Animation():translation(x, y):duration(0.3)
    return anim
end

local function startViewTranslationAnim(view, x, y, table)
    if (view == nil) then
        return
    end
    if table ~= nil then
        translationAnim(x, y):with(view):callback(table):start()
    else
        translationAnim(x, y):with(view):start()
    end
end

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

local function closeView()
    for key, value in pairs(card.requestIds) do
        if (value ~= nil) then
            Native:abort(value)
        end
    end
    if Native:getCacheData(card.id) == tostring(eventTypeShow) then
        Native:widgetEvent(eventTypeClose, card.id, adTypeName, actionTypeNone, "")
        Native:deleteBatchCacheData({ card.id })
    end
    Native:destroyView()
end

local function getPortraitLocation(data)
    if (data == nil) then
        return 0, 0, 0, 0
    end
    local dataTable = data.data
    if (dataTable == nil) then
        return 0, 0, 0, 0
    end

    if (card.portraitWidth ~= nil and card.portraitHeight ~= nil and card.portraitX ~= nil and card.portraitY ~= nil) then
        return card.portraitX, card.portraitY, card.portraitWidth, card.portraitHeight
    end
    local screenWidth, screenHeight = System.screenSize()
    local videoWidth, videoHight = Native:getVideoSize(0)
    local sacleW = math.min(screenWidth, screenHeight) / math.max(screenWidth, screenHeight)
    local sacleH = videoHight / math.min(screenWidth, screenHeight)
    local width = 0
    local height = 0
    local x = 0
    local y = 0
    local scaleWidth = dataTable.width
    if (scaleWidth ~= nil) then
        width = math.max(screenWidth, screenHeight) * scaleWidth * sacleW
    end
    local ratio = dataTable.ratio
    if (ratio ~= nil) then
        height = width / ratio
    end
    local scaleX = dataTable.positionX
    if (scaleX ~= nil) then
        x = math.max(screenWidth, screenHeight) * scaleX * sacleW
    end
    local scaleY = dataTable.positionY
    if (scaleY ~= nil) then
        y = math.min(screenWidth, screenHeight) * scaleY * sacleH
    end
    card.portraitX = x
    card.portraitY = y
    card.portraitWidth = width
    card.portraitHeight = height
    return card.portraitX, card.portraitY, card.portraitWidth, card.portraitHeight
end

--获取横屏位置  ratio=1.253  dataTable.width=0.248  positionX=0.037  positionY=0.531
local function getLandscapeLocation(data)
    if (data == nil) then
        return 0, 0, 0, 0
    end
    local dataTable = data.data
    if (dataTable == nil) then
        return 0, 0, 0, 0
    end
    if (card.landscapeWidth ~= nil and card.landscapeHeight ~= nil and card.landscapeX ~= nil and card.landscapeY ~= nil) then
        return card.landscapeX, card.landscapeY, card.landscapeWidth, card.landscapeHeight
    end
    local screenWidth, screenHeight = System.screenSize()
    local width = 0
    local height = 0
    local x = 0
    local y = 0
    local scaleWidth = dataTable.width
    if (scaleWidth ~= nil) then
        width = math.max(screenWidth, screenHeight) * scaleWidth
    end
    local ratio = dataTable.ratio
    if (ratio ~= nil) then
        height = width / ratio
    end
    local scaleX = dataTable.positionX
    if (scaleX ~= nil) then
        x = math.max(screenWidth, screenHeight) * scaleX
    end
    local scaleY = dataTable.positionY
    if (scaleY ~= nil) then
        y = math.min(screenWidth, screenHeight) * scaleY
    end
    card.landscapeX = x
    card.landscapeY = y
    card.landscapeWidth = width
    card.landscapeHeight = height
    return card.landscapeX, card.landscapeY, card.landscapeWidth, card.landscapeHeight
end

local function getCardLocation(data, isPortrait) --设置当前容器大小
    if (isPortrait) then
        return getPortraitLocation(data)
    else
        return getLandscapeLocation(data)
    end
end

local function setLuaViewSize(luaview, isPortrait) --设置当前容器大小
    if (luaview == nil) then
        return
    end
    local screenWidth, screenHeight = System.screenSize()
    if (isPortrait) then
        local videoWidth, videoHight, y = Native:getVideoSize(0)
        if System.android() then
            y = 0.0
        end
        luaview:frame(0, y, math.min(screenWidth, screenHeight), videoHight)
    else
        luaview:frame(0, 0, math.max(screenWidth, screenHeight), math.min(screenWidth, screenHeight))
    end
end

local function setCardViewSize(data, cardView, isPortrait) --设置卡牌显示容器大小
    if (card == nil or data == nil) then
        return
    end
    local x, y, w, h = getCardLocation(data, isPortrait)
    cardView:frame(x, y, w, h)
end

local function setCardImageLayoutSize(data, cardImageLayout, cardImage, cardBgView, isPortrait)
    if (data == nil or cardImageLayout == nil or cardImage == nil or cardBgView == nil) then
        return
    end
    local x, y, w, h = 0, 0, 0, 0
    if (isPortrait) then
        w = card.portraitWidth * 0.515
        h = card.portraitHeight * 0.867
    else
        w = card.landscapeWidth * 0.515
        h = card.landscapeHeight * 0.867
    end
    cardImageLayout:frame(x, y, w, h)
    cardImage:frame(x, y, w, h)
    cardBgView:frame(x, y, w, h)
    cardImage:cornerRadius(3 * scale)
end

local function setCardAdsLayoutSize(data, cardAdsLabel, isPortrait)
    if (data == nil or cardAdsLabel == nil) then
        return
    end
    local w, h = 0, 0, 0, 0
    if (isPortrait) then
        w = card.portraitWidth * 0.176
        h = card.portraitHeight * 0.114
        cardAdsLabel:textSize(6)
    else
        w = card.landscapeWidth * 0.176
        h = card.landscapeHeight * 0.114
        cardAdsLabel:textSize(10)
    end
    cardAdsLabel:size(w, h)
    cardAdsLabel:alignBottom()
end

local function setCardCloseLayoutSize(data, cardCloseView, cardCloseImage, isPortrait)
    if (data == nil or cardCloseView == nil or cardCloseImage == nil) then
        return
    end
    local w, h = 0, 0
    if (isPortrait) then
        h = card.portraitHeight * 0.144
        w = h
    else
        h = card.landscapeHeight * 0.144
        w = h
    end
    cardCloseImage:size(w * 0.368, w * 0.368)
    cardCloseImage:align(Align.CENTER)
    cardCloseView:size(w, h)
    cardCloseView:cornerRadius(w / 2)

    if (System.android()) then
        cardCloseView:alignTopRight()
    else
        cardCloseView:alignTop()
        cardCloseView:alignRight()
    end
end

local function setCardFlexLayoutSize(data, cardFlexView, cardFlexLabel, isPortrait)
    if (data == nil or cardFlexView == nil or cardFlexLabel == nil) then
        return
    end
    local x, y, w, h = 0, 0, 0, 0
    if (isPortrait) then
        x = card.portraitWidth * 0.239
        y = card.portraitHeight * 0.364
        w = card.portraitWidth * 0.762
        h = card.portraitHeight * 0.387
        cardFlexLabel:textSize(8)
    else
        x = card.landscapeWidth * 0.239
        y = card.landscapeHeight * 0.364
        w = card.landscapeWidth * 0.762
        h = card.landscapeHeight * 0.387
        cardFlexLabel:textSize(11)
    end
    cardFlexLabel:frame(w * 0.4, 0, w, h)
    local corner = h / 2
    cardFlexView:frame(x, y, w, h)
    cardFlexView:corner(0, 0, corner, corner, corner, corner, 0, 0)
end

--屏幕旋转--
local function rotationScreen(isPortrait)
    setLuaViewSize(card.luaview, isPortrait)
    setCardViewSize(card.data, card.cardView, isPortrait)
    setCardImageLayoutSize(card.data, card.cardImageLayout, card.cardImageView, card.cardBgView, isPortrait)
    setCardAdsLayoutSize(card.data, card.cardAdsLabel, isPortrait)
    setCardCloseLayoutSize(card.data, card.cardCloseLayout, card.cardCloseImage, isPortrait)
    setCardFlexLayoutSize(card.data, card.cardFlexView, card.cardFlexLabel, isPortrait)
end

local function registerMedia()
    local media = Media()
    -- body
    -- 注册window callback通知
    local callbackTable = {
        --0: 竖屏小屏幕，1 竖屏全凭，2 横屏全屏
        onPlayerSize = function(type)
            if (type == 0) then
                rotationScreen(true)
            elseif (type == 1) then
                rotationScreen(true)
            elseif (type == 2) then
                rotationScreen(false)
            end
        end,
        onMediaPause = function()
            card.luaview:hide()
        end,
        onMediaPlay = function()
            card.luaview:show()
        end
    }
    media:mediaCallback(callbackTable)
    return media
end

--全局父控件
local function createLuaView(isPortrait)
    local luaView
    if System.android() then
        luaView = View()
    else
        luaView = ThroughView()
    end
    setLuaViewSize(luaView, isPortrait)
    return luaView
end

--显示卡牌大小控件
local function createCardView(data, isPortrait)
    local cardView = View()
    setCardViewSize(data, cardView, isPortrait)
    return cardView
end

--创建卡牌显示图片
local function createCardImageView(data, isPortrait)
    local cardImageLayout = View()
    local cardImageView = Image(Native)
    cardImageView:backgroundColor(OS_ICON_CARD_IMAGE_BG)
    cardImageView:scaleType(ScaleType.CENTER_CROP)
    local cardBgView = Image(Native)
    cardBgView:image(Data(OS_ICON_CARD_IMAGE_BG))
    cardBgView:scaleType(ScaleType.FIT_XY)
    setCardImageLayoutSize(data, cardImageLayout, cardImageView, cardBgView, isPortrait)
    return cardImageLayout, cardImageView, cardBgView
end

local function createCardAdsView(data, isPortrait)
    local cardAdsLabel = Label()
    local adsTag = "广告"
    cardAdsLabel:textColor(0x9B9B9B)
    cardAdsLabel:text(adsTag)
    cardAdsLabel:textAlign(TextAlign.CENTER)
    cardAdsLabel:backgroundColor(0x000000, 0.3)
    cardAdsLabel:cornerRadius(2)
    cardAdsLabel:alignBottom()
    setCardAdsLayoutSize(data, cardAdsLabel, isPortrait)
    return cardAdsLabel
end

local function createCardCloseView(data, isPortrait)
    local cardCloseView = View()
    cardCloseView:backgroundColor(0x000000, 0.3)

    local cardCloseImage = Image(Native)
    cardCloseImage:image(Data(OS_ICON_WEDGE_CLOSE))

    setCardCloseLayoutSize(data, cardCloseView, cardCloseImage, isPortrait)
    return cardCloseView, cardCloseImage
end

local function createCardFlexView(data, isPortrait)
    local cardFlexView = GradientView()
    cardFlexView:backgroundColor(0x000000, 0.5)
    local cardFlexLabel = Label(Native)
    cardFlexLabel:lines(2)
    local adsTag = "点击卡牌\n赢取大奖"
    cardFlexLabel:textAlign(TextAlign.LEFT)
    cardFlexLabel:textColor(0xFFFFFF)
    cardFlexLabel:text(adsTag)

    setCardFlexLayoutSize(data, cardFlexView, cardFlexLabel, isPortrait)
    return cardFlexView, cardFlexLabel
end

local function configSize(data)
    if (data == nil) then
        return
    end
    local dataTable = data.data
    if (dataTable == nil) then
        return
    end
    local isShowClose = dataTable.isShowClose
    if (isShowClose ~= nil) then
        card.isShowClose = isShowClose
    else
        card.isShowClose = false
    end
    local isShowAds = dataTable.isShowAds
    if (isShowAds ~= nil) then
        card.isShowAds = isShowAds
    else
        card.isShowAds = false
    end
    dataTable.ratio = 1.253
    dataTable.width = 0.248
    dataTable.positionX = 0.037
    dataTable.positionY = 0.531
end

local function registerWindow()
    local nativeWindow = nil
    if System.ios() then
        nativeWindow = NativeWindow()
    else
        nativeWindow = nativeWindow
    end
    local callbackTable = {
        -- onShow = function()
        --     card.luaview:show()
        -- end,
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

local function onCreate(data)
    local showLinkUrl = getHotspotExposureTrackLink(card.data, card.hotspotOrder)
    if (showLinkUrl ~= nil) then
        Native:get(showLinkUrl)
    end
    if (card.launchPlanId ~= nil) then
        osTrack(card.launchPlanId, 1, 2)
        osTrack(card.launchPlanId, 2, 2)
    end

    configSize(data)
    local isPortrait = Native:isPortraitScreen()
    card.luaview = createLuaView(isPortrait)
    card.cardView = createCardView(data, isPortrait)
    card.cardImageLayout, card.cardImageView, card.cardBgView = createCardImageView(data, isPortrait)
    card.cardAdsLabel = createCardAdsView(data, isPortrait)
    card.cardCloseLayout, card.cardCloseImage = createCardCloseView(data, isPortrait)
    card.cardFlexView, card.cardFlexLabel = createCardFlexView(data, isPortrait)

    card.cardImageLayout:addView(card.cardImageView)
    card.cardImageLayout:addView(card.cardBgView)
    card.cardCloseLayout:addView(card.cardCloseImage)
    card.cardFlexView:addView(card.cardFlexLabel)

    card.cardView:addView(card.cardFlexView)
    card.cardView:addView(card.cardImageLayout)
    card.cardView:addView(card.cardAdsLabel)
    card.cardView:addView(card.cardCloseLayout)

    card.luaview:addView(card.cardView)
    if (card.isShowAds == false) then
        card.cardAdsLabel:hide()
    end
    if (isPortrait) then
        card.cardFlexView:translation(-0.485 * card.portraitWidth, 0)
        startViewTranslationAnim(card.cardFlexView, 0, 0)
    else
        card.cardFlexView:translation(-0.485 * card.landscapeWidth, 0)
        startViewTranslationAnim(card.cardFlexView, 0, 0)
    end
    card.media = registerMedia()
    card.window = registerWindow()

    card.cardCloseLayout:onClick(function()
        closeView()
    end)

    card.cardImageLayout:onClick(function()
        Native:widgetEvent(eventTypeClick, card.id, adTypeName, actionTypeNone, "")
        closeView()
        local clickLinkUrl = getHotspotClickTrackLink(data, card.hotspotOrder)
        if (clickLinkUrl ~= nil) then
            Native:get(clickLinkUrl)
        end
        if (card.launchPlanId ~= nil) then
            osTrack(card.launchPlanId, 3, 2)
        end
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_food_window.lua" .. "&id=" .. "os_card_food_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
    end)
    card.cardFlexView:onClick(function()
        Native:widgetEvent(eventTypeClick, card.id, adTypeName, actionTypeNone, "")
        closeView()
        local clickLinkUrl = getHotspotClickTrackLink(data, card.hotspotOrder)
        if (clickLinkUrl ~= nil) then
            Native:get(clickLinkUrl)
        end
        if (card.launchPlanId ~= nil) then
            osTrack(card.launchPlanId, 3, 2)
        end
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_food_window.lua" .. "&id=" .. "os_card_food_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
    end)
    if (card.isShowClose == false) then
        card.cardCloseLayout:hide()
    end
    local hotspotOrder = data.hotspotOrder
    if (hotspotOrder == nil) then
        hotspotOrder = 0
    end
    hotspotOrder = hotspotOrder + 1
    card.hotspotOrder = hotspotOrder
    local dataTable = data.data
    if (dataTable == nil) then
        return
    end
    local hotspotArrayTable = dataTable.hotspotArray
    if (hotspotArrayTable == nil) then
        return
    end
    local hotspotOrderTable = hotspotArrayTable[hotspotOrder]
    if (hotspotOrderTable == nil) then
        return
    end
    --    card.cardView:hide()
    local imageUrl = hotspotOrderTable.imageUrl
    if (imageUrl ~= nil) then
        card.cardImageView:image(imageUrl, function(status)
            --            if status == true then
            --                card.cardView:show()
            --            end
        end)
    end
    local title = hotspotOrderTable.title
    if (title ~= nil) then
        local _, charCount = string.gsub(title, "[^\128-\193]", "")
        local newTitle = title
        if charCount > 5 then
            local count = 0
            newTitle = ""
            for uchar, value in string.gmatch(title, "([%z\1-\127\194-\244][\128-\191]*)") do
                count = count + 1
                newTitle = newTitle .. tostring(uchar)
                if count == 5 then
                    newTitle = newTitle .. "\n"
                end
            end
        end
        card.cardFlexLabel:text(newTitle)
    end

    Native:widgetEvent(eventTypeShow, card.id, adTypeName, actionTypeNone, "")
    Native:saveCacheData(card.id, tostring(eventTypeShow))
    checkMqttHotspotToSetClose(data, function()
        closeView()
    end)
end

function getUserCardInfo(callback)

    local businessInfo = {
        userId = Native:getIdentity(),
        creativeId = card.data.creativeId
    }

    local paramData = {
        businessParam = businessInfo,
        commonParam = Native:commonParam()
    }

    local paramDataString = Native:tableToJson(paramData)
    -- print("[LuaView] "..paramDataString)
    -- print("[LuaView] "..OS_HTTP_GET_MOBILE_QUERY)
    -- print("[LuaView] "..Native:aesEncrypt(paramDataString, OS_HTTP_PUBLIC_KEY, OS_HTTP_PUBLIC_KEY))
    local requestId = card.request:post(OS_HTTP_GET_MOBILE_QUERY, {
        bu_id = buId,
        device_type = deviceType,
        data = Native:aesEncrypt(paramDataString, OS_HTTP_PUBLIC_KEY, OS_HTTP_PUBLIC_KEY)
    }, function(response, errorInfo)
        -- print("luaview getUserCardInfo")
        if (response == nil) then
            return
        end
        -- print("luaview getUserCardInfo 11"..Native:tableToJson(response))
        responseData = Native:aesDecrypt(response.encryptData, OS_HTTP_PUBLIC_KEY, OS_HTTP_PUBLIC_KEY)
        print("luaview " .. responseData)
        response = toTable(responseData)
        if (response.resCode ~= "00") then
            return
        end

        local dataTable = response.businessInfo
        if (dataTable == nil) then
            if callback ~= nil then
                callback()
            end
            return
        end

        card.data.data.userCardInfo = dataTable
        -- dataTable.collectStatus = 3
        if callback ~= nil then
            callback(dataTable)
        end
    end, card.luaview)
    table.insert(card.requestIds, requestId)
end

function show(args)
    if (args == nil or args.data == nil or card.luaview ~= nil) then
        return
    end
    card.data = args.data
    card.launchPlanId = card.data.launchPlanId
    card.id = card.data.id
    card.request = HttpRequest()
    print("LuaView card id " .. card.id)
    if (card.hotspotOrder == nil) then
        local hotspotOrder = card.data.hotspotOrder
        if (hotspotOrder == nil) then
            hotspotOrder = 0
        end
        hotspotOrder = hotspotOrder + 1
        card.hotspotOrder = hotspotOrder
    end

    getUserCardInfo(function(dataTable)
        if dataTable ~= nil then
            if dataTable.collectStatus ~= collectStatusGet then
                onCreate(card.data)
            else
                closeView()
            end
        else
            onCreate(card.data)
        end
    end)
end