
# Timer

```lua
scrW,scrH = System:screenSize();
label = Label();
label:frame(0,0,scrW,scrH-64);
label:lineCount(100);

function myprint( s , s2 )
	s = s .. " " .. tostring(s2)
	print(s);
	local text = label:text();
	if( text ) then 
		label:text( text .. "\n" .. s);
	else
		label:text( s);
	end
end



-- 1

index = 0
-- timer1 = Timer(function()
--     -- myprint("Timer1 Run")


--     if index > 10 then
-- timer1:cancel()
--     else
--     index = index + 1
--     print("2222222222")
--     end

-- end);
-- timer1 = timer1:start(1, true);

-- time1 = Timer()
-- time1:callback(function ()
-- 	index = index + 1
-- end)
-- time1:delay(5)
-- time1:interval(1)
-- time1:start()


--2
-- index2 = 1;
-- timer2 = Timer()
-- timer2:callback(
-- 	function() 
-- 		myprint("Timer2 Run",index2) 
-- 		index2 = index2 + 1;
-- 	end
-- 	)
-- timer2:start(2, true)

--3
-- timer3 = Timer(function()
--     timer2:cancel()
-- 	myprint("Timer3 Run") 
-- end)
-- timer3:start(10)

function bbb( )
	timer4 = Timer()
-- timer4:delay(5);
timer4:interval(0.01)
timer4:repeatCount(0)
timer4:callback(
    function()
    if index > 50 then
	timer4:cancel()
    else
    index = index + 1
    print(index)
    end

    	-- myprint("Timer4 Run")
    	-- timer4 = nil;
    	-- System:gc();
    end
)
timer4:start()
end

bbb()
bbb()

--4

```
