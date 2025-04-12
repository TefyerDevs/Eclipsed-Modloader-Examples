_G["use"] = function(hand , world, playerWrapper)
   playerWrapper:runCommand("/kill @e[type=minecraft:item]")
end

_G["useOn"] = function(playerWrapper, world, blocks)

   playerWrapper:runCommand("/kill @e[type=minecraft:item]")

end