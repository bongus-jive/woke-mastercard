local fraudTick = 1

function init()
  local melon = player.getProperty("pat_creditcard_melon")
  script.setUpdateDelta(melon and 5 or 0)
  
  message.setHandler("pat_creditcard_melon", init)
end

function update(dt)
  fraudTick = fraudTick - 1
  if fraudTick == 0 then
    fraudTick = math.random(1, 4)
    
    local money = player.getProperty("pat_creditcard") or 0
    if money > 0 then
      money = math.floor(money - (money / math.random(12, 24)))
      player.setProperty("pat_creditcard", money)
    else
      script.setUpdateDelta(0)
    end
  end
end