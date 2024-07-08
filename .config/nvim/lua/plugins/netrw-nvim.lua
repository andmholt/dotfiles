return {
  'prichrd/netrw.nvim',
    version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require('netrw').setup({
      use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
      mappings = {}, -- Custom key mappings
    })
  end
}
