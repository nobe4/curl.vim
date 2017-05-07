" Load the plugin once && ensure vim is nocompatible
if exists("g:curl_vim_version") || &cp
  finish
endif

" plugin version
let g:curl_vim_version = 0.1

if !exists("g:curl_vim_separator")
  let g:curl_vim_separator = " --- response ---"
endif
" Heh, nothing here, I don't want to impose
