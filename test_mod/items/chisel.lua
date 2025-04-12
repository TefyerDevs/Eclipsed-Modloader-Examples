_G["useOn"] = function(context,world,blocks)
    local level = context:getLevel()
    local player = context:getPlayer()
    local clickedBlock = level:getBlockState(context:getClickedPos()):getBlock()

    if clickedBlock == blocks.STONE  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(),
              blocks.STONE_BRICKS:defaultBlockState())
        end
    end

    if  clickedBlock == blocks.STONE_BRICKS  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(),
             blocks.STONE:defaultBlockState())
        end
    end
end
