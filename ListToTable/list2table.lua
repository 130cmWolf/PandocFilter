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
                        table.insert(table_row, val3)
                    end
                end
            end
        end
    end
end


function Div(element)
    if element.classes[1] == "table" then
        local aligns = {}
        local widths = {}
        local header_list = {}
        local body_list = {}
        local header = false
        local has_ordered_list = false
        local ordered_list_count = 1

        for _, value in ipairs(element.content) do
            if value.t == "OrderedList" and not has_ordered_list then
                has_ordered_list = true
                table.insert(header_list, 1, "No.")
                table.insert(aligns, pandoc.AlignDefault)
                table.insert(widths, 0)
            end

            for _, row in ipairs(value.content) do
                if not header then
                    AnalyzeList(row, header_list)
                    for i = 1, #header_list do
                        table.insert(aligns, pandoc.AlignDefault)
                        table.insert(widths, 0)
                    end
                    header = true
                else
                    local body_row = {}
                    if has_ordered_list then
                        table.insert(body_row, pandoc.Str(ordered_list_count))
                        ordered_list_count = ordered_list_count + 1
                    end
                    AnalyzeList(row, body_row)
                    table.insert(body_list, body_row)
                end
            end
        end

        local caption = ""
        local simple_table = pandoc.SimpleTable(
            caption,
            aligns,
            widths,
            header_list,
            body_list
        )
        return pandoc.utils.from_simple_table(simple_table)
    end
end