

-- Autor: @DracoStorm


local keymap = vim.keymap -- for conciseness


-- ==================== Terminal Behaviors ====================
keymap.set('t', '<C-N>', '<C-><C-N>')
keymap.set('t', '<C-O>', '<C-><C-N><C-O>')


-- ==================== Basic Mappings ====================
vim.g.mapleader = " "

keymap.set('', ';', ':')
keymap.set('', ':', ';')
keymap.set('n', 'Q', 'ZZ')
keymap.set('n', '<C-S>' ,':w<CR>')
keymap.set('i', '<C-S>' ,'<ESC>:w<CR>i')

-- Undo operations
keymap.set('', '<C-U>', '<C-R>')

-- Insert Key
keymap.set('', 'k', 'i')
keymap.set('', 'K', 'I')

-- Copy to system clipboard
keymap.set('v', 'Y', '"+y')

-- Find pair
keymap.set('', ',.', '%')
keymap.set('v', 'ki', '$%')

-- Search
keymap.set('', '<LEADER><CR>', ':nohlsearch<CR>')
keymap.set('n', 'm', 'n')
keymap.set('n', 'M', 'N')

-- Adjacent duplicate words
keymap.set('', '<LEADER>dw', '/(<w+>)_s*1')

-- Space to Tab
keymap.set('n', '<LEADER>tt', ':%s/    /\t/g')
keymap.set('v', '<LEADER>tt', ':s/    /\t/g')

-- Folding

-- insert a pair of {} and go to the next line
keymap.set('i', '<c-y>', '<ESC>A {}<ESC>i<CR><ESC>ko')
-- insert below/up
keymap.set('n', 'u', 'o')
keymap.set('n', 'U', 'O')


keymap.set('n', 'l', 'u')
keymap.set('n', 'L', 'U')

-- ==================== Cursor Movement ====================
-- New cursor movement (the default arrow keys are used for resizing windows)
--     ^
--     i
-- < n   o >
--     e
--     v
keymap.set('', 'i', 'k')
keymap.set('', 'n', 'h')
keymap.set('', 'e', 'j')
keymap.set('', 'o', 'l')
keymap.set('', 'gi', 'gk')
keymap.set('', 'ge', 'gj')

-- set the screen move
keymap.set('', 'I', '5k')
keymap.set('', 'E', '5j')

-- N key: go to the start of the line
keymap.set('', 'N', '0')

-- O key: go to the end of the line
keymap.set('', 'O', '$')

-- set h (same as n, cursor left) to 'end of word'
keymap.set('', 'h', 'e')
keymap.set('', 'H', 'E')

-- Ctrl + U or E will move up/down the view port without moving the cursor
keymap.set('', '<C-I>', '5<C-Y>')
keymap.set('', '<C-E>', '5<C-E>')
keymap.set('', '<C-U>', '<C-O>')
keymap.set('', '<C-Y>', '<C-I>')

-- config j
keymap.set('', 'J', 'M')
keymap.set('', 'j', 'm')
keymap.set('', '<C-J>', 'J')

-- Alt move
keymap.set('', '<A-E>', 'ddp')
keymap.set('', '<A-I>', 'ddkP')
keymap.set('', 'f', 'g')
keymap.set('', 'F', 'G')
keymap.set('', 'g', 'f')
keymap.set('', 'g', 'F')
-- keymap.set('v', '<A-up>', 'xkP')
-- keymap.set('v', '<A-down>', 'xp')

-- ==================== Insert Mode Cursor Movement ====================
keymap.set('i', '<C-a>', '<ESC>A')


-- ==================== Command Mode Cursor Movement ====================
keymap.set('c', '<C-a>', '<Home>')
keymap.set('c', '<C-e>', '<End>')
keymap.set('c', '<C-p>', '<Up>')
keymap.set('c', '<C-n>', '<Down>')
keymap.set('c', '<C-b>', '<Left>')
keymap.set('c', '<C-f>', '<Right>')
keymap.set('c', '<M-b>', '<S-Left>')
keymap.set('c', '<M-w>', '<S-Right>')


