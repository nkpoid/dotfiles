let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
