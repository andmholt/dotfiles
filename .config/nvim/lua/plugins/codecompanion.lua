return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()

    require('codecompanion').setup({
      strategies = {
        chat = {
          adapter = "openai",
        },
        inline = {
          adapter = "openai",
        },
      },
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
            },
          })
        end,
      },
      display = {
        action_palette = {
          provider = 'telescope'
        },
        chat = {
          window = {
            layout = 'float'
          }
        }
      }
    })

    vim.api.nvim_set_keymap('n', 'pca', '<cmd>CodeCompanionActions<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Space>c', '<cmd>CodeCompanion<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>c', '<cmd>CodeCompanion<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'pc', '<cmd>CodeCompanionChat Toggle<CR>', { noremap = true, silent = true })

  end
}
