"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Author: Victor Borges (@kodestrider)                                     |
"| CreatedAt: 2022-01-01                                                    |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| SHORTCUT LIST                                                            |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"|                                                                          |
"| [NORMAL MODE]                                                            |
"|                                                                          |
"| * <leader>a                                                              |
"|   Open a FUZZY window for searching and selecting diagnostics            |
"|                                                                          |
"| * [count]<leader>c<space>                                                |
"|   Toggles the comment state of the selected lines(s). If the topmost     |
"|   selected line is commented, all selected lines ate uncommented and     |
"|   vice versa                                                             |
"|                                                                          |
"| * <leader>ca                                                             |
"|   Switch to the alternative set of delimiters ("\\" or "\**\" in C/C++)  |
"|                                                                          |
"| * <leader>cA                                                             |
"|   Adds comment delimiters to the end of line and goes into insert mode   |
"|   between them                                                           |
"|                                                                          |
"| * [count]<leader>ci                                                      |
"|   Toggles the comment state of the selected lines(s) individually        |
"|                                                                          |
"| * [count]<leader>cs                                                      |
"|   Comments out the selected lines with a pretty block formatted layout   |
"|                                                                          |
"| * [count]<leader>cy                                                      |
"|   Same as cc except that the commentes line(s) are yanked first          |
"|                                                                          |
"| * [count]<leader>cm                                                      |
"|   Toggles the given lines using only one set of multipart delimiters.    |
"|                                                                          |
"| * <leader>c$                                                             |
"|   Comments the current line from the cursor to the end of line           |
"|                                                                          |
"| * <leader>cu                                                             |
"|   Uncomments the selected lines(s)                                       |
"|                                                                          |
"| * <leader>d                                                              |
"|   Open a FUZZY window for seaching and selecting symbols                 |
"|                                                                          |
"| * <leader>s                                                              |
"|   Open a FUZZY window for seaching and selecting symbols                 |
"|                                                                          |
"| * <leader>fg                                                             |
"|   Open a window with the available fixes if there are any                |
"|                                                                          |
"| * <C-n>                                                                  |
"|   Toggle the NERDTree widnow                                             |
"|                                                                          |
"| * <leader>f                                                              |
"|   Select a code block with visual mode and format it                     |
"|                                                                          |
"| * <leader>rn                                                             |
"|   Open a window which allow you to rename all occurrences of the symbol  |
"|   at once                                                                |
"|                                                                          |
"| * <leader>rn                                                             |
"|   Open a window with all occurrences of the same symbol through the      |
"|   files and change all them at once                                      |
"|                                                                          |
"| * gd                                                                     |
"|   Go to the symbol's definition                                          |
"|                                                                          |
"| * gr                                                                     |
"|   List the symbol's reference used in all opened files                   |
"|                                                                          |
"| * K                                                                      |
"|   Open a preview window with the documentation's symbol                  |
"|                                                                          |
"| * ]g                                                                     |
"|   Navigate to the next diagnostic                                        |
"|                                                                          |
"| * [g                                                                     |
"|   Navigate to the previous diagnostic                                    |
"|                                                                          |
"| * <ESC>                                                                  |
"|   Pressing the key all hightlighs of searching are removed               |
"|                                                                          |
"| * <A-j>                                                                  |
"|   Move the entire line down                                              |
"|                                                                          |
"| * <A-k>                                                                  |
"|   Move the entire line up                                                |
"|                                                                          |
"| * <leader>t                                                              |
"|   If the file under the cursor has a header or a source file, toggle     |
"|   between them using the current buffer.                                 |
"|                                                                          |
"| * <leader>\|                                                             |
"|   If the file under the cursor has a header or a source file, open the   |
"|   another one in a new vertical window, side by side.                    |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"|                                                                          |
"| [VISUAL MODE]                                                            |
"|                                                                          |
"| * if                                                                     |
"|   Map the function inner scope                                           |
"|                                                                          |
"| * af                                                                     |
"|   Map the function inner scope and its definition                        |
"|                                                                          |
"| * ic                                                                     |
"|   Map the class inner scope                                              |
"|                                                                          |
"| * ac                                                                     |
"|   Map the class inner scope and its definition                           |
"|                                                                          |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               PLUGINS                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include plugged and initialize it
call plug#begin('~/.vim/plugged')

" Features
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

" GUI
Plug 'pboettch/vim-highlight-cursor-words'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           GENARAL SETTINGS                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = "\<space>"
set secure
set modeline
set spelllang=en
set nostartofline               " Don't reset cursor to the start of line when moving around
set title                       " Show the filename in the window titlebar
set autoread                    " Automatically read a file when it has been changed outside of (Neo)vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            SEARCH SETTINGS                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set showmatch                   " Show matching brackets/parenthesis
set matchtime=0                 " Don't blink when matching
set incsearch                   " Find as you type on search
set ignorecase                  " By default ignore search case
set smartcase                   " Do not ignore search case if it contains any upper case

