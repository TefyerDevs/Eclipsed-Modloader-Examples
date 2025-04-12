_G["use"] = function(hand , world, player) -- use not on a block
    if hand:isMainHand() then
        world:summonEntity("minecraft:pig", player)
        print("Summoned a Pig at: " .. player:position():toString())
    end
end

_G["useOn"] = function(playerWrapper, world, blocks) -- use on a block
    local blockPos = playerWrapper:getClickedPos();
    world:summonEntity("minecraft:pig", playerWrapper, blockPos)
    playerWrapper:sendMessage("Summoned a Pig at: " .. playerWrapper:position():toString())
end