-- ==================== Window management ====================
-- Use <space> + new arrow keys for moving the cursor around windows
keymap.set('', '<LEADER>w', '<C-w>w')
keymap.set('', '<LEADER>i', '<C-w>k')
keymap.set('', '<LEADER>e', '<C-w>j')
keymap.set('', '<LEADER>n', '<C-w>h')
keymap.set('', '<LEADER>o', '<C-w>l')
keymap.set('', 'qf', '<C-w>o')
-- Disable the default s key
keymap.set('', 's', '<nop>')
-- split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
keymap.set('', 'si', ':set nosplitbelow<CR>:split<CR>:set splitbelow<CR>')
keymap.set('', 'se', ':set splitbelow<CR>:split<CR>')
keymap.set('', 'sn', ':set nosplitright<CR>:vsplit<CR>:set splitright<CR>')
keymap.set('', 'so', ':set splitright<CR>:vsplit<CR>')
-- Resize splits with arrow keys
keymap.set('', '<up>', ':res +5<CR>')
keymap.set('', '<down>', ':res -5<CR>')
keymap.set('', '<left>', ':vertical resize-5<CR>')
keymap.set('', '<right>', ':vertical resize+5<CR>')
-- Place the two screens up and down
keymap.set('', 'sh', '<C-w>t<C-w>K')
-- Place the two screens side by side
keymap.set('', 'sv', '<C-w>t<C-w>H')
-- Rotate screens
keymap.set('', 'srh', '<C-w>b<C-w>K')
keymap.set('', 'srv', '<C-w>b<C-w>H')
-- Press <SPACE> + q to close the window below the current window
keymap.set('', '<LEADER>q', '<C-w>j:q<CR>')


-- ==================== Tab management ====================
-- Create a new tab with tu
keymap.set('', 'tu', ':tabe<CR>')
keymap.set('', 'tU', ':tab split<CR>')
-- Move around tabs with tn and ti
keymap.set('', 'tn', ':-tabnext<CR>')
keymap.set('', 'to', ':+tabnext<CR>')
-- Move the tabs with tmn and tmi
keymap.set('', 'tmn', ':-tabmove<CR>')
keymap.set('', 'tmo', ':+tabmove<CR>')


-- ==================== Markdown Settings ====================
-- Snippets
-- source $HOME/.config/nvim/md-snippets.vim
-- auto spell
-- autocmd BufRead,BufNewFile *.md setlocal spell


-- ==================== Other useful stuff ====================
keymap.set('n', '<LEADER>h', ':nohl<CR>')
-- Open a new instance of st with the cwd
-- keymap.set('n', \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>
-- Press space twice to jump to the next '<++>' and edit it
-- keymap.set('' <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
-- Spelling Check with <space>sc
-- keymap.set('' <LEADER>sc :set spell!<CR>
-- Press ` to change case (instead of ~)
-- keymap.set('' ` ~
-- keymap.set('' <C-c> zz
-- Auto change directory to current dir
-- autocmd BufEnter * silent! lcd %:p:h
-- Call figlet
-- keymap.set('' tx :r !figlet 
-- find and replace
-- keymap.set('' \s :%s//g<left><left>
-- set wrap
-- keymap.set('' <LEADER>sw :set wrap<CR>
-- press f10 to show hlgroup
-- function! SynGroup()
-- 	let l:s = synID(line('.'), col('.'), 1)
-- 	echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
-- endfun
-- map <F10> :TSHighlightCapturesUnderCursor<CR>

-- Compile function
-- keymap.set('' r :call CompileRunGcc()<CR>
-- func! CompileRunGcc()
--	exec "w"
--	if &filetype == 'c'
--		set splitbelow
--		:sp
--		:res -5
--		term gcc % -o %< && time ./%<
--	elseif &filetype == 'cpp'
--		set splitbelow
--		exec "!g++ -std=c++11 % -Wall -o %<"
--		:sp
--		:res -15
--		:term ./%<
--	elseif &filetype == 'cs'
--		set splitbelow
--		silent! exec "!mcs %"
--		:sp
--		:res -5
--		:term mono %<.exe
--	elseif &filetype == 'java'
--		set splitbelow
--		:sp
--		:res -5
--		term javac % && time java %<
--	elseif &filetype == 'sh'
--		:!time bash %
--	elseif &filetype == 'python'
--		set splitbelow
--		:sp
--		:term python3 %
--	elseif &filetype == 'html'
--		silent! exec "!".g:mkdp_browser." % &"
--	elseif &filetype == 'markdown'
--		exec "InstantMarkdownPreview"
--	elseif &filetype == 'tex'
--		silent! exec "VimtexStop"
--		silent! exec "VimtexCompile"
--	elseif &filetype == 'dart'
--		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
--		silent! exec "CocCommand flutter.dev.openDevLog"
--	elseif &filetype == 'javascript'
--		set splitbelow
--		:sp
--		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
--	elseif &filetype == 'racket'
--		set splitbelow
--		:sp
--		:res -5
--		term racket %
--	elseif &filetype == 'go'
--		set splitbelow
--		:sp
--		:term go run .
--	endif
--endfunc


