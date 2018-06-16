scriptencoding utf-8
" Version: 0.1.0
" Author:  maxmellon
" License: MIT License

let s:save_cpo = &cpo
set cpo&vim

function! s:get_output(command)
  try
    let output = system(a:command . ' | fzy')
  catch /Vim:Interrupt/
  endtry
  redraw!
  return substitute(output, "\n", '', 'g')
endfunction

function! s:base(command, Callback)
  let output = s:get_output(a:command)
  redraw!
  if v:shell_error == 0 && !empty(output)
    call a:Callback(output)
  endif
endfunction

function! s:get_command()
  let tmp = tempname()
  exe 'redir > ' . tmp
  silent command
  redir END
  let cmd = 'cat ' . tmp . " | tr -d 'b' | tr -d '!' | awk -F ' ' 'NR > 1 {print \":\"$1}'"
  return cmd
endfunction

function! s:execute(command)
  execute a:command
endfunction

function! fzy#quick_cmd#list()
  let cmd = s:get_command()
  if cmd ==# '' | return | endif
  let Callback = { command -> s:execute(command) }
  call s:base(cmd, Callback)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
