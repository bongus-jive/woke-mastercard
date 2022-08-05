local ou = uninit

function uninit(...)
  if ou then ou(...) end
  
  world.sendEntityMessage(player.id(), "pat_creditcard_melon")
end