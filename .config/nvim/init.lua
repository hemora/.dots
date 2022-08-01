require "general.options"
require "general.maps"

-- Load plugin config
require "plugins"

-- Configs --
-- Treesitter
local configs = require'nvim-treesitter.configs'
configs.setup {
  -- ensure_installed = "maintained", -- Only use parsers that are maintained
  highlight = { -- enable highlighting
    enable = true,
  },
  indent = {
      enable = true, -- default is disabled anyways
  }
}

-- lsp-config
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
      server:setup(opts)
end)

-- nvim-cmp
local cmp = require'cmp'
  cmp.setup({
    mapping = cmp.mapping.preset.insert({
	    ["<tab>"] = cmp.mapping.select_next_item(),
	    ["<S-tab>"] = cmp.mapping.select_prev_item(),
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
	    ['<C-f>'] = cmp.mapping.scroll_docs(4),
	    ['<C-Space>'] = cmp.mapping.complete(),
	    ['<C-e>'] = cmp.mapping.abort(),
	    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
            { name = 'nvim_lsp' },
	  }, {
	    { name = 'buffer' },
	  })
  })

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- This doesn't work
  -- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  --   -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  -- require('lspconfig')['sumneko_lua'].setup {
  --   capabilities = capabilities
  -- }


