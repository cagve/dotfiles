inoremap <C-k> <c-g>u<Esc>[s1z=`]a<c-g>u 
inoremap <C-l> <Esc>A
nmap <leader>vc :VimtexCompile<CR>
nmap <leader>vsc :silent! VimtexCompile<CR>
nmap <leader>g :exe "! tmux send-keys -t 1 'compileps master.tex' enter"<CR>

 
set spell
set spelllang=es
set textwidth=80
set conceallevel=0
set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

let g:Tex_FoldedSections = 'part|addpart,chapter|addchap,section|addsec,subsection,subsubsection,paragraph,subparagraph'
let g:vimtex_enabled=1
let g:vimtex_view_method = 'zathura'
let g:vimtex_complete_recursive_bib=1
let g:vimtex_view_general_viewer = 'zathura' 
let g:indentLine_setConceal = 0
let b:AutoPairs={'(':')', '[':']', '{':'}',"'":"'", '`':'`'}

let g:vimtex_latexmk_options="-pdf -pdflatex='pdflatex -file-line-error -shell-escape -synctex=1'"
