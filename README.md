# gruber-dark.nvim

A polished Neovim colorscheme inspired by the classic Gruber Dark / Gruber Darker palette.

## Features

- Gruber Dark inspired palette
- Treesitter support
- LSP diagnostics and semantic token highlights
- Telescope
- Neo-tree and NvimTree
- nvim-cmp and blink.cmp
- GitSigns
- WhichKey
- lazy.nvim
- lualine theme
- Oil.nvim
- Snacks.nvim
- Render Markdown
- Noice and Notify basics
- Optional transparent background
- Terminal colors

## Installation

### Lazy.nvim

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
    })

    vim.cmd.colorscheme("gruber-dark")
  end,
}
```

### Packer

```lua
use({
  "d-bastian/gruber-dark.nvim",
  config = function()
    require("gruber-dark").setup()
    vim.cmd.colorscheme("gruber-dark")
  end,
})
```

### Manual install

```bash
mkdir -p ~/.config/nvim/pack/themes/start
git clone https://github.com/d-bastian/gruber-dark.nvim ~/.config/nvim/pack/themes/start/gruber-dark.nvim
```

Then in `init.lua`:

```lua
vim.cmd.colorscheme("gruber-dark")
```

## Configuration

```lua
require("gruber-dark").setup({
  transparent = false,
  terminal_colors = true,
  dim_inactive = false,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
  integrations = {
    blink_cmp = true,
    cmp = true,
    gitsigns = true,
    indent_blankline = true,
    lazy = true,
    lsp = true,
    lualine = true,
    mini = true,
    neo_tree = true,
    noice = true,
    notify = true,
    nvim_tree = true,
    oil = true,
    render_markdown = true,
    snacks = true,
    telescope = true,
    treesitter = true,
    which_key = true,
  },
})
```

## Lualine

```lua
require("lualine").setup({
  options = {
    theme = "gruber-dark",
  },
})
```

## Palette

| Name | Hex |
|---|---|
| bg | `#181818` |
| bg_dark | `#101010` |
| bg_high | `#282828` |
| bg_visual | `#453d41` |
| fg | `#e4e4ef` |
| fg_bright | `#f4f4ff` |
| fg_muted | `#95a99f` |
| gray | `#52494e` |
| yellow | `#ffdd33` |
| green | `#73c936` |
| blue | `#96a6c8` |
| red | `#f43841` |
| orange | `#cc8c3c` |
| purple | `#9e95c7` |

## License

MIT
