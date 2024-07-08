return {
  "rachartier/tiny-devicons-auto-colors.nvim",
  version = '*',
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  enabled = false,
  event = "VeryLazy",
  config = function()
    require('tiny-devicons-auto-colors').setup()
  end
}
