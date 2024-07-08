# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.



## Notes

### LSPs

Menu:
```
:Mason
```

[Mason LSP Docs](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#installation)
[Treesitter Docs](https://github.com/nvim-treesitter/nvim-treesitter)

Language servers are managed via `mason` + `mason-lspconfig` + `lsp-config`.

Be sure to install treesitter [language parsers](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#language-parsers) for all languages you will be working in.

### Linters

Linters managed similar to LSPs^

[Docs](https://github.com/mfussenegger/nvim-lint)

### Live Grep

For best grepping, install ripgrep and fd.
`brew install ripgrep`
`brew install fd`
