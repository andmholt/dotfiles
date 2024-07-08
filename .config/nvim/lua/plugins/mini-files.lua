return {
  'echasnovski/mini.files',
  version = '*',
  config = function()
    require('mini.files').setup({
      options = {
        use_as_default_explorer = false
      }
    })
    vim.api.nvim_set_keymap('n', '<leader>m', ':lua require("mini.files").open()<CR>', { noremap = true, silent = true })
  end
}
