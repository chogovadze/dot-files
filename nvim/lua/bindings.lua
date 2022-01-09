local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

----General remapping
map('n', '<leader><Left>', ':wincmd h<CR>')
map('n', '<leader><Down>', ':wincmd j<CR>')
map('n', '<leader><Up>', ':wincmd k<CR>')
map('n', '<leader><Right>', ':wincmd l<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>s', ':update<CR>')
map('n', '<leader>=', ':vertical resize +15<CR>')
map('n', '<leader>-', ':vertical resize -15<CR>')
map('n', '<leader>b', '<C-^>')
map('n', '<leader>w', ':bd<CR>')

-- Tree
map("n", "<leader>n", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>fn", ":NvimTreeFindFile<CR>", { silent = true })
map("n", "<leader>r", ":NvimTreeRefresh<CR>", { silent = true })

-- Airline
map('n', '<leader>1', '<Plug>AirlineSelectTab1', {noremap=false})
map('n', '<leader>2', '<Plug>AirlineSelectTab2', {noremap=false})
map('n', '<leader>3', '<Plug>AirlineSelectTab3', {noremap=false})
map('n', '<leader>4', '<Plug>AirlineSelectTab4', {noremap=false})
map('n', '<leader>5', '<Plug>AirlineSelectTab5', {noremap=false})
map('n', '<leader>6', '<Plug>AirlineSelectTab6', {noremap=false})
map('n', '<leader>7', '<Plug>AirlineSelectTab7', {noremap=false})
map('n', '<leader>8', '<Plug>AirlineSelectTab8', {noremap=false})
map('n', '<leader>9', '<Plug>AirlineSelectTab9', {noremap=false})
map('n', '<leader>0', '<Plug>AirlineSelectTab0', {noremap=false})
map("n", "<Tab>", "<Plug>AirlineSelectNextTab",  {noremap=false})
map("n", "<S-Tab>", "<Plug>AirlineSelectPrevTab", {noremap=false})


-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map("n", "<leader>fr", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})

-- Switch Session
--map("n", "<Leader>1", ":Telescope sessions [save_current=true]<CR>")

-- Open nvimrc file
--map("n", "<Leader>v", "<cmd>e $MYVIMRC<CR>")

-- Source nvimrc file
--map("n", "<Leader>sv", ":luafile %<CR>")

-- Quick new file
--map("n", "<Leader>n", "<cmd>enew<CR>")


-- UndoTree
map("n", "<leader>u", ":UndotreeToggle<CR>")


-- Keep search results centred
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")

-- Make Y yank to end of the line
map("n", "Y", "y$")

-- Line bubbling
map("n", "<c-j>", "<cmd>m .+1<CR>==", { silent = true })
map("n", "<c-k>", "<cmd>m .-2<CR>==", { silent = true })
map("v", "<c-j>", ":m '>+1<CR>==gv=gv", { silent = true })
map("v", "<c-k>", ":m '<-2<CR>==gv=gv", { silent = true })

--After searching, pressing escape stops the highlight
map("n", "<esc>", ":noh<cr><esc>", { silent = true })

-- See `:help vim.lsp.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

-- Telescope
--map("n", "<leader>p", '<cmd>lua require("telescope.builtin").find_files()<cr>')
--map("n", "<leader>r", '<cmd>lua require("telescope.builtin").registers()<cr>')
--map("n", "<leader>g", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
--map("n", "<leader>b", '<cmd>lua require("telescope.builtin").buffers()<cr>')
--map("n", "<leader>j", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
--map("n", "<leader>h", '<cmd>lua require("telescope.builtin").git_bcommits()<cr>')
--map("n", "<leader>f", '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>')
--map("n", "<leader>s", '<cmd>lua require("telescope.builtin").spell_suggest()<cr>')
--map("n", "<leader>i", '<cmd>lua require("telescope.builtin").git_status()<cr>')
--map("n", "<leader>ca", '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>')
--map("n", "<leader>cs", '<cmd>lua require("telescope.builtin").lsp_document_symbols()<cr>')
--map("n", "<leader>cd", '<cmd>lua require("telescope.builtin").lsp_document_diagnostics()<cr>')
--map("n", "<leader>cr", '<cmd>lua require("telescope.builtin").lsp_references()<cr>')
--map("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("n", "<leader>cn", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("v", "<leader>cn", '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--map("n", "<leader>ci", "<cmd>lua vim.diagnostic.open_float()<cr>")

-- Hop
--map("n", "h", "<cmd>lua require'hop'.hint_words()<cr>")
--map("n", "l", "<cmd>lua require'hop'.hint_lines()<cr>")
--map("v", "h", "<cmd>lua require'hop'.hint_words()<cr>")
--map("v", "l", "<cmd>lua require'hop'.hint_lines()<cr>")


