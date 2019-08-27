gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local font = resource.load_font "font.ttf"
local count = 0
local num=0


util.data_mapper{
    counter = function(counter)
        count = counter
    end,
}

function node.render()
    if count==17 then  num=555 
    elseif count==18 then  num=666 
    end    
    gl.clear(0,0,0,1)
    font:write(30, 10, "Motion Detected", 100, .5,.5,.5,1)
    countStr = tostring(num)
    font:write(250, 300, countStr, 64, 1,1,1,1)
end
