local M = {}

local function parse_http_file()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local method, url, headers, data = nil, nil, {}, {}
  local is_body = false

  for _, line in ipairs(lines) do
    if not method and not url then
      method, url = string.match(line, "^(%u+)%s+(.+)$")
    elseif not is_body then
      local key, value = string.match(line, "^(.-):%s*(.+)$")
      if key and value then
        headers[key] = value
      elseif line == "" then
        is_body = true
      end
    else
      table.insert(data, line)
    end
  end

  return method, url, headers, table.concat(data, "\n")
end

local function pretty_json(json_str)
  local indent_level = 0
  local formatted_json = ""

  for i = 1, #json_str do
    local current_char = json_str:sub(i, i)

    if current_char == "{" or current_char == "[" then
      indent_level = indent_level + 1
      formatted_json = formatted_json .. current_char .. "\n" ..
                           string.rep("  ", indent_level)
    elseif current_char == "}" or current_char == "]" then
      indent_level = indent_level - 1
      formatted_json =
          formatted_json .. "\n" .. string.rep("  ", indent_level) ..
              current_char
    elseif current_char == "," then
      formatted_json = formatted_json .. current_char .. "\n" ..
                           string.rep("  ", indent_level)
    elseif current_char == ":" then
      formatted_json = formatted_json .. current_char .. " "
    else
      formatted_json = formatted_json .. current_char
    end
  end

  return formatted_json
end

local function get_request(method, url, headers, data)
  local header_cmd = ""

  if headers ~= nil then
    for key, value in pairs(headers) do
      header_cmd = header_cmd .. "-H '" .. key .. ": " .. value .. "' "
    end
  end

  local data_cmd = ""
  if data ~= nil and data ~= "" then
    data_cmd = "-d '" .. data:gsub("'", "\\'") .. "' "
  end

  local cmd = "curl -s -X " .. method .. " " .. header_cmd .. data_cmd ..
                  "-o - " .. url
  local handle = io.popen(cmd)

  if handle == nil then
    print("Error: Unable to execute curl command")
    return nil
  end

  local response = handle:read("*a")
  handle:close()

  -- Форматируем JSON-ответ
  local pretty_response = pretty_json(response)

  -- Открываем новый вертикальный split-окно и выводим ответ в нем
  vim.api.nvim_command("rightbelow vnew")
  -- Задаем тип файла для подсветки синтаксиса
  vim.api.nvim_command("set filetype=json")
  vim.api.nvim_buf_set_lines(0, 0, -1, false,
                             vim.split(pretty_response, "\n", {}))
end

M.exec = function()
  local method, url, headers, data = parse_http_file()
  if method and url then
    get_request(method, url, headers, data)
  else
    print("Error: Unable to parse the current file")
  end
end

return M
