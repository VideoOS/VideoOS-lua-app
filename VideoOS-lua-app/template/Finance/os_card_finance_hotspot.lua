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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_finance_window.lua" .. "&id=" .. "os_card_finance_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_finance_window.lua" .. "&id=" .. "os_card_finance_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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