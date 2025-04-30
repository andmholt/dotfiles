return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim"
  },
  config = function()
    require('codecompanion').setup({
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            opts = {
              stream = true,
            },
            env = {
              api_key = os.getenv("OPENAI_API_KEY"),
            },
            schema = {
              model = {
                default = function()
                  return "gpt-4o"
                end,
              },
            },
          })
        end
      },
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            make_vars = true,       
            make_slash_commands = true,
            show_result_in_chat = true  
          }
        }
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
      },
      strategies = {
        chat = {
          adapter = "openai",
        },
        inline = {
          adapter = "openai",
        },
      },
    })

    vim.api.nvim_set_keymap('n', 'pqa', '<cmd>CodeCompanionActions<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Space>c', '<cmd>CodeCompanion<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<Space>c', '<cmd>CodeCompanion<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', 'pc', '<cmd>CodeCompanionChat Toggle<CR>', { noremap = true, silent = true })

  end
}

