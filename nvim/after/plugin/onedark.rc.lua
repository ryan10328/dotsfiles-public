local status, p = pcall(require, 'onedark')

if (not status) then return end

p.setup({
  style = 'warm',
  transparent = false,
})

p.load()
