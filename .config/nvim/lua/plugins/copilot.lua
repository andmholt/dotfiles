return {
  'github/copilot.vim',
  version = '*',
  enabled = false,
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    -- vim.g.copilot_proxy = ''
  end
}
