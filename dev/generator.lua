
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

function convertControl(cmd,inc,rng)
    if(inc % 1 > 0) then 
        if ((rng[1] % .1) > 0) then 
            return "%.1f" 
        else 
            return "%.2f" 
        end 
    else
        return "%1d"
    end
end

for k,v in pairs(elements) do
    local dcsid = v.arg[1]
    local desc = v.hint
    local device = v.device
    local command = v.action[1]
    local increment = v.arg_value[1]
    local range = v.arg_lim[1]

    local numeric_type = convertControl(command, increment, range)

    io.write("[",dcsid, "] = \"",numeric_type,"\"  -- ", desc, " (Device ", device, " Command ", command, " ID ", dcsid , " Increment ",increment," Range ",range[1],"-",range[2],")")
    print()
end