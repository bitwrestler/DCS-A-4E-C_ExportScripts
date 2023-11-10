LockOn_Options = {}
LockOn_Options.script_path="./"

require("clickable_common")
require("clickabledata")
require("command_defs")



function isNumeric(v)
    return type(v) == "number"
end

function ifnil(val)
    if(val == nil) then
        return ""
    else
        return val
    end
end

function ifNilFirstEle(tableVal)
    if(tableVal == nil or tableVal[1] == nil) then
       return ""
    else
        return tableVal[1]
    end
end

function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys 
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function table_invert(t)
    local s={}
    for k,v in pairs(t) do
      s[v]=k
    end
    return s
 end

function lookupElementNameByID(eleTable, idVal)
    for k,v in pairs(eleTable) do
        if( v.arg[1] == idVal) then
            return k
        end
    end
    return ""
end

local invert_devices = table_invert(devices)
local invert_commands = table_invert(device_commands)
local invert_keys = table_invert(Keys)

function lookupCommandNameByID(idVal)
    local poss = invert_commands[idVal]
    if(poss == nil) then
        poss = invert_keys[idVal]
    end
    return poss
end

function lookupDeviceByID(dvcID)
    return invert_devices[dvcID]
end
