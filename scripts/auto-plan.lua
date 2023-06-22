seedid = 
delayplant = 

function plant()
    for i=1,5 do
        for _, tile in pairs(getTiles()) do
            if tile.fg == 0 and getTile(tile.x, tile.y+1).fg ~= 0 then
                findPath(tile.x, tile.y)
                sleep(delayplant)
                place(seedid, 0, 0)
                sleep(delayplant)
            end
        end
    end
end

plant()
