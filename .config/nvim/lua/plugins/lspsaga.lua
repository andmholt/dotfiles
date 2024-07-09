return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup({
      lightbulb = {
        enable = false
      }
    })

    -- definitions
    vim.api.nvim_set_keymap('n', 'gd', '<cmd>Lspsaga goto_definition<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'pd', '<cmd>Lspsaga peek_definition<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'gt', '<cmd>Lspsaga goto_type_definition<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'pt', '<cmd>Lspsaga peek_type_definition<CR>', { noremap = true, silent = true })

    -- diagnostics
    vim.api.nvim_set_keymap('n', 'sd', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'sld', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'sbd', '<cmd>Lspsaga show_buf_diagnostics<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'scd', '<cmd>Lspsaga show_cursor_diagnositcs<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'swd', '<cmd>Lspsaga show_workspace_diagnostics<CR>', { noremap = true, silent = true })

    -- finder
    vim.api.nvim_set_keymap('n', 'f', '<cmd>Lspsaga finder<CR>', { noremap = true, silent = true })
    
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons',     -- optional
  }
}
