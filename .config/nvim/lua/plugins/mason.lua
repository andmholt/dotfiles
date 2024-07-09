return {
  {
    "neovim/nvim-lspconfig",
   version = '*',
   lazy = false,
    dependencies = {
      { "williamboman/mason-lspconfig.nvim" },
      { "williamboman/mason.nvim" },
      -- { "ms-jpq/coq_nvim", branch = "coq" },
      -- { "ms-jpq/coq.artifacts", branch = "artifacts" }, -- snippets
      -- { 'ms-jpq/coq.thirdparty', branch = "3p" } -- 3rd party snippets
    },
    init = function()
      -- vim.g.coq_settings = {
      --  auto_start = true, -- if you want to start COQ at startup
        -- Your COQ settings here
      -- }
    end,
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      -- local coq = require("coq")
      require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup {}
          -- require("lspconfig")[server_name].setup(coq.lsp_ensure_capabilities())
          require("lspconfig.util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
        end
      }
    end
  }
}
