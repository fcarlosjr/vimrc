"-----------------
"General settings:
"-----------------
"Disables Vi compatibility:
set nocompatible

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

"Enables backspacing over everything in insert mode:
set backspace=indent,eol,start

"Completely disable flash or beep bells:
set noerrorbells
set visualbell t_vb=

"Enables filetype detection and type-specific plugins and indentation files:
filetype plugin indent on

"Disable built-in smart indentation in favor of the type-specific indentation:
set nosmartindent
set nocindent

"Enable automatic indentation by copying whitespace patterns of previous lines:
set autoindent
set copyindent

"Do not break alignments and help fixing their whitespace patterns when changing indentation:
set nopreserveindent
set noshiftround

"Set indentation width to 4 spaces and disable tab expansion to space characters:
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

"Sets custom symbols for hidden characters when 'list' option is set:
set listchars=tab:··,trail:·

"Configure english and brazilian portuguese spell checking and autocompletion:
set spelllang=en,pt_br
set spellfile=$HOME/.vim/spell/en.utf-8.add,$HOME/.vim/spell/pt.utf-8.add
set complete+=kspell

"Enables syntax highlighting:
syntax enable

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
set statusline+=%4.(%l,%)       "current line number
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

"Lists all tab-completion matching files above the command menu:
set wildmode=list:longest

