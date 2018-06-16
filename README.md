# vim-fzy-quick-cmd

![Support Vim 8.0.0039 or above](https://img.shields.io/badge/support-Vim%208.0.0039%20or%20above-yellowgreen.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

![](https://raw.githubusercontent.com/MaxMEllon/demos/master/vim-fzy-quick-cmd/demo.gif)

**A plugin to find file on rails project by fzy within vim.**

Requirements
---
- Vim 8.0.0039 or above. (need `has('lambda')`)
- fzy 0.8 or above.
- Linux or macOS.

Usage
---

### Insallation

[Neobundle](https://github.com/Shougo/neobundle.vim) / [Vundle](https://github.com/gmarik/Vundle.vim) / [vim-plug](https://github.com/junegunn/vim-plug)

```vim
NeoBundle 'MaxMEllon/vim-fzy-quick-cmd'
Plugin 'MaxMEllon/vim-fzy-quick-cmd'
Plug 'MaxMEllon/vim-fzy-quick-cmd'
```

### Basic usage

```vim
:FzyQucikCmd
```

Following you write next config, if you want to bind any key.

```vim
nmap <Leader>c <Plug>(vim-fzy-quick-cmd_exec)
```

Auther
---
- MaxMEllon (https://github.com/MaxMEllon)

LICENSE
---
- MIT License
