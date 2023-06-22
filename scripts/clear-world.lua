delay = 300 -- recommended

function clearWorld()
    for _, tile in pairs(getTiles()) do
        if tile.fg == 2 or tile.fg == 4 or tile.fg == 10 or tile.bg == 14 then
            if tile.fg ~= 8 then
                if getTile(tile.x, tile.y - 1).fg == 0 then
                    findPath(tile.x, tile.y - 1)
                    sleep(150)
                    while getTile(tile.x, tile.y).fg ~= 0 or getTile(tile.x, tile.y).bg ~= 0 do
                        punch(0,1)
                        sleep(delay)
                    end
                elseif getTile(tile.x - 1, tile.y).fg == 0 then
                    findPath(tile.x - 1, tile.y)
                    sleep(150)
                    while getTile(tile.x, tile.y).fg ~= 0 or getTile(tile.x, tile.y).bg ~= 0 do
                        punch(1,0)
                        sleep(delay)
                    end
                elseif getTile(tile.x + 1, tile.y).fg == 0 then
                    findPath(tile.x + 1, tile.y)
                    sleep(150)
                    while getTile(tile.x, tile.y).fg ~= 0 or getTile(tile.x, tile.y).bg ~= 0 do
                        punch(-1,0)
                        sleep(delay)
                    end
                end
            end
        end
    end
end

-- Usage
clearWorld()
