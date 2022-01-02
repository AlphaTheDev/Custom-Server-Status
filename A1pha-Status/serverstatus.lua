local DISCORD_NAME = "A1pha - Status"

function sendToDiscord(title, description, color, fields, footer, thumbnail)
    local embed = {
          {
            ["title"] = "[ServerName] -  Status",
            ["description"] = "Serveren er på vej op bare vent et sekund og så er den oppe!\nHusk at joine serveren når ipen bliver udsendt!",
            ["color"] = 2475211,
            ["fields"] = {
              {
                ["name"] = "*Discord*",
                ["value"] = "Her Er Vores [FiveM Discord](https://discord.gg/fJekXq5jUP)",
                ["inline"] = true
              },
              {
                ["name"] = "*Website*",
                ["value"] = "Vores Hjemmeside Kan Findes [Her](https://discord.gg/fJekXq5jUP)"
              },
              {
                ["name"] = "*Server IP*",
                ["value"] = "Join Serveren Via 45.131.67.219:30120"
              }
            },
            ["footer"] = {
              ["text"] = "Tak fordi du valgte A1pha's Community Discord!",
              ["icon_url"] = "https://media.discordapp.net/attachments/926528979660316772/926549638557880420/a1pha.png"
            },
            ["thumbnail"] = {
              ["url"] = "https://media.discordapp.net/attachments/926528979660316772/926549638557880420/a1pha.png"
              },
          }
      }
  
    PerformHttpRequest('https://discord.com/api/webhooks/926547659639107604/y-8-l9cn5K_HS05CcrYRq1W8CXair_ecQMP-iR3i40-UmTgQarZ_QH5ck0ADakngPNnf', function(err, text, headers) end, 'POST', json.encode({username = DISCORD_NAME, embeds = embed}), { ['Content-Type'] = 'application/json' })
  end


-- Dette skal være der ellers kan den ikke sende beskeden!
sendToDiscord()


--------------------------------------------------------------------------

AddEventHandler('onResourceStop', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
  print('The resource ' .. resourceName .. ' was stopped.')
end)

--------------------------------------------------------------------------

AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
  print('The resource ' .. resourceName .. ' was started.')
end)

--------------------------------------------------------------------------

AddEventHandler('onResourceStarting', function(resourceName)
  if resourceName == 'A1pha-Status' then
    CancelEvent()
  end
end)