" MISC SETTINGS
colorscheme gruvbox
syntax on
filetype plugin on
filetype indent on
set hidden                      " !REQUIRED BY COC
set nobackup                    " !REQUIRED BY COC
set nowritebackup               " !REQUIRED BY COC
set cmdheight=2                 " !REQUIRED BY COC: give more space for displaying messages
set updatetime=300              " !REQUIRED BY COC: lower updatetime improves ux (default: 4000ms)
set shortmess+=c                " !REQUIRED BY COC: don't pass messages to |ins-completion-menu|
set fileencoding=utf8
set encoding=utf8
set termencoding=utf8
set number                      " precede each line with its number
set relativenumber              " Show the line number relative to the cursor position
set nocompatible                " Not compatible with VI
set cursorline                  " Hightlight current cursor line
set wildmenu                    " Display all matching files when user hits <Tab>
set wildmode=longest:list,full  " Allow you to expand the wildmenu
set ruler                       " Show line and column number under cursos position
set equalalways                 " All window should have the same size after splitting
set laststatus=2                " Always show status bar
set shortmess=at                " Help to avoid all the hit-enter prompts caused by file messages

" FORMATTING SETTINGS
set expandtab                   " Use the apropriate number of spaces to inser a <Tab>
set nojoinspaces                " Avoid double spaces when join lines
set tabstop=4                   " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4                " Define each <Tab> as 4 spaces (auto indent)
set nowrap                      " Do NOT wrap text around if it is longer than screen width
set backspace=2                 " Backspace goes to end of previous line if current is empty
set showmatch                   " Highlitght matching brackets
set textwidth=120               " A longer line will be broken after white space to get this width
set shiftround                  " Only indent to multiple of shiftwidth
set softtabstop=4               " <Tab> insert 4 spaces
set autoindent                  " Copy indent from current line when starting a new one
set smartindent                 " Do smart autoindenting when starting a new line
set cindent                     " Get the amount of indent for line according the C indenting rules

" Show "invisible" characters
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
set copyindent                  " Copy the structure of the existing lines indent when autoindenting
set preserveindent              " Preserve as much of the indent structure as possible when changing it

" Make vertical splits pettier
set fillchars+=vert:┃
highlight VertSplit guifg=11

" Turning off auto-insert of comments
augroup auto_comment
    au!
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             PLUGIN CONFIG                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| NERDCommenter Plugin                                                     |
"|                                                                          |
"| Comment the code using the correct characters and allow you alternate    |
"| between the possible delimiters. It tries to predict the correct         |
"| delimiter for a lot of languages, making your live easier.               |
"|                                                                          |
"| COMMANDS(NORMAL):                                                        |
"|                                                                          |
"| * [count]<leader>cs        | NERDCommenterSexy |                         |
"|   Comments out the selected lines with a pretty block formatted layout   |
"|                                                                          |
"| * [count]<leader>cy        | NERDCommenterYank |                         |
"|   Same as cc except that the commentes line(s) are yanked first          |
"|                                                                          |
"| * [count]<leader>ci        | NERDCommenterInvert |                       |
"|   Toggles the comment state of the selected lines(s) individually        |
"|                                                                          |
"| * [count]<leader>c<space>  | NERDCommenterToggle |                       |
"|   Toggles the comment state of the selected lines(s). If the topmost     |
"|   selected line is commented, all selected lines ate uncommented and     |
"|   vice versa                                                             |
"|                                                                          |
"| * [count]<leader>cm        | NERDCommenterMinimal |                      |
"|   Toggles the given lines using only one set of multipart delimiters.    |
"|                                                                          |
"| * <leader>c$               | NERDCommenterToEOL |                        |
"|   Comments the current line from the cursor to the end of line           |
"|                                                                          |
"| * <leader>cA               | NERDCommenterAppend |                       |
"|   Adds comment delimiters to the end of line and goes into insert mode   |
"|   between them                                                           |
"|                                                                          |
"| * <leader>ca               | NERDCommenterAltDelims |                    |
"|   Switch to the alternative set of delimiters ("\\" or "\**\" in C/C++)  |
"|                                                                          |
"| * <leader>cu               | NERDCommenterUncommnet |                    |
"|   Uncomments the selected lines(s)                                       |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDCreateDefaultMappings = 1  " Create default mappings
let g:NERDToggleCheckAllLines = 1    " Enable to check wheter all selected lines is commented or not
let g:NERDDefaultAlign = 'left'      " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDCompactSexyComs = 1        " Tells the script to use nested comments by default
let g:NERDDefaultNesting = 1         " Tells the script to use nested comments by default
let g:NERDSpaceDelims = 1            " Add spaces after comment delimiters by default


