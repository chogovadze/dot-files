vim.api.nvim_command("packadd packer.nvim")
function get_config(name)
    return string.format("require('plugins/%s')", name)
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {'nvim-treesitter/nvim-treesitter', config = get_config('treesitter'), run = ":TSUpdate"}
  use {'ms-jpq/coq_nvim', branch = 'coq', config = get_config('coq')}
  use {"morhetz/gruvbox", config = get_config('gruvbox')}
  use {'preservim/nerdcommenter'}
  use {"mhinz/vim-startify"}
  use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, config = get_config('ntree')}
  use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true} , config = get_config('lualine')}
  use {'vim-airline/vim-airline', requires = {'vim-airline/vim-airline-themes'}, config = get_config('airline')}
  use {'mbbill/undotree', config = get_config('undotree')}
  use {"neovim/nvim-lspconfig", config = get_config("lsp") }
  use {'williamboman/nvim-lsp-installer', config = get_config('lsp_installer')}
  use {'hrsh7th/nvim-cmp', require='hrsh7th/cmp-nvim-lsp', config = get_config('cmp')}
  use {"ray-x/lsp_signature.nvim", config = get_config('signature')}
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = get_config('gitsigns')}
  use {'nvim-telescope/telescope.nvim', requires =  {'nvim-lua/plenary.nvim', 
                                                     'nvim-telescope/telescope-fzy-native.nvim', 
                                                     "nvim-telescope/telescope-frecency.nvim",
                                                     "tami5/sqlite.lua"}, config = get_config('telescope')}
  end
)
