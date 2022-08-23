vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
-- will highlight search result
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'pwsh'
-- search result will appear in a split window
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- auto indent
vim.opt.si = true -- smart indent
vim.opt.wrap = false -- no wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

-- turn off the paste mode when leaving insert
vim.api.nvim_create_autocmd('InsertLeave', {
  pattern = '*',
  command = 'set nopaste'
})

-- automatically insert the current comment leader after hitting <Enter> in insert mode
vim.opt.formatoptions:append {'r'} 
