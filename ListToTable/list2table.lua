local table = require "table"

function AnalyzeList(row_List, table_row)
    for _, val in pairs(row_List) do
        if val.t == "Plain" then
            table.insert(table_row, val)
        end
        if val.t == "BulletList" then
            for _, val2 in pairs(val) do
                if type(val2) ~= "function" then
                    for _, val3 in ipairs(val2) do
                        for _, val4 in pairs(val3) do
                            table.insert(table_row, val4)
                        end
                    end
                end
            end
        end
    end
end


function Div(e)
    if e.classes[1] == "table" then
        -- print(e)
        local aligns = {}
        local widths = {}
        local headerList = {}
        local bodyList = {}
        local header = false
        local OrderList = false
        local OrderListCount = 1
        for index, value in ipairs(e.content) do
            if value.t == "OrderedList" and not OrderList then
                OrderList = true
                table.insert(headerList, 1, "No.")
                table.insert(aligns, pandoc.AlignDefault)
                table.insert(widths, 0)
            end

            for i, v in ipairs(value.content) do
                if header == false then
                    AnalyzeList(v, headerList)
                    for i = 1, #headerList do
                        table.insert(aligns, pandoc.AlignDefault)
                        table.insert(widths, 0)
                    end
                    header = true
                else
                    local bodyrow = {}
                    if OrderList == true then
                        table.insert(bodyrow, pandoc.Str(OrderListCount))
                        OrderListCount = OrderListCount + 1
                    end
                    AnalyzeList(v, bodyrow)
                    table.insert(bodyList, bodyrow)
                end
            end
            
        end

        local caption = ""
        simple_table = pandoc.SimpleTable(
            caption,
            aligns,
            widths,
            headerList,
            bodyList
        )
        return pandoc.utils.from_simple_table(simple_table)
    end
end