local screenWidth, screenHeight = System:screenSize()

-- -- Test Label
local label = Label()
label:text(System:ios() and "iOS" or "Android")
label:textColor(0x000000)
label:frame(0, 0, screenWidth, screenHeight)
label:textAlign(TextAlign.CENTER)


-- -- Test Button
local btn = VideoButton()

btn:size(200, 200)
btn:frame(0, 0, 200, 200)
btn:text("Click Me")
btn:image("http://g.alicdn.com/ju/lua/2.0.25/doc/icon.png",
          "http://g.alicdn.com/ju/lua/2.0.25/doc/icon2.png"
         )
btn:backgroundColor(0xff0000)
btn:hidden(true)
btn:callback(
function()
Alert("Hello LuaView")
label:text(System:iOS() and "0000" or "lll")
end)


local btn1 = VideoButton()

btn1:frame(0, 300, 200, 200)
btn1:backgroundColor(0xff0000)
btn1:text("Click Me","dddd")
btn1:font(50)


-- w,h = System.screenWidth();

-- cellH = 100;
-- collectionView = CollectionView {
--  	Section = {
--  		SectionCount =  2,
--  		RowCount = 5,
--  		Spacing = 20,
--  	},
--  	cell = {
--  		ID = function ( section , row )
--  			if section == 1 then
--  				return "cell1";
--  			elseif section == 2 then
--  				return "cell2";
--  			end
--  		end,
--  	},

--  	cell1 = {
--  		size = function ( section, row )
--  			return (w-1)/2,200
--  		end,

--  		Init = function ( cell , section , row )
--  			local cellWidth ,cellHeight = cell.window:size();
--  			cell.image = image();
--  			cell.image:frame(0,0,cellWidth,100);
 			
--  		end,
--  	},

--  	cell2 = {

--  	}
-- };


