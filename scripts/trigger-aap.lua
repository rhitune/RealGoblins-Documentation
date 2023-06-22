usernames = {
  "username","username2"
}
passwords = "test"
webhook_url = "https://discord.com/api/webhooks/"

function webHook(description)
    local script = [[
        $webHookUrl = "]]..webhook_url..[["
        $description = "]]..description..[["
        $embedObject = @{
            description = $description
        }
        $embedArray = @($embedObject)
        $payload = @{
            embeds = $embedArray
        }
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]
    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end



for _, username in pairs(usernames) do
    addBot(username,password)
    sleep(7000)
    removeBot(getBot().name)
    webHook("account done trigger aap : " .. username)
end

webHook("done all accounts in list ! ")
