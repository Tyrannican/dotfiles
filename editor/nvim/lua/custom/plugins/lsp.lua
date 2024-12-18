-- LSP Configuration & Plugins
return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'saghen/blink.cmp',
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
      'folke/neodev.nvim',
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