"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Asynchronous Lint Engine (ALE) Plugin                                    |
"|                                                                          |
"| Act as a Language Server Protocol (LSP) client while you edit your text  |
"| files. In other words, this plugin allows you to lint while you type.    |
"|                                                                          |
"| FIXME: the ALE documentation suggests that for it to work together with  |
"| COC, ALE should only display the linter output. The LSP should be        |
"| disabled by ALE (g:ale_disable_lsp = 1) and it should consume LSP from   |
"| COC (adding `"diagnostic.displayByAle": true` to ":CocConfig"), however, |
"| it breaks the correct snippets behavior once they are added by COC       |
"| autocomplete and it is immediatelly detected by ALE, making it           |
"| impossible for placeholders to be filled in sequence. In order to fix    |
"| it, the ALE's window which displays the quickfix is disabled and the     |
"| suggested ALE and COC configuration are ignored.                         |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
let g:ale_list_window_size = 5  " show only 5 lines of errors (default: 10)
let g:ale_set_quickfix = 1      " it is populated with any problem which are found by ALE
let g:ale_fix_on_save = 1       " execute the fixers when the file is saved
let g:ale_set_loclist = 0       " it should be disable in favor of quickfix
let g:ale_disable_lsp = 0       " REQUIRED BY COC: <SHOULD BE 1. SEE FIXME ABOVE>
let g:ale_open_list = 0         " <SHOULD BE 1. SEE FIXME ABOVE>. Open a window with the quickfix if there are any

" The linters used by each language
let g:ale_linters = {
\     'c': ['clangtidy'],
\     'cpp': ['clangtidy']
\}

" The fixers used by each language
let g:ale_fixers = {
\     '*': ['remove_trailing_lines', 'trim_whitespace'],
\     'c': ['clang-format'],
\     'cpp': ['clang-format']
\}

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| NERDTree Plugin                                                          |
"|                                                                          |
"| Act as a Language Server Protocol (LSP) client while you edit your text  |
"| files. In other words, this plugin allows you to lint while you type.    |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
let NERDTreeShowHidden = 1
let NERDTreeStatusline = 0

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Airline and Airline-Theme Plugins                                        |
"|                                                                          |
"| Display a bottom status bar with some importante info about the project. |
"| It presents the current (neo)vim mode, the name of the file opened on    |
"| current buffer, the charset used by it, the line and column of the       |
"| cursor position, the total line number, and so.                          |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
let g:airline_theme='wombat'
let g:airline_powerline_fonts=1
let g:airline_skip_empty_sections=1

" Display ALE error info in the status bar
let g:airline#extensions#ale#enabled=0

" Display error and warnings info from Coc in the status bar
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#error_symbol = 'E:'
let g:airline#extensions#coc#warning_symbol = 'W:'
let g:airline#extensions#coc#show_coc_status = 1

let g:airline#extensions#tabline#tab_nr_type=2
let g:airline#extensions#tabline#buffer_nr_show=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
let g:airline_symbols.linenr = ' Ξ '
let g:airline_symbols.maxlinenr = ' '

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| IndentLine Plugin                                                        |
"|                                                                          |
"| Improve the indentation display, adding visible vertical lines at each   |
"| indentation level                                                        |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| COC Plugin                                                               |
"|                                                                          |
"| It install extensions and allow (neo)vim autocomplete the code, search   |
"| for symbols and easily rename them, display the errors and warning       |
"| diagnostics and a lot of modern and powerful features.                   |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Force Coc trigger completion with <C-@> or <c-space>.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             CUSTOM COMMANDS                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| FORMAT COMMAND                                                           |
"|                                                                          |
"| Add `:Format` command to format current buffer using COC                 |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
command! -nargs=0 Format :call CocActionAsync('format')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              LOCAL CONFIG                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| AUTOMATICALLY CLOSE OPENED WINDOW                                        |
"|                                                                          |
"| If quickfix or NERDTree are the only window remaining, close them        |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
augroup AutoCloseVim
  autocmd!
  " Close vim if the quickfix window is the only window visible (and only tab)
  " https://stackoverflow.com/a/7477056
  autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix" | quit | endif
  " Close vim if only thing remaining is NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif
  " TODO: Close vim if all that remains is a no-name buffer
  " autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| EVERYTIME (NEO)VIM IS OPENED                                             |
"|                                                                          |
"| If you open (neo)vim without a file arg, NERDTree is automatically       |
"| actived making navigation easier, but is is avoided otherwise.           |
"| Everytime the (neo)vim is opened, it will check if there are missing     |
"| plugins, if so, it will be installed automatically.                      |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
augroup VimStartupSequence
  autocmd!
  " Open NERDTree if (neo)vim is opened wihout file argument
  autocmd VimEnter *
        \   if !argc()
        \ |   NERDTree
        \ |   wincmd w
        \ | endif

  " Automatically install missing plugins
  autocmd VimEnter *
  \   if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \ |   PlugInstall --sync | q
  \ | endif
