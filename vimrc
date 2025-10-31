"-----------------
"General settings:
"-----------------
"Load the Vim default settings:
unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

"Ensures fast terminal connection:
set ttyfast

"Minimizes unnecessary screen redraws:
set lazyredraw

"Preserves unsaved changes, markers and undo history of inactive buffers:
set hidden

"Prepends '*' and '+' as the main registers for accessing the clipboard:
set clipboard^=unnamed,unnamedplus

"Extends Vim's compatibility to different end-of-file formats:
set fileformats=unix,dos,mac

"Enables UTF-8 encoding:
set encoding=utf-8

"Completely disable flash or beep bells:
set belloff=all
set noerrorbells
set visualbell t_vb=

"Enable the mouse in all modes with right-click popup menu support:
set mouse=a
set mousemodel=popup_setpos

"Customize the right-click popup menu:
nnoremenu 1.10 PopUp.&Paste gP
vnoremenu 1.10 PopUp.Cu&t x<C-\><C-G>
vnoremenu 1.20 PopUp.&Copy y<C-\><C-G>
vnoremenu 1.30 PopUp.&Paste "_c<Esc>gp<C-\><C-G>
sunmenu PopUp

"Load global plugins:
packadd! nohlsearch
packadd! cfilter
packadd! matchit
packadd! comment
packadd! hlyank

"Disable built-in smart indentation in favor of the type-specific indentation:
set nosmartindent
set nocindent

"Enable automatic indentation by copying whitespace patterns of previous lines:
set autoindent
set copyindent

"Do not break alignments and help fixing their whitespace patterns when changing indentation:
set nopreserveindent
set noshiftround

"Enable tab expansion to space characters and set indentation width to 4 spaces:
set expandtab
set shiftwidth=4
set softtabstop=4

"Sets custom symbols for hidden characters when 'list' option is set:
set listchars=tab:··,trail:·

"Configure english and brazilian portuguese spell checking in insert mode completion:
set spelllang=en,pt_br
set spellfile=$HOME/.vim/spell/en.utf-8.add,$HOME/.vim/spell/pt.utf-8.add
set complete+=kspell

"Preserves the cursor column on commands like <C-D>, <C-U> and on buffer switching:
set nostartofline

"Switches to a window/tab containing the buffer instead of making a redundant split:
set switchbuf=useopen,usetab

"Allows to select actual retangles of text in visual block mode:
set virtualedit=block

"Enable persistent status line and edit its content:
set laststatus=2
set statusline=                 "clear statusline
set statusline+=%-6.([%n%M]%)\  "buffer number and modified flag
set statusline+=%<%f\           "relative file path
set statusline+=%=\             "right alignment marker
set statusline+=%6.(%l,%)       "current line number
set statusline+=%-7.(%c%V%)\    "current column and virtual column numbers
set statusline+=%P              "percentage through file

"Removes the annoying dashes from the vertical split separators:
set fillchars=vert:\ ,fold:-

"Sets the terminal title to the active filename:
set title

"Show the current line number and relative distances to other lines:
set number
set relativenumber

"Show the active mode, but not the current command, at the botton of the screen:
set showmode
set noshowcmd

"Makes Vim show as much as possible of the last line on the screen:
set display-=truncate
set display+=lastline

"Wrap lines on some special characters, rather than on the last fitting character:
set wrap
set linebreak

"Sets the maximum line width, in columns, when doing manual formatting:
set textwidth=79

"Disable automatic formatting of text and comments:
set formatoptions-=t
set formatoptions-=c
set formatoptions-=l

"Enables manual formatting of comments:
set formatoptions+=q

"Automatically insert the comment character only in insert mode:
set formatoptions+=r
set formatoptions-=o

"Automatically deletes the comment character when joining comment lines:
set formatoptions+=j

"Appends only one extra space when joining lines:
set nojoinspaces

"Enables reporting of all changes in the file:
set report=0

"Sets the number of past commands and searches to be stored in history:
set history=1000

"Asks for confirmation when closing with unsaved changes:
set confirm

"Automatically reload the buffer on external file changes:
set autoread

"Highlight matching characters as they are entered in a search:
set hlsearch
set incsearch

"Highlights searches with the same colorscheme:
highlight! link Search IncSearch

