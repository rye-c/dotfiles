" NerdTree shortcut
"Changing default NERDTree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <C-t> :NERDTreeToggle<CR>

" Escape when in terminal mode
autocmd TermOpen * setlocal nonumber norelativenumber
tnoremap <esc><esc> <C-\><C-n>
