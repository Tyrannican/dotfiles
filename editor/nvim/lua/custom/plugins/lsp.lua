-- LSP Configuration & Plugins
return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'mason-org/mason.nvim',
      'mason-org/mason-lspconfig.nvim',
      'saghen/blink.cmp',
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
      {
        'folke/lazydev.nvim',
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          }
        }
      },
    },
    config = function()
      require 'custom.lsp'
    end
  },

  -- AutoFormat!
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        rust = { 'rust-analyzer' }
      }
    }
  },
}