"Make pattern searching case-sensitive only if there is any capital letter in the pattern:
set ignorecase
set smartcase

"Enables recursive file searching in the current working directory:
set path=**

"Set file patterns to be ignored on file searching:
set wildignore=**/.git/**,**/.hg/**,**/.svn/**,**/.cache/**,**/tmp/**
set wildignore+=*~,tags,TAGS,*.swp,*.bak,*.bkp,*.orig,*.old,*.tmp
set wildignore+=*.aux,*.dep,*.blg,*.idx,*.extra,*.gcda,*.gcno,*.gcov
set wildignore+=*.a,*.sa,*.o,*.ko,*.so,*.so.*,*.out,*.lib,*.map,*.elf,*.dll,*.exe
set wildignore+=*.jar,*.class,*.war,*.pyc,*.pyo,*.pyd,*.mat,*.fig,*.tat,*.pcap,*.drawio
set wildignore+=*.spl,*.deb,*.rpm,*.pkg,*.bin,*.tar,*.iso,*.img,*.AppImage,*.db*,*.sqlite*
set wildignore+=*.zip,*.rar,*.bz2,*.tbz,*.gz,*.tgz,*.lz,*.rz,*.sz,*.xz,*.z,*.Z,*.7z,*.cab
set wildignore+=*.xpm,*.eps,*.jpg,*.jpeg,*.ico,*.png,*.svg,*.bmp,*.gif,*.tif,*.tiff
set wildignore+=*.avi,*.mp4,*.mkv,*.flv,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.flac,*.webm
set wildignore+=*.dvi,*.ps,*.pdf,*.PDF,*.djv,*.djvu,*.eap,*.vpp,*.vdi,*.vbox
set wildignore+=*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.rtf,*.rtfd
set wildignore+=*.odt,*.fodt,*.ods,*.fods,*.odp,*.fodp,*.odg,*.fodg

"Add popup menu and fuzzy/longest matching to command-line mode completion:
set wildmenu
set wildoptions=pum,fuzzy
set wildmode=longest:full,full

"Make completion of files and directories case-insensitive:
set nofileignorecase
set wildignorecase

"Disables scanning of included files in insert mode completion:
set complete-=i

"Add popup info and fuzzy/longest matching to insert mode completion:
set completeopt-=preview
set completeopt+=popup,fuzzy,longest
set completepopup=height:10,width:60

"Sets popup windows in place of preview windows:
set previewpopup=height:10,width:60

"Set size limits for popup menus:
set pumheight=10
set pummaxwidth=90

"Set custom directories for backup, undo, swap and viminfo files:
set nobackup writebackup noundofile swapfile
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set directory=$HOME/.vim/swap//
set viminfo+=n$HOME/.vim/viminfo

"Open split panes to right and bottom:
set splitright
set splitbelow

"Set the minimum number of visible lines and columns around the cursor:
set scrolloff=2
set sidescroll=1
set sidescrolloff=2

"Enable folding with all folds open on buffer start:
set foldenable
set foldlevelstart=99

"Disables the fold column in diff mode:
set diffopt+=foldcolumn:0

"Set a sane colorscheme in diff mode:
highlight! link DiffDelete Normal
highlight! link DiffAdd Visual
highlight! link DiffChange Visual
highlight! link DiffText Todo

"--------------------------
"Global variables settings:
"--------------------------
"Tweaks c/cpp files (ignores non-GCC ':make' messages):
let g:compiler_gcc_ignore_unmatched_lines=1

"Tweak latex files:
let g:tex_fold_enabled=1    "Enables folding of chapters, sections etc.
let g:tex_comment_nospell=1 "Disables spell checking in comments

"Tweaks markdown files (enables fenced code block syntax highlighting):
let g:markdown_fenced_languages = ['vim', 'java', 'cpp', 'python', 'octave=matlab', 'latex=tex', 'sh', 'php']

"Tweaks rst files (enables fenced code block syntax highlighting):
let g:rst_syntax_code_list = ['vim', 'java', 'cpp', 'python', 'sh', 'php']

"Tweaks sh files (sets the maximum level of folding):
let g:sh_fold_enabled=7

"Tweaks vim files (enables folding of augroups and functions):
let g:vimsyn_folding='af'

"Tweaks the Hlyank plugin (sets the highlight duration):
let g:hlyank_duration = 100

"Tweaks the Termdebug plugin (makes it open in vertical split):
let g:termdebug_wide = 1

"Tweak the Netrw plugin:
let g:netrw_banner=0                                                                           "Disables annoying banner
let g:netrw_altv=1                                                                             "Opens splits to the right
let g:netrw_alto=1                                                                             "Opens splits to the bottom
let g:netrw_liststyle=3                                                                        "Makes tree view the default

let s:escape='substitute(escape(v:val, ".$~"), "*", ".*", "g")'
let g:netrw_list_hide=join(map(split(&wildignore, ','), '"^".' . s:escape . '. "/\\=$"'), ',') "Ignores wildignore'd patterns
let g:netrw_list_hide.=',^\.\.\=/\=$'                                                          "Ignores the pattern '..='
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'                                                 "Ignores dotfiles

"Tweak the Copilot plugin:
let g:copilot_enabled = 0      "Disables auto suggestions
let g:copilot_no_maps = v:true "Disables all custom key mappings

"---------------------------------
"Custom key mappings and commands:
"---------------------------------
"Makes the 'clear' command also remove search highlights and update diff mode:
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

"Makes the 'interrupt' command also trigger the InsertLeave autocommand:
inoremap <C-C> <ESC><C-C>

"Map function keys for quicker buffer switching:
nnoremap <silent> <F2> <Cmd>bprevious<CR>
nnoremap <silent> <F3> <Cmd>bnext<CR>

"Map tab keys to manually trigger and accept Copilot suggestions:
function s:CopilotCycleSuggest()
    if empty(copilot#GetDisplayedSuggestion().text)
        call copilot#Suggest()
    else
        call copilot#Next()
    endif
    return ''
endfunction

inoremap <silent><script><nowait><expr> <S-Tab> <SID>CopilotCycleSuggest()
inoremap <silent><script><nowait><expr> <Tab> copilot#AcceptLine("\<Tab>")

"Create a custom command for launching the Copilot CLI:
if executable('copilot')
    command -nargs=* CopilotCLI execute 'vertical terminal ++close copilot ' . <q-args>
endif

"Replaces the default 'bdelete' commands to prevent closing the last window:
function s:BufferDelete(bang, args)
    let arglist = empty(a:args) ? [''] : split(a:args)

    for arg in arglist
        let is_current_buffer = empty(arg) ||
              \ (str2nr(arg) > 0 ? str2nr(arg) : bufnr(arg)) == bufnr('%')

        if is_current_buffer
            let normal_windows = filter(range(1, winnr('$')),
                  \ {_, n -> getbufvar(winbufnr(n), '&buftype') ==# ''})

            let are_all_windows_showing_current_buffer = len(normal_windows) > 0 &&
                  \ len(filter(copy(normal_windows), {_, n -> winbufnr(n) == bufnr('%')})) == len(normal_windows)

            if are_all_windows_showing_current_buffer
                let listed_plus_current_buffers = filter(range(1, bufnr('$')),
                      \ {_, b -> buflisted(b) && getbufvar(b, '&buftype') ==# '' || b == bufnr('%')})

                if len(listed_plus_current_buffers) == 1
                    execute 'enew'
                else
                    execute 'bnext'
                endif

                if buflisted(bufnr('#'))
                    execute 'bdelete'.a:bang.' # | redraw'
                endif

            else
                execute 'bdelete'.a:bang
            endif

        else
            execute 'bdelete'.a:bang.' ' . arg
        endif
    endfor
endfunction

command -bang -nargs=* -complete=buffer Bdelete call s:BufferDelete(<q-bang>, <q-args>)
cnoreabbrev <expr> bd (getcmdtype() == ':' && getcmdline() =~ '^\s*bd!*$') ? 'Bdelete' : 'bd'
cnoreabbrev <expr> bde (getcmdtype() == ':' && getcmdline() =~ '^\s*bde!*$') ? 'Bdelete' : 'bde'
cnoreabbrev <expr> bdel (getcmdtype() == ':' && getcmdline() =~ '^\s*bdel!*$') ? 'Bdelete' : 'bdel'
cnoreabbrev <expr> bdele (getcmdtype() == ':' && getcmdline() =~ '^\s*bdele!*$') ? 'Bdelete' : 'bdele'
cnoreabbrev <expr> bdelet (getcmdtype() == ':' && getcmdline() =~ '^\s*bdelet!*$') ? 'Bdelete' : 'bdelet'
cnoreabbrev <expr> bdelete (getcmdtype() == ':' && getcmdline() =~ '^\s*bdelete!*$') ? 'Bdelete' : 'bdelete'

"--------------
"Auto commands:
"--------------
"WinEnter: enter a window different from the previous one, regardless of whether to the same buffer, to a different open buffer or to a different new buffer.
"BufEnter: enter a buffer different from the previous one, regardless of whether in the same window, in a different open window or in a different new window.
"BufWinEnter: enter a buffer different from the previous one, in the same window or in a different new window.
"When more than one event apply, the order of ocurrence is: WinEnter->BufEnter->BufWinEnter.

"Turn the F1 function key into a help toggle:
augroup SmartHelp
    autocmd!
    autocmd Filetype * if maparg('<F1>','n') != '' | execute 'nunmap <buffer> <F1>' | endif
    autocmd Filetype help if &l:buftype ==# 'help' | nnoremap <buffer> <F1> <Cmd>helpclose<CR> | endif
augroup END

"Automatically reload and notify a changed buffer on more events:
augroup SmartBufferReload
    autocmd!
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif
    autocmd FileChangedShellPost * redraw | echohl WarningMsg | echomsg "File changed on disk. Buffer reloaded." | echohl None
augroup END

"Unlist certain buftypes:
augroup SmartBufUnlist
    autocmd!
    autocmd BufWinEnter * if &l:buftype ==# 'quickfix' | setlocal nobuflisted | endif
    autocmd TerminalOpen,BufWinEnter * if &l:buftype ==# 'terminal' | setlocal nobuflisted | if bufexists('gdb-communication') | call setbufvar('gdb-communication','&buflisted',0) | endif | endif
augroup END

"Overwrite filetype-specific format options:
augroup FormatOptionsOverwrite
    autocmd!
    autocmd Filetype * setlocal formatoptions<
augroup END

"Add filetype-specific characters to be recognized as keywords:
augroup SmartKeyword
    autocmd!
    autocmd Filetype * setlocal iskeyword<
    autocmd Filetype help if &l:buftype ==# 'help' | setlocal iskeyword=!-~,^*,^\|,^\",192-255 | endif
    autocmd Filetype matlab setlocal iskeyword+=.
    autocmd Filetype tex setlocal iskeyword+=-,:
augroup END

"Set a cached fuzzy finder function for file searching:
let s:files_cache = []

augroup CachedFuzzyFind
    autocmd!
    autocmd CmdlineEnter * let s:files_cache = []
augroup END

function! FuzzyFindFunc(cmd_arg, cmd_complete)
    if empty(s:files_cache)
        let paths = join(map(split(&path, ','), {_, p -> p == '**' ? '.' : p}), ' ')
        let ignores = empty(&wildignore) ? '' : '\! \( ' . join(map(split(&wildignore, ','), {_, p -> p =~ '/' ? '-path ' . shellescape(p) . ' -prune' : '-name ' . shellescape(p)}), ' -o ') . ' \)'
        let s:files_cache = map(systemlist('find ' . paths . ' ' . ignores . ' -type f -follow -print 2>/dev/null'), {_, v -> substitute(v, '^\.\/', '', '')})
    endif

    if empty(a:cmd_arg)
        return s:files_cache
    else
        return matchfuzzy(s:files_cache, a:cmd_arg)
    endif
endfunction

set findfunc=FuzzyFindFunc

"Add filetype-specific suffixes to extend file searching using commands like 'gf':
augroup SmartSuffixes
    autocmd!
    autocmd Filetype * setlocal suffixesadd<
    autocmd Filetype c,cpp setlocal suffixesadd+=.c,.cc,.cpp,.cxx,.ipp,.tcc,.inl,.h,.hh,.hpp,.hxx
    autocmd Filetype python setlocal suffixesadd+=.py
    autocmd Filetype sh setlocal suffixesadd+=.sh
    autocmd Filetype tex setlocal suffixesadd+=.tex,.bib,.bbl,.ind,.sty,.cls,.bst,.ist
augroup END

"Add filetype-specific patterns to be ignored on file searching:
augroup SmartWildignore
    autocmd!
    let s:dignore = ['c', 'cpp']
    autocmd BufEnter * if index(s:dignore, &l:filetype) >= 0 | set wildignore+=*.d | else | set wildignore-=*.d | endif
augroup END

"Change the status line color in insert mode:
augroup StatusColor
    autocmd!
    autocmd InsertEnter * highlight! link StatusLine ErrorMsg
    autocmd InsertLeave * highlight! link StatusLine NONE
augroup END

"Update filetype-specific automatic folding on certain events:
augroup SmartFolding
    autocmd!
    autocmd WinEnter,BufWinEnter,BufWritePost * call s:UpdateFolding()
augroup END

function s:UpdateFolding()
    if !&l:diff
        let indenttypes=['make', 'python']
        if index(indenttypes, &l:filetype) < 0
            setlocal foldmethod=syntax
        else
            setlocal foldmethod=indent
        endif
        redraw
        setlocal foldmethod<
    endif
endfunction

"Set filetype-specific compiler options:
augroup SmartCompiler
    autocmd!
    autocmd Filetype * call s:ResetCompiler()
    autocmd Filetype c,cpp compiler gcc | call s:ConfigCppCompiler()
    autocmd Filetype python compiler pyunit
    autocmd Filetype plantuml call s:ConfigUmlCompiler()
    autocmd Filetype context let b:tex_flavor='context' | compiler tex
    autocmd Filetype plaintex let b:tex_flavor='plain' | compiler tex
    autocmd Filetype tex let b:tex_flavor='latex' | compiler tex | call s:ConfigTexCompiler()
augroup END

function s:ResetCompiler()
    setlocal errorformat<
    setlocal makeprg<
endfunction

function s:ConfigCppCompiler()
    setlocal errorformat^=%f:%l:\ fatal\ %trror:\ %m
    setlocal errorformat^=%f:%l:%c:\ fatal\ %trror:\ %m
    setlocal errorformat^=%-G%f:%l:\ %tote:\ %m
    setlocal errorformat^=%-G%f:%l:%c:\ %tote:\ %m
    setlocal errorformat^=%-G%f:%l:%*[\ ]required\ from\ %.%#
    setlocal errorformat^=%-G%f:%l:%c:%*[\ ]required\ from\ %.%#
    setlocal errorformat^=%-G%f:%l:%*[\ ]recipe\ for\ target\ %.%#
    setlocal errorformat-=%-G%.%#
    setlocal errorformat+=%.%#/ld:\ %m
    setlocal errorformat+=ld:\ %m
    setlocal errorformat+=%o:\(%*[^\)]\):\ %m
    setlocal errorformat+=%-G%.%#
endfunction

function s:ConfigUmlCompiler()
    execute 'setlocal makeprg=plantuml\ -charset\ UTF-8\ -noerror\ -tsvg\ '.expand('%:t')
endfunction

function s:ConfigTexCompiler()
    "Push file to file stack:
    setlocal errorformat=%-P**%f
    setlocal errorformat+=%-P**\"%f\"

    "Match errors:
    setlocal errorformat+=%E!\ LaTeX\ %trror:\ %m
    setlocal errorformat+=%E%f:%l:\ %m
    setlocal errorformat+=%E!\ %m

    "More info for undefined control sequences:
    setlocal errorformat+=%Z<argument>\ %m

    "More info for some errors:
    setlocal errorformat+=%Cl.%l\ %m

    "Show warnings:
    setlocal errorformat+=%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#
    setlocal errorformat+=%+W%.%#\ at\ lines\ %l--%*\\d
    setlocal errorformat+=%+WLaTeX\ %.%#Warning:\ %m
    setlocal errorformat+=%+WPackage\ natbib\ Warning:\ %m\ on\ input\ line\ %l%.
    setlocal errorformat+=%+W%.%#%.%#Warning:\ %m

    "Parse Biblatex warnings:
    setlocal errorformat+=%-C(biblatex)%.%#in\ t%.%#
    setlocal errorformat+=%-C(biblatex)%.%#Please\ v%.%#
    setlocal errorformat+=%-C(biblatex)%.%#LaTeX\ a%.%#
    setlocal errorformat+=%-Z(biblatex)%m

    "Parse babel warnings:
    setlocal errorformat+=%-Z(babel)%.%#input\ line\ %l.
    setlocal errorformat+=%-C(babel)%m

    "Parse Hyperref warnings:
    setlocal errorformat+=%-C(hyperref)%.%#on\ input\ line\ %l.
    setlocal errorformat+=%-C(hyperref)%m

    "Parse more warnings:
    setlocal errorformat+=%-C(scrreprt)%m
    setlocal errorformat+=%-C(fixltx2e)%m
    setlocal errorformat+=%-C(titlesec)%m
    setlocal errorformat+=%-C(Font)%m

    "Ignores unmatched lines:
    setlocal errorformat+=%-G%.%#

    "Sets the make command to call latexmk:
    execute 'setlocal makeprg=latexmk\ -file-line-error\ -interaction=nonstopmode\ -pdf\ '.expand('%:t')
endfunction

"Sort the quickfix content and remove duplicates:
augroup SmartQuickFix
    autocmd!
    autocmd QuickFixCmdPost * call s:UniquifyQuickfix()
augroup END

function s:UniquifyQuickfix()
    let filteredlist = getqflist()
    let filtpatterns=['^\a\+\(\[\d\+\]\|\): \(Entering\|Leaving\) directory \(`\|''\).\+''','^Making \a\+ in .\+']
    for entry in filtpatterns
        let filteredlist=filter(filteredlist,"v:val['text'] !~# entry")
    endfor

    let sortedlist=sort(filteredlist,'s:SortQuickfix')

    let uniquedlist=[]
    let last=[]
    for entry in sortedlist
        let this=[entry.bufnr,entry.lnum,entry.col,entry.module,entry.type,entry.text]
        if this[0:4] !=# last[0:4]
            call add(uniquedlist,entry)
            let last=this
        elseif this[0:2] == [0,0,0] && this[5] !=# last[5]
            call add(uniquedlist,entry)
            let last=this
        endif
    endfor

    let qftitle=getqflist({'title':1})
    call setqflist(uniquedlist,'r')
    call setqflist([],'r',qftitle)
    redraw
endfunction

function s:SortQuickfix(entry1, entry2)
    if a:entry1.bufnr != 0 && a:entry2.bufnr != 0 && a:entry1.bufnr == a:entry2.bufnr
        return a:entry1.lnum == a:entry2.lnum ? 0 : (a:entry1.lnum < a:entry2.lnum ? -1 : 1)

    elseif a:entry1.bufnr != 0 && a:entry2.bufnr != 0
        return a:entry1.bufnr < a:entry2.bufnr ? -1 : 1

    elseif a:entry1.module != '' && a:entry2.module != '' && a:entry1.module == a:entry2.module
        return a:entry1.text == a:entry2.text ? 0 : (a:entry1.text < a:entry2.text ? -1 : 1)

    elseif a:entry1.module != '' && a:entry2.module != ''
        return a:entry1.module < a:entry2.module ? -1 : 1

    else
        return 0
    endif
endfunction

"Create filetype-specific custom commands for launching interpreters:
augroup SmartInterpreterCommand
    autocmd!
    autocmd Filetype * if exists(':Python') | delcommand Python | endif | if exists(':Matlab') | delcommand Matlab | endif
    autocmd Filetype python command -buffer Python execute 'vertical terminal ++close python'
    autocmd Filetype matlab command -buffer Matlab execute 'vertical terminal ++close matlab -nodesktop -nosplash'
augroup END

"Set filetype-specific patterns for searching macro definitions:
augroup SmartMacro
    autocmd!
    autocmd Filetype * setlocal define<
    autocmd Filetype cpp setlocal define=^\\(#\\s*define\\\|[a-z]*\\s*const\\s*[a-z]*\\)
augroup END

"Add filetype-specific library directories to the search path:
augroup SmartPath
    autocmd!
    autocmd Filetype * call s:ResetPath()
    autocmd Filetype c,cpp call s:SetCppPath()
    autocmd Filetype python call s:SetPythonPath()
    autocmd Filetype matlab call s:SetMatlabPath()
    autocmd Filetype tex call s:SetLatexPath()
augroup END

function s:ResetPath()
    setlocal path<
endfunction

function s:SetCppPath()
    silent let cppdir=substitute(system('g++ -xc++ -E -Wp,-v /dev/null 2>&1 | awk ''BEGIN{ORS="/**,"} gsub(/^[ \t]/,"") {print $0}'''),',\+$','','')
    execute 'setlocal path+='.cppdir
endfunction

function s:SetPythonPath()
    silent let pydir=substitute(system('python -c "import os, sys; print(''/**,''.join(''{}''.format(d) for d in sys.path if os.path.isdir(d)))"'),'\n\+$','/**','')
    execute 'setlocal path+='.pydir
endfunction

function s:SetMatlabPath()
    setlocal path+=/usr/share/octave/**
endfunction

function s:SetLatexPath()
    setlocal path+=/usr/share/texmf-dist/tex/latex/**,/usr/share/texmf-dist/bibtex/**,/usr/share/texmf-dist/makeindex/**
endfunction

"Load the Termdebug plugin for certain filetypes:
augroup SmartTermdebug
    autocmd!
    let s:loadplugins = &loadplugins
    autocmd Filetype * if s:loadplugins && executable('gdb') | call s:UnloadTermdebug() | endif
    autocmd Filetype c,cpp if s:loadplugins && executable('gdb') | call s:LoadTermdebug() | endif
augroup END

function s:UnloadTermdebug()
    if maparg('<F5>','n') != '' | execute 'nunmap <buffer> <F5>' | endif
    if maparg('<F6>','n') != '' | execute 'nunmap <buffer> <F6>' | endif
    if maparg('<F7>','n') != '' | execute 'nunmap <buffer> <F7>' | endif
    if maparg('<F8>','n') != '' | execute 'nunmap <buffer> <F8>' | endif
endfunction

function s:LoadTermdebug()
    packadd termdebug
    nnoremap <buffer> <expr> <F5> bufexists('!gdb') ? TermDebugSendCommand('step') : ''
    nnoremap <buffer> <expr> <F6> bufexists('!gdb') ? TermDebugSendCommand('next') : ''
    nnoremap <buffer> <expr> <F7> bufexists('!gdb') ? TermDebugSendCommand('finish') : ''
    nnoremap <buffer> <expr> <F8> bufexists('!gdb') ? TermDebugSendCommand('continue') : ''
    highlight! link debugPC Visual
    highlight! link debugBreakpoint StatusLineTerm
endfunction

"Load the LSP plugin for certain filetypes:
augroup SmartLSP
    autocmd!
    let s:loadplugins = &loadplugins
    autocmd Filetype * if s:loadplugins | call s:UnloadLSP() | endif
    autocmd Filetype c,cpp if s:loadplugins && executable('clangd') | call s:LoadLSP() | call s:RegisterClangd() | endif
augroup END

function s:UnloadLSP()
    setlocal tagfunc<
    setlocal keywordprg<

    if maparg('<F4>','n') != '' | execute 'nunmap <buffer> <F4>' | endif
    if maparg('<F9>','n') != '' | execute 'nunmap <buffer> <F9>' | endif
endfunction

function s:LoadLSP()
    packadd lsp
    execute 'helptags $HOME/.vim/pack/yegappan/opt/lsp/doc'

    call g:LspOptionsSet(#{
        \     autoComplete: v:false,
        \     autoHighlightDiags: v:false,
        \     highlightDiagInline: v:false,
        \   })

    setlocal tagfunc=lsp#lsp#TagFunc
    setlocal keywordprg=:LspHover

    nnoremap <buffer> <silent> <F4> <Cmd>LspSwitchSourceHeader<CR>
    nnoremap <buffer> <silent> <F9> <Cmd>LspDiag highlight toggle<CR>
endfunction

function s:RegisterClangd()
    call g:LspAddServer([#{
        \    name: 'clangd',
        \    filetype: ['c', 'cpp'],
        \    path: exepath('clangd'),
        \    args: ['--background-index']
        \  }])
endfunction
