function! myspacevim#before() abort
    " you can defined mappings in bootstrap function
    " for example, use kj to exit insert mode.
    let g:python3_host_prog = '/usr/bin/python3'
endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
endfunction
