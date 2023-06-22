function hook(v)
    if v[0] == "OnConsoleMessage" then
        if v[1]:find("!warp (%w+) (%w+)") then
            world = v[1]:match("!warp (%w+)")
            id = v[1]:match("!warp "..world.." (%w+)")
            sendPacket(3, "action|join_request\nname|"..world:upper())
            sleep(3000)
            sendPacket(3, "action|join_request\nname|"..world:upper().."|"..id:upper())
            sleep(500)
        elseif v[1]:find("!warp (%w+)") then
            world = v[1]:match("!warp (%w+)")
            sendPacket(3, "action|join_request\nname|"..world:upper())
            sleep(3000)
        end
    end
end
addHook("hook",hook)
