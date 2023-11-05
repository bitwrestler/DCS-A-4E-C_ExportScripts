
require("generator_globals")
require("clickabledata")

for k,v in pairs(elements) do
    io.write("[",v.arg[1], "] = \"%.f\"  -- ", v.hint, " (Device ", v.device, " Command ", v.action[1], " ID ", v.arg[1] , ")")
    break
end