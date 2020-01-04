# today.vim

Insert date and time string of today like Microsoft Excel.

## Install

```For Dein.vim(TOML)
[[plugins]]
repo = 'vimtry1/today.vim'
```
```dein.vim(call)
call dein#add('Shougo/deoplete.nvim')
  ```

## Feature

| Command | keymapping | Insert Strings |
|:--|:--:|:--|
| :Today / :NowDate | Ctrl-; | Insert date strings of formatting 'YYYY/MM/DD'|
| :NowTime | Ctrl-: | Insert time strings of formatting 'HH:MI:SS'|
| :Now / :NowDateTime | Ctrl-+ | Insert date and time strings of formatting 'YYYY/MM/DD HH:MI:SS'|

These key mappings are enabled at normal-mode and insert-mode.
