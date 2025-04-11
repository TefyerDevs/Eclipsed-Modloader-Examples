_G["use"] = function(hand , world, player) -- use not on a block
    if hand:isMainHand() then
        world:summonEntity("minecraft:pig", player)
        print("Summoned a Pig at: " .. player:position():toString())
    end
end

_G["useOn"] = function(playerWrapper,world) -- use on a block
    local player = playerWrapper:getPlayer()
    local blockPos = playerWrapper:getContext():getClickedPos();
    world:summonEntity("minecraft:pig", player, blockPos)
    playerWrapper:sendMessage("Summoned a Pig at: " .. player:position():toString())
end