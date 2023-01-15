local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  filetypes = {
    'lua',
    'markdown',
    'html',
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'scss',
    'less'
  },
  condition = function()
    return prettier.config_exists({
      check_package_json = true,
    })
  end,
  runtime_condition = function(params)
    return true
  end,
  timeout = 5000,
}

