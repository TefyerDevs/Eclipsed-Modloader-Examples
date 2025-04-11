_G["use"] = function(hand , world, player) -- use not on a block
    if hand:isMainHand() then
        world:summonEntity("minecraft:pig", player)
        print("Summoned a Pig at: " .. player:position():toString())
    end
end

_G["useOn"] = function(context,world) -- use on a block
    local player = context:getPlayer()
    local blockPos = context:getClickedPos();
    world:summonEntity("minecraft:pig", player, blockPos)
    print("Summoned a Pig at: " .. player:position():toString())
end