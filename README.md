# nvim-line

A source for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) that provides completion for file lines.

## Installation

Make the plugin available to nvim with [Lazy](https://github.com/folke/lazy.nvim) by specifying it as a dependency to `nvim-cmp`:

```lua
{
  'hrsh7th/nvim-cmp',
  ...
  dependencies = {
    ...
    'skepticspriggan/cmp-line'
  }
}
```

Add the plugin as completion source for `nvim-cmp`:

```lua
require('cmp').setup({
  sources = {
    ...
    { name = 'cmp-line' },
  },
})
```

## Configuration

Add a table to the `option` field in the definition of the completion source:

```lua
cmp.setup {
  ...
  sources = {
    {
      name = 'cmp-line',
      option = {
        file = "/path/to/file.txt"
      }
    }
  }
}
```
