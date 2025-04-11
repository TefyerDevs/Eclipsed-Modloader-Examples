
chiselMapBlockId = nil
chiselMapBlockValue = nil

function containsId(value)
    return chiselMapBlockId[indexOf(chiselMapBlockValue,value)] ~= nil
end

function containsValue(value)
    return chiselMapBlockValue[indexOf(chiselMapBlockId,value)] ~= nil
end

t = {
pig = "pig",
cow = "big cow",
sheep  = "white sheep" }

function getKey(key)
    return chiselMapBlockId[indexOf(chiselMapBlockValue,key)]
end

function getValue(key)
    return chiselMapBlockValue[indexOf(chiselMapBlockId,key)]
end

_G["useOn"] = function(context,world,blocks)
    local level = context:getLevel()
    local clickedBlock = level:getBlockState(context:getClickedPos()):getBlock()

    chiselMapBlockId = {
                blocks.STONE,
                blocks.END_STONE,
                blocks.DEEPSLATE,
                blocks.IRON_BLOCK
            }

    chiselMapBlockValue = {
                blocks.STONE_BRICKS,
                blocks.END_STONE_BRICKS,
                blocks.DEEPSLATE_BRICKS,
                blocks.DIAMOND_BLOCK
            }


    if containsId(clickedBlock)  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(), getValue(clickedBlock):defaultBlockState())
        end
    end

    if containsValue(clickedBlock)  then
        if not level.isClientSide then
             level:setBlockAndUpdate(context:getClickedPos(), getKey(clickedBlock):defaultBlockState())
        end
    end
end
