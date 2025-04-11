function map(tbl, f)
    local t = {}
    for k,v in pairs(tbl) do
        t[k] = f(v)
    end
    return t
end

function keyOf(tbl, value)
    for k, v in pairs(tbl) do
        if v == value then
            return k
        end
    end
    return nil
end

function indexOf(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end

function containsId(keyArr, valueArr, key)
    return keyArr[indexOf(valueArr,key)] ~= nil
end

function containsValue(keyArr, valueArr, key)
    return valueArr[indexOf(keyArr,key)] ~= nil
end

function getKey(keyArr, valueArr, key)
    return keyArr[indexOf(valueArr,key)]
end

function getValue(keyArr, valueArr, key)
    return valueArr[indexOf(keyArr,key)]
end
