
"=============================================================================
" FILE: today.vim
" AUTHOR:  Vim Try / https://vim.blue
" License: MIT license
"=============================================================================
function! CalcDate(target)
   let s:now = localtime()
   if a:target ==# 'date'
       let s:dateform = "%Y/%m/%d"
   elseif a:target ==# 'time'
       let s:dateform = "%H:%M:%S"
   elseif a:target ==# 'datetime'
       let s:dateform = "%Y/%m/%d %H:%M:%S"
   endif
   let s:nowstr = strftime(s:dateform, s:now)
   execute ":normal a" . s:nowstr
endfunction

" Define Commands
command! Today call CalcDate('date')
command! NowDate call CalcDate('date')
command! NowTime call CalcDate('time')
command! Now call CalcDate('datetime')
command! NowDateTime call CalcDate('datetime')

" Keymaps
nnoremap <C-;> :NowDate<CR>
nnoremap <C-:> :NowTime<CR>
nnoremap <C-+> :NowDateTime<CR>
inoremap <C-;> <C-o>:NowDate<CR>
inoremap <C-:> <C-o>:NowTime<CR>
inoremap <C-+> <C-o>:NowDateTime<CR>