"Set file patterns to be ignored on file-related tasks:
set wildignore=*~,*.swp,*.bak,*.tmp,*/tmp/**
set wildignore+=*.log,*.aux,*.blg,*.idx
set wildignore+=*.spl,*.jar,*.deb,*.bin
set wildignore+=*.a,*.la,*.so,*.o,*.out,*.class,*.pyc,*.rbc
set wildignore+=*zip,*.rar,*.tar.gz,*.tar.bz2,*.tar.xz,*.7z
set wildignore+=*.xpm,*.eps,*.jpg,*.jpeg,*.ico,*.png,*.bmp,*.gif
set wildignore+=*.avi,*.m4a,*.mp3,*.oga,*.ogg,*.wav,*.webm
set wildignore+=*.ps,*.pdf,*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx
set wildignore+=*.odt,*.fodt,*.ods,*.fods,*.odp,*.fodp

"Make tab completion of files and directories case-insensitive:
set nofileignorecase
set wildignorecase

"Enables recursive tab-completion for all file-related tasks:
set path=./**,**

"Searches for tag files from the current file directory up to the home folder:
set tags=./.tags;$HOME

"Makes paths inside a tag file relative to the tag file's directory:
set tagrelative

"Makes tag searching case-sensitive:
set tagcase=match

"Set custom directories for backup, undo, swap and viminfo files:
set nobackup writebackup noundofile swapfile
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//
set directory=$HOME/.vim/swap//
set viminfo+=n$HOME/.vim/viminfo

"Adds longest matching to autocompletion:
set completeopt+=longest

"Highlight matching characters as they are entered in a search:
set hlsearch
set incsearch

"Highlights searches with the same colorscheme:
highlight! link Search IncSearch

"Make pattern searching case-sensitive only if there is any capital letter in the pattern:
set ignorecase
set smartcase

"Open split panes to right and bottom:
set splitright
set splitbelow

"Sets the minimum number of lines above or below the cursor:
set scrolloff=2

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

"Tweak the Netrw file finder:
let g:netrw_banner=0                           "Disables annoying banner
let g:netrw_altv=1                             "Opens splits to the right
let g:netrw_alto=1                             "Opens splits to the bottom
let g:netrw_liststyle=3                        "Makes tree view the default
let g:netrw_list_hide=netrw_gitignore#Hide()   "Ignores .gitignore'd files
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+' "Ignores dotfiles

"--------------------
"Custom key mappings:
"--------------------
"Map custom commands for quicker buffer switching:
nnoremap <leader>b :buffers<CR>:b<space>
nnoremap <leader>sb :buffers<CR>:sb<space>
nnoremap <leader>vb :buffers<CR>:vert<space>sb<space>

"Maps custom command to disable highlighting:
nnoremap <silent> <ESC><ESC> :nohlsearch<CR>

"Maps custom command for entering paste mode:
set pastetoggle=<F2>

"--------------
"Auto commands:
"--------------
"Load some plugins for certain filetypes:
augroup SmartPlugin
	autocmd!
	let s:loadplugins=&loadplugins
	autocmd Filetype c,cpp if s:loadplugins | packadd termdebug | endif
augroup END

"Overwrite filetype-specific format options:
augroup FormatOptionsOverwrite
	autocmd!
	autocmd Filetype * setlocal formatoptions<
augroup END

"Add filetype-specific suffixes to extend file searches using commands like 'gf':
augroup SmartSuffixes
	autocmd!
	autocmd Filetype * setlocal suffixesadd<
	autocmd Filetype c,cpp setlocal suffixesadd+=.c,.cpp,.h,.hpp
	autocmd Filetype sh setlocal suffixesadd+=.sh
	autocmd Filetype tex setlocal suffixesadd+=.tex,.bib,.bbl,.ind,.sty,.cls,.bst,.ist
augroup END

"Create filetype-specific custom commands for extracting code documentation:
augroup SmartDoc
	autocmd!
	autocmd Filetype * if exists(':Makedoc') | delcommand Makedoc | endif
	autocmd Filetype c,cpp command -buffer -complete=dir -nargs=1 Makedoc if filewritable(<q-args>)==2 | call s:MakeDoc('cpp', '\/\/\/', <q-args>) | else | echoerr 'Not a valid or writable directory' | endif
augroup END

function s:MakeDoc(nested_syntax, comment_pattern, dir_path)
	silent execute '!(awk ''BEGIN{newline=-1; printlock=0;} gsub(/^[ \t]*'.a:comment_pattern.'/,"") {if(printlock==2 && match($0,/^[ \t]*$/)) {print "```"$0} else if(printlock==2) {print "```\n\n"$0} else if(newline==1) {print "\n"$0} else {print $0}; if(match($0,/[ \t]*[:,]+[ \t]*$/)) {printlock=1} else {printlock=0}; newline=0; next;} printlock {if(\!match($0,/^[ \t]*$/)) {if(printlock==1) {print "\n```'.a:nested_syntax.'\n"$0; printlock=2} else if(newline==1) {print "\n"$0} else {print $0}; newline=0} else {newline=1}; next;} \!newline {newline=1;}'' '.expand('%').' > '.a:dir_path.'/'.expand('%:t').'.md) &>$HOME/.vim/log.txt &' | redraw! | echo 'Makedoc started in background'
endfunction

"Adjust the case of a suggested word to that of the typed text on autocompletion for certain filetypes:
augroup SmartInferCase
	autocmd!
	autocmd Filetype * setlocal infercase<
	autocmd Filetype text,plaintex,context,tex,asciidoc,rst,markdown,gitcommit,mail setlocal infercase
augroup END

"Set spell checking for certain filetypes:
augroup SmartSpell
	autocmd!
	autocmd Filetype * setlocal spell<
	autocmd Filetype help if &l:buftype ==# 'help' | setlocal nospell | endif
	autocmd Filetype text,plaintex,context,tex,asciidoc,rst,markdown,gitcommit,mail setlocal spell
augroup END

"Restore the last cursor position when opening a buffer:
augroup CursorPosition
	autocmd!
	autocmd BufWinEnter * if line('''"') <= line('$') | execute 'normal! g`"zz' | endif
augroup END

"Change the status line color in insert mode:
augroup StatusColor
	autocmd!
	autocmd InsertEnter * highlight! link StatusLine ErrorMsg | set timeoutlen=0
	autocmd InsertLeave * highlight! link StatusLine NONE | set timeoutlen&
augroup END

"Close the preview window at the end of omni completion:
augroup ClosePreview
	autocmd!
	autocmd CompleteDone * pclose
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
	autocmd Filetype * setlocal errorformat< makeprg<
	autocmd Filetype c,cpp compiler gcc | call s:SetCppCompiler()
	autocmd Filetype python compiler pyunit
	autocmd Filetype context let b:tex_flavor='context' | compiler tex
	autocmd Filetype plaintex let b:tex_flavor='plain' | compiler tex
	autocmd Filetype tex let b:tex_flavor='latex' | compiler tex | call s:SetTexCompiler()
augroup END

function s:SetCppCompiler()
	setlocal errorformat=%f:%l:%c:\ fatal\ %trror:\ %m
	setlocal errorformat+=%f:%l:%c:\ %trror:\ %m
	setlocal errorformat+=%f:%l:%c:\ %tarning:\ %m
	setlocal errorformat+=%.%#/ld:\ %m
	setlocal errorformat+=ld:\ %m
	setlocal errorformat+=%o:\(%*[^\)]\):\ %m
	setlocal errorformat+=%D%*\\a[%*\\d]:\ Entering\ directory\ '%f'
	setlocal errorformat+=%X%*\\a[%*\\d]:\ Leaving\ directory\ '%f'
	setlocal errorformat+=%-G%.%#
endfunction

function s:SetTexCompiler()
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
	let filtpattern='^\a\+\[\d\+\]: Entering\|Leaving directory ''.\+'''
	let sortedlist=filter(getqflist(),"v:val['text'] !~# filtpattern")
	let sortedlist=sort(sortedlist,'s:SortQuickfix')

	let uniquedlist=[]
	let last=[]
	for entry in sortedlist
		let this=[entry.bufnr,entry.lnum,entry.col,entry.module,entry.text]
		if this[0:2] !=# last[0:2]
			call add(uniquedlist,entry)
			let last=this
		elseif this[0:2] == [0,0,0] && this[3:4] !=# last[3:4]
			call add(uniquedlist,entry)
			let last=this
		endif
	endfor

	call setqflist(uniquedlist)
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

"Add filetype-specific library directories to the search path:
augroup SmartPath
	autocmd!
	autocmd Filetype * setlocal path<
	autocmd Filetype c,cpp call s:SetCppPath()
	autocmd Filetype python call s:SetPythonPath()
	autocmd Filetype matlab call s:SetMatlabPath()
	autocmd Filetype tex call s:SetLatexPath()
augroup END

function s:SetCppPath()
	silent let cppdir=substitute(system('g++ -xc++ -E -Wp,-v /dev/null 2>&1 | awk ''BEGIN{ORS="/**,"} gsub(/^[ \t]/,"") {print $0}'''),',\+$','','')
	execute 'setlocal path+='.cppdir
endfunction

function s:SetPythonPath()
	silent let pydir=substitute(system('python3 -c "import os, sys; print(''/**,''.join(''{}''.format(d) for d in sys.path if os.path.isdir(d)))"'),'\n\+$','/**','')
	execute 'setlocal path+='.pydir
endfunction

function s:SetMatlabPath()
	setlocal path+=/usr/share/octave/**
endfunction

function s:SetLatexPath()
	setlocal path+=/usr/share/texmf-dist/tex/latex/**,/usr/share/texmf-dist/bibtex/**,/usr/share/texmf-dist/makeindex/**
endfunction

"Add filetype-specific library tags to the tags path:
augroup SmartTagsPath
	autocmd!
	autocmd Filetype * setlocal tags<
	autocmd Filetype c,cpp setlocal tags+=$HOME/.vim/tags/cpp.tags
	autocmd Filetype python setlocal tags+=$HOME/.vim/tags/python3.tags
	autocmd Filetype matlab setlocal tags+=$HOME/.vim/tags/octave.tags
augroup END

"Create filetype-specific custom commands for generating tags:
augroup SmartTagsCommand
	autocmd!
	autocmd Filetype * setlocal iskeyword< | call s:DeleteTagsCommand()
	autocmd Filetype help if &l:buftype ==# 'help' | setlocal iskeyword=!-~,^*,^\|,^\",192-255 | endif
	autocmd Filetype c,cpp call s:MakeCppTags()
	autocmd Filetype python call s:MakePythonTags()
	autocmd Filetype matlab setlocal iskeyword+=. | call s:MakeMatlabTags()
	autocmd Filetype tex setlocal iskeyword+=-,: | call s:MakeLatexTags()
augroup END

function s:DeleteTagsCommand()
	if exists(':Makebasetags')
		delcommand Makebasetags
	endif

	if exists(':Maketags')
		delcommand Maketags
	endif
endfunction

function s:MakeCppTags()
	command -buffer Makebasetags silent execute '!(ctags -f $HOME/.vim/tags/cpp.tags~ --languages=c,c++ --c-kinds=+pl --c++-kinds=+pl --fields=+iaSmKz --extras=+q --langmap=c++:+.tcc. --excmd=number --recurse=yes -I "_GLIBCXX_BEGIN_NAMESPACE_VERSION _GLIBCXX_END_NAMESPACE_VERSION _GLIBCXX_VISIBILITY+" $(g++ -xc++ -E -Wp,-v /dev/null 2>&1 | awk ''BEGIN{ORS=" "} gsub(/^[ \t]/,"") {print $0}'') && rm -f $HOME/.vim/tags/cpp.tags && mv $HOME/.vim/tags/cpp.tags~ $HOME/.vim/tags/cpp.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Makebasetags started in background'

	command -buffer -complete=dir -nargs=1 Maketags if filewritable(<q-args>)==2 | silent execute '!(ctags --tag-relative=yes -f '.<q-args>.'/.tags~ --languages=c,c++ --c-kinds=+pl --c++-kinds=+pl --fields=+iaSmKz --extras=+q --langmap=c++:+.tcc. --recurse=yes -I "_GLIBCXX_BEGIN_NAMESPACE_VERSION _GLIBCXX_END_NAMESPACE_VERSION _GLIBCXX_VISIBILITY+" '.<q-args>.'/ && rm -f '.<q-args>.'/.tags && mv '.<q-args>.'/.tags~ '.<q-args>.'/.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Maketags started in background' | else | echoerr 'Not a valid or writable directory' | endif
endfunction

function s:MakePythonTags()
	command -buffer Makebasetags silent execute '!(ctags -f $HOME/.vim/tags/python3.tags~ --languages=python --python-kinds=-i --fields=+l --excmd=number --recurse=yes $(python3 -c "import os, sys; print('' ''.join(''{}''.format(d) for d in sys.path if os.path.isdir(d)))") && rm -f $HOME/.vim/tags/python3.tags && mv $HOME/.vim/tags/python3.tags~ $HOME/.vim/tags/python3.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Makebasetags started in background'

	command -buffer -complete=dir -nargs=1 Maketags if filewritable(<q-args>)==2 | silent execute '!(ctags --tag-relative=yes -f '.<q-args>.'/.tags~ --languages=python --python-kinds=-i --fields=+l --recurse=yes '.<q-args>.'/ && rm -f '.<q-args>.'/.tags && mv '.<q-args>.'/.tags~ '.<q-args>.'/.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Maketags started in background' | else | echoerr 'Not a valid or writable directory' | endif
endfunction

function s:MakeMatlabTags()
	command -buffer Makebasetags silent execute '!(ctags -f $HOME/.vim/tags/octave.tags~ --languages=matlab --excmd=number --recurse=yes /usr/share/octave && rm -f $HOME/.vim/tags/octave.tags && mv $HOME/.vim/tags/octave.tags~ $HOME/.vim/tags/octave.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Makebasetags started in background'

	command -buffer -complete=dir -nargs=1 Maketags if filewritable(<q-args>)==2 | silent execute '!(ctags --regex-matlab=''/^[ \t]*([a-zA-Z0-9_.]+)[ \t]*=/\1/v,variable/'' --tag-relative=yes -f '.<q-args>.'/.tags~ --languages=matlab --recurse=yes '.<q-args>.'/ && rm -f '.<q-args>.'/.tags && mv '.<q-args>.'/.tags~ '.<q-args>.'/.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Maketags started in background' | else | echoerr 'Not a valid or writable directory' | endif
endfunction

function s:MakeLatexTags()
	let ctagslangdefs='
		\ --langdef=latex
		\ --langmap=latex:.tex
		\ --regex-latex=''/\\label[ \t]*\*?\{[ \t]*([^}]*)\}/\1/l,label/''
		\ --regex-latex=''/\\bibitem[ \t]*(\[[^]]*\])?\{([^}]*)\}/\2/m,bibitem/''
		\ --langdef=bibtex
		\ --langmap=bibtex:.bib
		\ --regex-bibtex=''/^@[A-Za-z]+\{([^,]*)/\1/b,bib/'''

	command -buffer -complete=dir -nargs=1 Maketags if filewritable(<q-args>)==2 | silent execute '!(ctags '.ctagslangdefs.' --tag-relative=yes -f '.<q-args>.'/.tags~ --languages=latex,bibtex --recurse=yes '.<q-args>.'/ && rm -f '.<q-args>.'/.tags && mv '.<q-args>.'/.tags~ '.<q-args>.'/.tags) &>$HOME/.vim/log.txt &' | redraw! | echo 'Maketags started in background' | else | echoerr 'Not a valid or writable directory' | endif
endfunction

"Add some custom 'smart alignment' to C/C++ files:
augroup SmartAlignment
	autocmd!
	autocmd Filetype * setlocal cinoptions< cinkeys<
	autocmd Filetype c,cpp setlocal cinoptions+=+1,(1,u1,U1,k0 cinkeys-=0#
augroup END
