local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

map('n', '<C-S>', ':w<CR>', opts)

map('n', 'vs', ':vs<CR>', opts)
map('n', 'sp', ':sp<CR>', opts)
map('n', '<C-L>', '<C-W><C-L>', opts)
map('n', '<C-H>', '<C-W><C-H>', opts)
map('n', '<C-K>', '<C-W><C-K>', opts)
map('n', '<C-J>', '<C-W><C-J>', opts)

map('n', 'tn', ':tabnew<CR>', opts)
map('n', 'tk', ':tabnext<CR>', opts)
map('n', 'tj', ':tabprev<CR>', opts)
map('n', 'to', ':tabo<CR>', opts)
map('n', '<C-N>', ":NvimTreeToggle<CR> :vertical resize 30<CR>", opts)

--
-- TELESCOPE KEYBINDS
--

map('n', '<leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<leader>fb', ':Telescope buffers<CR>', opts)

--
-- COC KEYBINDS
--

--vim.api.nvim_set_keymap("n", "<leader>.", "<Plug>(coc-codeaction)", {})
--vim.api.nvim_set_keymap("n", "<leader>l", ":CocCommand eslint.executeAutofix<CR>", {})
--vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
--vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<CR>", {silent = true, noremap = true})
--vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
--vim.api.nvim_set_keymap("n", "<leader>f", ":CocCommand prettier.formatFile<CR>", {noremap = true})
--vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })
--vim.api.nvim_set_keymap("i", "<TAB>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
--vim.api.nvim_set_keymap("i", "<S-TAB>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
--vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
