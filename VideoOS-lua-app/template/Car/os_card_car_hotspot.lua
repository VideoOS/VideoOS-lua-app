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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_car_window.lua" .. "&id=" .. "os_card_car_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_car_window.lua" .. "&id=" .. "os_card_car_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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