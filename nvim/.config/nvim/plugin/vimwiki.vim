" ~~~~~~~
" VIMWIKI
" ~~~~~~~
let g:vimwiki_list = [{
  \ 'template_path': '$HOME/.config/nvim/vimwiki/templates',
  \ 'template_default': 'def_template',
  \ 'syntax': 'markdown',
  \ 'ext': 'md',
  \ 'template_ext': '.html'}]
let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script' 
let g:vimwiki_hl_headers = 1
let g:vimwiki_ext2syntax = {}
let g:vimwiki_global_ext = 0
