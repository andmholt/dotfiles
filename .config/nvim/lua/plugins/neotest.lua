return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
  },
  config = function ()
    require('neotest').setup({
      adapters = {
        require('neotest-vitest')({}),
        require('neotest-jest')({})
      }
    })
    vim.api.nvim_set_keymap('n', 'tr', '<cmd>Neotest run<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'tf', '<cmd>Neotest run file<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'tc', '<cmd>Neotest stop<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'ta', '<cmd>Neotest attach<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'ts', '<cmd>Neotest summary<CR>', { noremap = true, silent = true })
  end
}
