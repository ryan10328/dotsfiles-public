require('base')
require('highlights')
require('maps')
require('plugins')

-- utility functions
local util = require('util')

if util.is_mac() then
  require('macos')
end
if util.is_win() then
  require('windows')
end
