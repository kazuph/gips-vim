" *********************************************************************
" PluginName: Gips-vim
" Maintener: mittan(E-mail => modsound@gmail.com, Twitter => @modsound)
" License: MIT
" *********************************************************************
" todo
" 手動実行と自動実行とで読み込むテキストを変える
" speechの読み上げは連続ではできないようにする
" 初回のみechoがステータスラインに表示されない
" $LANGがjaの場合とenの場合で読み込むtxtを変える
" *********************************************************************

" not reload
if exists("g:loaded_gips")
  finish
endif
let g:loaded_gips = 1

" keymap
nnoremap <Up>    :call gips#Gips()<CR>
nnoremap <Down>  :call gips#Gips()<CR>
nnoremap <Left>  :call gips#Gips()<CR>
nnoremap <Right> :call gips#Gips()<CR>

" added insert mode
inoremap <Up>    俺はカーソルキーを捨てた身だ・・・
inoremap <Down>  なんど言ったらわかるのだ、hjkl以外は悪だと・・・
" inoremap <Left>  日本語環境だと誤動作するのつらい・・・
inoremap <Right> 後悔したか、これがVimの性というものだ・・・

" Inteference enable or not
if exists("g:gips_interference_least_expected")
  call gips#interference()
endif
