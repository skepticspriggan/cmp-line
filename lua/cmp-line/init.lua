local source = {}

local cmp = require 'cmp'

function source:new()
  return setmetatable({}, {__index = source})
end

function source:get_keyword_pattern()
  return [[^\(\k\|-\)\+]]
end

function source:is_available()
  return true
end

local function parse_lines(file)
  local items = {}

  local f = assert( io.open(file, 'r') )
  for line in f:lines() do
    local item = {}

    item.label = line
    item.kind = cmp.lsp.CompletionItemKind.Text

    table.insert(items, item)
  end
  f:close()

  return items
end

function source:complete(params, callback)
  local items = {}

  local defaults = {
    file = "~/calendar.txt",
  }

  local option = vim.tbl_deep_extend('keep', params.option, defaults)

  items = parse_lines(option.file)

  callback(items)
end

return source
