call plug#begin()

" vim-plug
Plug 'lervag/vimtex'

Plug 'SirVer/ultisnips'

Plug 'artur-shaik/vim-javacomplete2'
call plug#end()


let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

let g:UltiSnipsSnippetDirectories=["UltiSnips", "MySnippets"]

let g:vimtex_view_method = 'zathura_simple'

" This will only work if `vim --version` includes `+clientserver`!
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

let g:vimtex_compiler_latexmk = {
        \'aux_dir' : '',
        \'out_dir' : '',
        \'callback' : 1,
        \'continuous' : 1,
        \'executable' : 'latexmk',
        \'hooks' : [],
        \'options' : [
        \  '-verbose',
        \  '-file-line-error',
        \  '-synctex=1',
        \  '-interaction=nonstopmode',
        \ ],
        \}
