-- test.lua 文件
-- test.lua 文件末尾注释
-- test.lua 文件末尾注释
-- local aTable = {{0, 1, 2, 3}, {4, 5, 6, 7}, {8, 9, 10, 11}, {12, 13, 14, 15}}
-- require("test1")
local tablePrinted = {}

setfenv(1, {g = _G, tablePrinted})

function printTableItem(k, v, level)
    for i = 1, level do
        g.io.write("    ")
    end


    g.io.write(g.tostring(k), " = ", g.tostring(v), "\n")
    if g.type(v) == "table" then
        if not tablePrinted[v] then
            tablePrinted[v] = true
            for k, v in g.pairs(v) do
                printTableItem(k, v, level + 1)
            end
        end
    end
end


printTableItem("_G", g, 0)