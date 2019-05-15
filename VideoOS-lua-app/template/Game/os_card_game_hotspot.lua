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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_game_window.lua" .. "&id=" .. "os_card_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_game_window.lua" .. "&id=" .. "os_card_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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