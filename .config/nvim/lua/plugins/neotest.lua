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
        require('neotest-jest')({}),
        require('neotest-vitest')({})
      }
    })
    vim.api.nvim_set_keymap('n', 'tr', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'tc', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'ta', ':lua require("neotest").run.attach()<CR>', { noremap = true, silent = true })
  end
}
