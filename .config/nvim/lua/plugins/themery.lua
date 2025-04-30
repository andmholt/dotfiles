return {
  'zaldih/themery.nvim',
  version = '*',
  config = function()
    require('themery').setup({
      livePreview = true,
      themes = {
        {
          name = 'Cyberdream',
          colorscheme = 'cyberdream',
          -- after = [[
          --   require('tiny-devicons-auto-colors').setup({
          --     colors = require('cyberdream').colors
          --   })
          -- ]]
        },
        {
          name = 'Tokyo Night (Moon)',
          colorscheme = 'tokyonight-moon'
          -- after = [[
          --   require('tiny-devicons-auto-colors').setup({
          --     colors = require('tokyonight.colors')
          --   })
          -- ]]
        },
        {
          name = 'Tokyo Night (Storm)',
          colorscheme = 'tokyonight-storm'
        },
        {
          name = 'Tokyo Night (Night)',
          colorscheme = 'tokyonight-night'
        },
        {
          name = 'Tokyo Night (Day)',
          colorscheme = 'tokyonight-day'
        },
        {
          name = 'Oxocarbon',
          colorscheme = 'oxocarbon',
          after = [[
            vim.opt.background = 'dark'
          ]]
        },
        {
          name = 'OneDark (Dark)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'dark'
            })
          ]]
        },
        {
          name = 'OneDark (Darker)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'darker'
            })
          ]]
        },
        {
          name = 'OneDark (Cool)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'cool'
            })
          ]]
        },
        {
          name = 'OneDark (Deep)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'deep'
            })
          ]]
        },
        {
          name = 'OneDark (Warm)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'warm'
            })
          ]]
        },
        {
          name = 'OneDark (Warmer)',
          colorscheme = 'onedark',
          after = [[
            require('onedark').setup({
              style = 'warmer'
            })
          ]]
        },
        {
          name = 'Dracula',
          colorscheme = 'dracula'
        },
        {
          name = 'RosePine',
          colorscheme = 'rose-pine-main',
          after = [[
            require('rose-pine').setup({
              variant = 'main'
            })
          ]]
        },
        {
          name = 'RosePine (Moon)',
          colorscheme = 'rose-pine-moon',
          after = [[
            require('rose-pine').setup({
              variant = 'moon'
            })
          ]]
        },
        {
          name = 'RosePine (Dawn)',
          colorscheme = 'rose-pine-dawn',
          after = [[
            require('rose-pine').setup({
              variant = 'dawn'
            }),
          ]]
        },
        {
          name = 'Everblush',
          colorscheme = 'everblush',
          after = [[
            require('everblush').setup()
          ]]
        },
        {
          name = 'TokyoDark',
          colorscheme = 'tokyodark',
          before = [[
            require('tokyodark').setup()
          ]]
        },
        {
          name = 'Mellow',
          colorscheme = 'mellow'
        },
        {
          name = 'OhLucy',
          colorscheme = 'oh-lucy'
        },
        {
          name = 'OhLucy (Evening)',
          colorscheme = 'oh-lucy-evening'
        },
        {
          name = 'Kanagawa (Wave)',
          colorscheme = 'kanagawa-wave',
          before = [[
            require('kanagawa').setup()
          ]]
        },
        {
          name = 'Kanagawa (Dragon)',
          colorscheme = 'kanagawa-dragon',
          before = [[
            require('kanagawa').setup()
          ]]
        },
        {
          name = 'Kanagawa (Lotus)',
          colorscheme = 'kanagawa-lotus',
          before = [[
            require('kanagawa').setup()
          ]]
        },
        {
          name = 'Catppuccin (Latte)',
          colorscheme = 'catppuccin-latte',
          before = [[
            require('catppuccin').setup()
          ]]
        },
        {
          name = 'Catppuccin (Frappe)',
          colorscheme = 'catppuccin-frappe',
          before = [[
            require('catppuccin').setup()
          ]]
        },
        {
          name = 'Catppuccin (Macchiato)',
          colorscheme = 'catppuccin-macchiato',
          before = [[
            require('catppuccin').setup()
          ]]
        },
        {
          name = 'Catppuccin (Mocha)',
          colorscheme = 'catppuccin-mocha',
          before = [[
            require('catppuccin').setup()
          ]]
        },
        {
          name = 'Nightfox',
          colorscheme = 'nightfox'
        },
        {
          name = 'Dayfox',
          colorscheme = 'dayfox'
        },
        {
          name = 'Dawnfox',
          colorscheme = 'dawnfox'
        },
        {
          name = 'Duskfox',
          colorscheme = 'duskfox'
        },
        {
          name = 'Nordfox',
          colorscheme = 'nordfox'
        },
        {
          name = 'Terafox',
          colorscheme = 'terafox'
        },
        {
          name = 'Carbonfox',
          colorscheme = 'carbonfox'
        }
      }
    })
  end,
}
