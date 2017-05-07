function! curl#Process()
  normal! gg

  " Go to either the separator line ..
  try
    execute "/".g:curl_vim_separator
    " Will raise an exception if no separator is found
  catch
    " Or the last line of the file, and add the separator
    execute "normal! Go#".g:curl_vim_separator
  endtry

  " Add 2 new lines
  normal! 2o

  " Empty the end of the file
  .,$d

  " Save the new config file
  write

  " Call curl
  silent r!curl --config %
endfunction
