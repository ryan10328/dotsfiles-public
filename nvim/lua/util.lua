local util = {}

has = function(x)
  return vim.fn.has(x) == 1
end

util.is_mac = function()
  return has 'macunix'
end
util.is_win = function()
  return has 'win32'
end

return util

