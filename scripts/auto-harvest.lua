seedid = 
delayharvest = 

function harvest()
    for i=1,5 do
        for _, tile in pairs(getTiles()) do
            if tile.fg == seedid and tile.ready then
                findPath(tile.x, tile.y)
                sleep(delayharvest)
                punch(0,0)
                sleep(delayharvest)
                collect(3) --change to collect(3,112) if ignore gems
            end
        end
    end
end

harvest()