augroup END

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| SYMBOL DOCUMENTATION                                                     |
"|                                                                          |
"| Get the word under the cursor and present this documentation in a window |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| HIGHLIGHS SYMBOL AND ITS REFERENCES                                      |
"|                                                                          |
"| Highlight the symbol under the cursor and all its visible references     |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
augroup HighlightTheSymbolAndItsReferences
  autocmd!
  autocmd CursorHold * silent call CocActionAsync('highlight')
augroup END

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| RESTORE THE CURSOR POSITION                                              |
"|                                                                          |
"| Restore the last cursor position when reopening a file.                  |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
augroup RestoreCursorPositionWhenOpeningFile
  autocmd!
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   execute "normal! g`\"" |
        \ endif
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             CUSTOM SHORTCUT                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Open window and allow you to search, see and select all the symbols used |
"| in the current document and navigate to them                             |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>d   open a FUZZY window for seaching and selecting symbols     |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
" Find symbol of current document.
nnoremap <silent><nowait> <leader>d  :<C-u>CocList outline<cr>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Open window and allow you to search, see and select all the symbols used |
"| along the project and navigate to them                                   |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>s   open a FUZZY window for seaching and selecting symbols     |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <silent><nowait> <leader>s  :<C-u>CocList -I symbols<cr>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Open diagnostics window and allow you to search, see and select all the  |
"| errors and warnings if there are any                                     |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>a   open a FUZZY window for seaching and selecting diagnostics |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <silent><nowait> <leader>a  :<C-u>CocList diagnostics<cr>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Fix the diagnostics warnings of the current line with the available      |
"| solutions if there are any                                               |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>fg  open a window with the available fixes if there are any    |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <silent><nowait> <leader>fg  :<C-u>CocFix<cr>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Select the whole C/C++ function or class scope, including its definition |
"| or not.                                                                  |
"|                                                                          |
"| COMMANDS (VISUAL):                                                       |
"|                                                                          |
"| * if          map the function inner scope                               |
"|                                                                          |
"| * af          map the function inner scope and its definition            |
"|                                                                          |
"| * ic          map the class inner scope                                  |
"|                                                                          |
"| * ac          map the class inner scope and its definition               |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Toggle a file system explorer in new window. Using it you can visually   |
"| browse complex directory hierarchies, quickly open files for reading or  |
"| editing, and perform basic file system operations.                       |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <C-n>       toggle the NERDTree window                                 |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <C-n> :NERDTreeToggle<CR>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Formatting selected code                                                 |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>f   select a code block with visual mode and format it         |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Rename all the occurrences of the symbol under the cursor                |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>rn  open a window which allow you to rename all occurrences of |
"|               the symbol at once                                         |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nmap <leader>rn <Plug>(coc-rename)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Refactor all the occurrences of the symbol under the cursor              |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>rn  open a window with all occurrences of the same symbol      |
"|               through  the files and change all them at once             |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nmap <leader>rf  <Plug>(coc-refactor)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Easily navigate to locations where the symbol has been called or         |
"| implemented.                                                             |
"|                                                                          |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * gd          go to the symbol's definition                              |
"|                                                                          |
"| * gr          list the symbol's reference used in all opened files       |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Show the definition and the documentation of the symbol under the cursor |
"| in a preview window                                                      |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * K          open a preview window with the documentation's symbol       |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <silent> K :call <SID>show_documentation()<CR>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Quicly navigate between all diagnostics (warnings and errors) of current |
"| buffer                                                                   |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * ]g        navigate to the next diagnostic                              |
"|                                                                          |
"| * [g        navigate to the previous diagnostic                          |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Clear searching hightlighs                                               |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <ESC>      pressing the key all hightlighs of searching are removed    |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <Esc> :nohlsearch<CR>

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Move entire line up or down                                              |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <A-j>      move the entire line down                                   |
"|                                                                          |
"| * <A-k>      move the entire line up                                     |
"|                                                                          |
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
"| Easily navigate between source and header C/C++ files                    |
"|                                                                          |
"| COMMANDS (NORMAL):                                                       |
"|                                                                          |
"| * <leader>t  if the file under the cursor has a header or a source file, |
"|              toggle between them using the current buffer.               |
"|                                                                          |
"| * <leader>\| if the file under the cursor has a header or a source file, |
"|              open the another one in a new vertical window, side by side.|
"+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+
nnoremap <leader>t :call CocAction('runCommand', 'clangd.switchSourceHeader')<CR>
nnoremap <leader>\| :call CocAction('runCommand', 'clangd.switchSourceHeader', 'vsplit')<CR>
