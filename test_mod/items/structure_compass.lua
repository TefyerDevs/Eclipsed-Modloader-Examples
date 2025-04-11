_G["useOn"] = function(context,world,blocks)
    local player = context:getPlayer()
    local level = context:getLevel()
    local blockPos = context:getClickedPos();


    print(level:getBlockState(blockPos):getBlock():getName()) -- just prints the block name
end