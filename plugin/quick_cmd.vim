scriptencoding utf-8
" Version: 0.1.0
" Author:  maxmellon
" License: MIT License

if exists('g:loaded_vim_fzy_quick_cmd')
  finish
endif

let g:loaded_vim_fzy_quick_cmd = 1

let s:save_cpo = &cpo
set cpo&vim

command! FzyQuickCmd call fzy#quick_cmd#list()
nnoremap <Plug>(vim-fzy-quick-cmd_exec) :<C-u>call fzy#quick_cmd#list()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
