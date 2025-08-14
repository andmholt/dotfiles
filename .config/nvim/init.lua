-- bootstrap lazy.nvim, LazyVim and your plugins

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamed"
vim.opt.number = true
vim.opt.termguicolors = true
vim.g.mapleader = " "

vim.env["CODECOMPANION_TOKEN_PATH"] = vim.fn.expand("~/.config")

local function load_env_var_from_file(var, file)
    local f = io.open(file, "r")
    if not f then return end
    for line in f:lines() do
      local k, v = line:match("^([%w_]+)%s*=%s*(.+)$")
      if k == var then
        vim.env[var] = v
        break
      end
    end
    f:close()
  end

-- load_env_var_from_file("OPENAI_API_KEY", vim.fn.expand("~/dev/dotfiles/.env"))
-- load_env_var_from_file("ANTHROPIC_API_KEY", vim.fn.expand("~/dev/dotfiles/.env"))
-- load_env_var_from_file("TAVILY_API_KEY", vim.fn.expand("~/dev/dotfiles/.env"))

require("config.lazy")
