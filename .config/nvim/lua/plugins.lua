return require('packer').startup(function(use)
  -- packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- colorschemes
  -- github_light 
  use 'Mofiqul/vscode.nvim'
  use 'folke/tokyonight.nvim'
  use ({ 'projekt0n/github-nvim-theme' })
  
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  -- IDE
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  
  --use '/usr/local/opt/fzf'
  --use 'junegunn/fzf.vim'
  use {'junegunn/fzf.vim', rtp = '/usr/local/opt/fzf'}
  
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  --use 'hrsh7th/nvim-cmp'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'neovim/nvim-lspconfig'
  
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

end)
