blockid = 
delay = 
hit = 

function pnb()
    if getTile(math.floor(getBot().x/32), math.floor(getBot().y/32)-2).fg == 0 or
       getTile(math.floor(getBot().x/32), math.floor(getBot().y/32)-2).bg == 0 then
        place(blockid,0,-2)
        sleep(delay)
        for i = 1, hit do
            punch(0,-2)
            sleep(delay)
        end
    else
        for i = 1, hit do
            punch(0,-2)
            sleep(delay)
        end
    end
end

-- Usage
while true do
  pnb()
end
