return {
  {
    "neovim/nvim-lspconfig",
   version = '*',
    lazy = false,
    dependencies = {
      { "williamboman/mason-lspconfig.nvim", commit = "1a31f82" },
      { "williamboman/mason.nvim", commit = "4da89f3" },
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers {
        function (server_name)
          require("lspconfig")[server_name].setup {}
          require("lspconfig.util").root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
        end
      }
    end
  }
}
