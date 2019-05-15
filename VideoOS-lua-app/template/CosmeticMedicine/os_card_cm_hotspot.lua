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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_cm_window.lua" .. "&id=" .. "os_card_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_cm_window.lua" .. "&id=" .. "os_card_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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