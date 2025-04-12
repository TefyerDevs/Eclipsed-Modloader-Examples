_G["useOn"] = function(playerWrapper,world,blocks)
    local level = playerWrapper:getContext():getLevel()
    local blockPos = playerWrapper:getContext():getClickedPos();


    playerWrapper:sendMessage(level:getBlockState(blockPos):getBlock():getName()) -- just prints the block name
end