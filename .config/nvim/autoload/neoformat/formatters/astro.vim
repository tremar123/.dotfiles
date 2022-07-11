function! neoformat#formatters#astro#enabled() abort
    return ['prettier', 'prettierd']
endfunction

function! neoformat#formatters#astro#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['-s 4', '-q'],
        \ 'stdin': 1
        \ }
endfunction

function! neoformat#formatters#astro#prettierd() abort
    return {'exe': prettierd }
endfunction
