# nvim-base46

A custom port of [NvChad's base46 colorscheme](https://github.com/NvChad/base46) to be used in any
Neovim environment. By "custom" I mean somewhat modified, removing some unnecessary highlight groups
that was apparent in the original repo.

Currently this is still a **work in progress**, including support for plugins that I mainly use.

## Installation

Install the theme with your preferred package manager, such as
[folke/lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "yardnsm/nvim-base46",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

---

## License

MIT © [Yarden Sod-Moriah](https://ysm.sh/)
