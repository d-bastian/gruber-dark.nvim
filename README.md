# gruber-dark.nvim

A ready-to-go Neovim colorscheme inspired by the classic Gruber Dark / Gruber Darker palette.

## Install with Lazy.nvim

```lua
{
  "d-bastian/gruber-dark.nvim",
  name = "gruber-dark",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruber-dark").setup({
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
      },
    })

    vim.cmd.colorscheme("gruber-dark")
  end,
}
```

For a local install, put this folder somewhere such as:

```text
~/.config/nvim/plugins/gruber-dark.nvim
```

Then use Lazy.nvim with:

```lua
{
  dir = "~/.config/nvim/plugins/gruber-dark.nvim",
  name = "gruber-dark",
  lazy = false,
  priority = 1000,
  config = function()
    require("gruber-dark").setup()
    vim.cmd.colorscheme("gruber-dark")
  end,
}
```

## Install with Packer

```lua
use({
  "~/.config/nvim/plugins/gruber-dark.nvim",
  config = function()
    require("gruber-dark").setup()
    vim.cmd.colorscheme("gruber-dark")
  end,
})
```

## Manual install

Copy this folder into:

```text
~/.config/nvim/pack/themes/start/gruber-dark.nvim
```

Then add this to your `init.lua`:

```lua
vim.cmd.colorscheme("gruber-dark")
```

## Options

```lua
require("gruber-dark").setup({
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
})
```

## Included integrations

- Treesitter
- LSP diagnostics
- Telescope
- Neo-tree
- NvimTree
- nvim-cmp
- blink.cmp
- GitSigns
- WhichKey
- lazy.nvim
- lualine highlight groups
- indent-blankline / mini.indentscope
- Noice / Notify basics

## Palette

- Background: `#181818`
- Dark background: `#101010`
- Highlight background: `#282828`
- Foreground: `#e4e4ef`
- Bright foreground: `#f4f4ff`
- Yellow: `#ffdd33`
- Green: `#73c936`
- Blue: `#96a6c8`
- Orange/comment: `#cc8c3c`
- Red: `#f43841`
- Purple: `#9e95c7`
