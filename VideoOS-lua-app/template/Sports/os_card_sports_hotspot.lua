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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_sports_window.lua" .. "&id=" .. "os_card_sports_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_sports_window.lua" .. "&id=" .. "os_card_sports_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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