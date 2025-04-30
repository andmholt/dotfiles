return {
  'github/copilot.vim',
  enabled = false,
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    -- vim.g.copilot_proxy = ''
    require('copilot').setup({})
  end
}
