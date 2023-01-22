local status, window_picker = pcall(require, 'window-picker')
if (not status) then return end

window_picker.setup({
  autoselect_one = true,
  include_current = false,
  filter_rules = {
    bo = {
      filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
      buftype = { 'terminal', 'quickfix' }
    },
  }
})
