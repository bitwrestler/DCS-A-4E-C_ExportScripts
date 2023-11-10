
require("generator_globals")

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

local grpbyDeviceTable = {}
for k,v in pairs(elements) do
    if(v.arg == nil or v.arg[1] == nil or v.device == nil) then
        goto mycontinue
    end
    local dcsid = tonumber(v.arg[1])
    local dcsid_name = lookupElementNameByID(elements, dcsid)
    local device = ifnil(v.device)

    local desc = ifnil(v.hint)
    local device_name = lookupDeviceByID(device)
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