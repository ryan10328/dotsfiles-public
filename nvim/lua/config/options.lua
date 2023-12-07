-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local is_mac = function()
  return vim.fn.has("macunix")
end

if is_mac then
else
  -- if detect windows, then use powershell instead
  vim.opt.shell = "pwsh"
  -- start pwsh and attach -NoLogo as cmd flag
  vim.opt.shellcmdflag = "-NoLogo"
end
