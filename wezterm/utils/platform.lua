local wezterm = require("wezterm")

local M = {}

local target = wezterm.target_triple

M.is_mac = function()
	return target:find("apple") ~= nil
end

M.is_win = function()
	return target:find("windows") ~= nil
end

M.is_linux = function()
	return target:find("linux") ~= nil
end

return M
