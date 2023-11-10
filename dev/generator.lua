
require("generator_globals")
require("clickabledata")

local cmdMap = {
    "%1d",
    "%.1f",
    "%1d",
    "%.1f",
    "%.1f",
    "%.1f",
    "%.1f",
    "%.1f"
}

local function isNumeric(v)
    return type(v) == "number"
end

local function ifnil(val)
    if(val == nil) then
        return ""
    else
        return val
    end
end

local function ifNilFirstEle(tableVal)
    if(tableVal == nil or tableVal[1] == nil) then
       return ""
    else
        return tableVal[1]
    end
end

local function spairs(t, order)
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

--[[ TODO, this doesn't work correctly. It might not be possible to derive the numeric format from the data?  ]]
local function convertControl(cmd,inc,rng)
    if(isNumeric(inc) and ((inc % 1 > 0) or (rng[1] % 1 > 0) ) ) then
        if ((rng[1] % .1) > 0) then
            return "%.1f"
        else 
            return "%.2f"
        end 
    else
        return "%1d"
    end
end

local function table_invert(t)
    local s={}
    for k,v in pairs(t) do
      s[v]=k
    end
    return s
 end

local function lookupElementNameByID(eleTable, idVal)
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

local function lookupCommandNameByID(idVal)
    local poss = invert_commands[idVal]
    if(poss == nil) then
        poss = invert_keys[idVal]
    end
    return poss
end


local grpbyDeviceTable = {}
for k,v in pairs(elements) do
    if(v.arg == nil or v.arg[1] == nil or v.device == nil) then
        goto mycontinue
    end
    local dcsid = tonumber(v.arg[1])
    local dcsid_name = lookupElementNameByID(elements, dcsid)
    local device = ifnil(v.device)

    local desc = ifnil(v.hint)
    local device_name = invert_devices[device]
    local command = ifNilFirstEle(v.action)
    local command_name = lookupCommandNameByID(command)
    local increment = ifNilFirstEle(v.arg_value)
    local range = ifNilFirstEle(v.arg_lim)

    local numeric_type = convertControl(command, increment, range)
    local defintionStr = "["..dcsid.. "] = \""..numeric_type.."\",  -- ".. desc.. " (Device "..device_name.. "/".. device.. " Command/Button ".. command_name .. "/".. command.. " ID ".. dcsid_name .. "/" .. dcsid .. " Increment "..increment.." Range "..range[1].."-"..range[2]..")"
    
    local grpKey = dcsid

    if grpbyDeviceTable[grpKey] == nil then grpbyDeviceTable[grpKey] = {} end
    grpbyDeviceTable[grpKey][#grpbyDeviceTable[grpKey]+1] =  defintionStr

    ::mycontinue::
end

for D,EleTable in spairs(grpbyDeviceTable) do
    local i = 1
    while(EleTable[i]) do
        print(EleTable[i])
        i = i+1
    end
end