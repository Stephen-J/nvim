local module = {}

local lspconfig = require('lspconfig')


function module.setup ()
  lspconfig.clojure_lsp.setup{}
  lspconfig.dartls.setup{}
  lspconfig.ols.setup{}
  lspconfig.gopls.setup{}
  lspconfig.elixirls.setup{
    cmd = {'elixirls'}
  }
  lspconfig.rust_analyzer.setup{
    cmd = {'rust-analyzer'}
  }
  lspconfig.ts_ls.setup{
    cmd = {'yarn','typescript-language-server','--stdio'}
  }
  lspconfig.clangd.setup{}
  local lsp_attach = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.hoverProvider then
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    end
  end
  vim.api.nvim_create_autocmd('LspAttach', {callback = lsp_attach})
end


return module
