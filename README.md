<p align="center"><img src=".assets/kosmikoa.png?raw=true "kosmikoa""/></a></p>

<!--toc-->
- [Kosmikoa](#kosmikoa)
    * [Screenshots](#screenshots)
    * [Requirements](#requirements)
    * [Installation](#installation)
    * [Customisation](#customisation)

<!-- tocstop -->

# Kosmikoa

> Colors scheme for Neovim

## Screenshots


## Requirements

* Neovim > 0.5
* [Polyglot](https://github.com/sheerun/vim-polyglot) __and / or__ [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) are not obligatory but really __recommended__

> Some language looks better with Treesitter on or off, try both

## Installation

With **packer.nvim**
``` lua
  use {
    'novakne/kosmikoa.nvim',
    config = function()
      require'kosmikoa'.setup()
    end,
  }


```


## Customisation

> Every code below is written in `lua`

If you want to change a color you can use something like this:
``` lua
require'kosmikoa'.setup {
  colors = {
    base00 = '#000000',
    blue03 = '#00ffff',
  }
}
```

Default colors:
``` lua
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


  -- [ Main colors ]
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


  -- [ Additional colors ]
  err       = '#ec5382',
  good      = '#62e89e',

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

