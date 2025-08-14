# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Notes

## Wipe / Reset

Sometimes just need to wipe and reset:

```
rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## Avante

to make avante work, might have to [manually build](https://github.com/yetone/avante.nvim/issues/612#issuecomment-2375729928)

## Telescope

If telescope does not build properly (missing build dependencies), might need to uninstall + reinstall.

### LSPs

Menu:
```
:Mason
```

[Mason LSP Docs](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#installation)
[Treesitter Docs](https://github.com/nvim-treesitter/nvim-treesitter)

Language servers are managed via `mason` + `mason-lspconfig` + `lsp-config`.

Be sure to install:
- [treesitter language parsers](https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#language-parsers) via `:TSInstall` (`:TSInstallInfo` for info)
- [mason language servers](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers) via `:LspInstall` (`:LspInfo` for info) 

### Linters

Linters managed similar to LSPs^

[Docs](https://github.com/mfussenegger/nvim-lint)

### Live Grep

For best grepping, install ripgrep and fd.
`brew install ripgrep`
`brew install fd`

### Icons

brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true
