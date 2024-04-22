-- capture the name searched for by require
local NAME = ...

local function read_file(path)
  local file = io.open(path, "rb") -- r read mode and b binary mode
  if not file then
    return nil
  end
  local content = file:read("*a") -- *a or *all reads the whole file
  file:close()
  return content
end

local function getmatches(text, pattern)
  if text == nil then
    return false
  end
  local found = false
  for line in string.gmatch(text, "[^\r\n]+") do
    local m = string.match(line, pattern)
    if m ~= nil then
      found = true
    end
  end
  return found
end

local function isNix()
  if not vim.loop.os_uname().sysname == "Darwin" or getmatches(read_file("/etc/os-release"), "^ID=nixos") then
    return true
  end
end

local M = {}

M.read_file = read_file
M.getmatches = getmatches
M.isNix = isNix

return M
