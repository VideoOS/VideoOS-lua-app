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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_news_window.lua" .. "&id=" .. "os_card_news_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_news_window.lua" .. "&id=" .. "os_card_news_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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