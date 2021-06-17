<p align="center"><img src="https://git.sr.ht/~novakane/kosmikoa.nvim/blob/main/.assets/kosmikoa.jpg"kosmikoa""/></a></p>

# Kosmikoa

> Colors scheme for Neovim

<p align="center"><img src="https://git.sr.ht/~novakane/kosmikoa.nvim/blob/main/.assets/lua.png"lua""/></a></p>

## Requirements

-   Neovim > 0.5

-   Recommended
    -   [Polyglot](https://github.com/sheerun/vim-polyglot)
    -   [Tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)

> Some language looks different with Tree-sitter on or off, try both

## Install

e.g. [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
    'https://git.sr.ht/~novakane/kosmikoa.nvim',
    branch = 'main',
    config = function()
        require'kosmikoa'.setup()
    end,
}


```

e.g. [vim-plug](https://github.com/junegunn/vim-plug)

`Plug 'https://git.sr.ht/~novakane/kosmikoa.nvim'`

## Usage

`lua require 'kosmikoa'.setup()`

or

`colorscheme kosmikoa`

## Config

> Code below is written in `lua`

If you want to change a color you can use something like this:

```lua

require'kosmikoa'.setup {
    colors = {
        base00 = '#000000',
        blue03 = '#00ffff',
    }
}

```

Default colors:

```lua

local colors = {
    base00 = '#23222b',
    base01 = '#474557',
    base02 = '#59566d',
    base03 = '#6b6883',
    base04 = '#7e7b97',
    base05 = '#9491a8',
    base06 = '#a9a7b9',
    base07 = '#bfbdcb',
    base08 = '#d4d3dc',
    base09 = '#eae9ee',

    pink00   = '#fc65b0',
    pink01   = '#e862ac',
    pink02   = '#e980bb',
    pink03   = '#e98fc2',
    pink04   = '#ea9fc9',
    pink05   = '#ebafd0',
    pink06   = '#ebbfd8',

    yellow00 = '#e8ec77',
    yellow01 = '#eed87a',
    yellow02 = '#eeda88',
    yellow03 = '#efdd96',
    yellow04 = '#f2f4b3',
    yellow05 = '#efe3b3',
    yellow06 = '#eee5c1',

    blue00   = '#57bbf4',
    blue01   = '#69b6e6',
    blue02   = '#78bce7',
    blue03   = '#89c3e9',
    blue04   = '#9acaea',
    blue05   = '#aad1ea',
    blue06   = '#bad8eb',

    err       = '#ec5382',

    green00   = '#62e89e',
    green01   = '#7fe792',
    green02   = '#74dfb9',
    green03   = '#2fe5b5',

    orange00  = '#f08c89',
    orange01  = '#f09895',
    orange02  = '#efa4a2',
    orange03  = '#efb1af',
    orange04  = '#efbdbb',
    orange05  = '#eec9c7',

    magenta00 = '#be8fde',
    magenta01 = '#c49be0',
    magenta02 = '#caa7e2',

    cyan00    = '#00cfd0',
}

```

## Support

### Languages

-   All maintained `Tree-sitter` parsers

*   c/c++
*   clojure
*   css
*   fennel
*   go
*   html5
*   javascript
*   json
*   jsx
*   less
*   log
*   lua
*   markdown
*   moonscript
*   nim
*   python
*   rust
*   scss
*   sh
*   toml
*   typescript
*   xml
*   yaml
*   zig

### Plugins

-   [Gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
-   [Hop](https://github.com/phaazon/hop.nvim)
-   [Lspsaga](https://github.com/glepnir/lspsaga.nvim)
-   [Signify](http//github.com/mhinz/vim-signify)
-   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
-   Tree-sitter modules
    -   [Nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
    -   [Nvim-treesitter-refactor](https://github.com/nvim-treesitter/nvim-treesitter-refactor)
    -   [Treesitter-playground](https://github.com/nvim-treesitter/playground)
-   [Which-key](https://github.com/liuchengxu/vim-which-key)

# Contributing

Send patches or questions using [git send-email](https://git-send-email.io) to my [public inbox](https://lists.sr.ht/~novakane/public-inbox)  
`~novakane/public-inbox@lists.sr.ht` with project prefix set to `kosmikoa.nvim`:

```
git config sendemail.to "~novakane/public-inbox@lists.sr.ht"
git config format.subjectPrefix "PATCH kosmikoa.nvim"
```

Or if you're on Github use Github interface

# License

**[MIT](LICENSE)**
