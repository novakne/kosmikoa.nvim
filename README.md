<p align="center"><img src="https://git.sr.ht/~novakane/kosmikoa.nvim/blob/main/.assets/kosmikoa.jpg"kosmikoa""/></a></p>

# Kosmikoa

> Dark colors scheme for Neovim

<p align="center"><img src="https://git.sr.ht/~novakane/kosmikoa.nvim/blob/main/.assets/lua.png"lua""/></a></p>

# Requirements

-   Neovim > 0.5
-   [Tree-sitter][] - Optional but **highly recommended**
-   [Polyglot][] - Optional, you could look at what plugins they use for
    the languages you like though

> Have a look at [kosmikoa.extras][] for config for terminal and other tools

[polyglot]: https://github.com/sheerun/vim-polyglot
[tree-sitter]: https://github.com/nvim-treesitter/nvim-treesitter
[kosmikoa.extras]: https://git.sr.ht/~novakane/kosmikoa.extras

# Install

Use your favorite plugin manager.

`e.g.` [packer.nvim][]

```lua
use {
    'https://git.sr.ht/~novakane/kosmikoa.nvim',
    -- you can require it directly here
    config = function()
        require'kosmikoa'
    end,
}
```

`e.g.` [vim-plug][]

    Plug 'https://git.sr.ht/~novakane/kosmikoa.nvim'

[packer.nvim]: https://github.com/wbthomason/packer.nvim
[vim-plug]: https://github.com/junegunn/vim-plug

# Usage

    lua require 'kosmikoa'

or

    colorscheme kosmikoa

# Support

## Languages

-   All maintained `Tree-sitter` parsers
-   c/c++
-   clojure
-   css
-   fennel
-   go
-   html5
-   javascript
-   json
-   jsx
-   less
-   log
-   lua
-   markdown
-   moonscript
-   nim
-   python
-   rust
-   scss
-   sh
-   toml
-   typescript
-   xml
-   yaml
-   zig

## Plugins

A lot of plugins should be good if they link colors to defaults _neovim_
groups.

-   [Gitsigns.nvim][]
-   [Hop][]
-   [Lspsaga][]
-   [Signify][]
-   [Telescope][]
-   Tree-sitter modules
    -   [Nvim-ts-rainbow][]
    -   [Nvim-treesitter-refactor][]
    -   [Treesitter-playground][]
-   [Which-key][]

[gitsigns.nvim]: https://github.com/lewis6991/gitsigns.nvim
[hop]: https://github.com/phaazon/hop.nvim
[lspsaga]: https://github.com/glepnir/lspsaga.nvim
[signify]: http//github.com/mhinz/vim-signify
[telescope]: https://github.com/nvim-telescope/telescope.nvim
[nvim-ts-rainbow]: https://github.com/p00f/nvim-ts-rainbow
[nvim-treesitter-refactor]: https://github.com/nvim-treesitter/nvim-treesitter-refactor
[treesitter-playground]: https://github.com/nvim-treesitter/playground
[which-key]: https://github.com/liuchengxu/vim-which-key

# Contributing

> The main repo is at [sr.ht][] use it in priority.

Send patches or question using [git send-email][] to my [public inbox][]
[~novakane/public-inbox@lists.sr.ht][] with project prefix set to
`kosmikoa.nvim`.

```
git config sendemail.to "~novakane/public-inbox@lists.sr.ht"
git config format.subjectPrefix "PATCH kosmikoa.nvim"
```

Or if you're on [Github][] use Github interface.

Format the code with [StyLua][].

I mostly use `c`, `zig`, `lua` and `sh` so if you want to improve other
languages feel free to send a patch or a request so I can look a it.

[sr.ht]: https://git.sr.ht/~novakane/kosmikoa.nvim
[git send-email]: https://git-send-email.io
[public inbox]: https://lists.sr.ht/~novakane/public-inbox
[~novakane/public-inbox@lists.sr.ht]: mailto:~novakane/public-inbox@lists.sr.ht
[github]: https://github.com/novakne/kosmikoa.nvim
[StyLua]: https://github.com/JohnnyMorganz/StyLua

# License

**[MIT][]**

[mit]: LICENSE
