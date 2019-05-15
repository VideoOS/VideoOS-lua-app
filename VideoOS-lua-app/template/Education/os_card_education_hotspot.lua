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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_education_window.lua" .. "&id=" .. "os_card_education_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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
        Native:sendAction(Native:base64Encode("LuaView://defaultLuaView?template=" .. "os_card_education_window.lua" .. "&id=" .. "os_card_education_window" .. tostring(card.id) .. tostring(card.hotspotOrder) .. "&priority=" .. tostring(osInfoViewPriority)), data)
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