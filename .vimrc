"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|



let mapleader="ö"

execute pathogen#infect()

" Some basics
	set nocompatible
	filetype plugin indent on
	syntax on
	set encoding=utf-8
" Enable autocompletion
	set wildmode=longest,list,full

" Disable automatic commenting on newline
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right
"	map <C-h> <C-w>h
"	map <C-h> <C-w>j
"	map <C-k> <C-w>k
"	map <C-l> <C-w>l

" Toggle autocompiler
	map <leader>a :!setsid autocomp % &<CR>

" Toggle PDF view
	map <leader>p :!opout <c-r>%<CR><CR>
" Load Default Templates Latex
	map <leader>f :r ~/test.tex<CR>
	map <leader>c :r ~/Documents/vorlagen/latex/beamer.tex<CR>

" Goyo plugin: centers the text
	map <leader>g :Goyo \| set linebreak<CR>

" Check file in shellcheck (needs to be installed)
	map <leader>s :!clear && shellcheck %<CR>

" Open bibliography in split
	map <leader>b :vsp<space>$BIB<CR>
	map <leader>r :vsp<space>$REFER<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
 	autocmd VimLeave *.tex !texclear %

" tex shortcuts
	autocmd FileType tex inoremap ,a \autocite[]{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,c \citet{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,chap \begin{chapter}<Enter><Enter>\end{chapter}<Esc>3kA
	autocmd FileType tex inoremap ,it \texttit{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,l \begin{lstlisting}<Enter><Enter>\end{lstlisting}<Esc>3kA
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter>\item<Space><Enter>\end{enumerate}<Esc>3kA
"	autocmd FileType tex inoremap ,p \citep{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,pic \begin{figure}[H]<Enter>\centering<Enter>\includegraphics[scale=]{images/}<enter>\caption{}<enter>\label{}<enter>\end{figure}<Esc>
	autocmd FileType tex inoremap ,r \ref{}<Space><Esc>T{i
	autocmd FileType tex inoremap ,sec \section{}<Esc>T{i
	autocmd FileType tex inoremap ,ssec \subsection{}<Esc>T{i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Esc>T{i
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Esc>3kA\item<Space>

" bib shortcuts
" prolly not needed because of getbiber script

" Ensure files are read as what I want:
 	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown','.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown','.mdown': 'markdown'}
	map <leader>v :VimwikiIndex
 	let g:vimwiki_list = [{'path': '~/vimwiki','syntax': 'markdown', 'ext': '.md'}]
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex

