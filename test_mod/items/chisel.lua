_G["useOn"] = function(context,world,blocks)
    local level = context:getLevel()
    local player = context:getPlayer()
    local clickedBlock = level:getBlockState(context:getClickedPos()):getBlock()

    if clickedBlock == blocks.IRON_BLOCK  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(),
              blocks.DIAMOND_BLOCK:defaultBlockState())
        end
    end

    if  clickedBlock == blocks.DIAMOND_BLOCK  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(),
             blocks.IRON_BLOCK:defaultBlockState())
        end
    end
end
