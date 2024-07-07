return {
  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme 'carbonfox'
    end,
  },
  'navarasu/onedark.nvim',
  "folke/tokyonight.nvim",
  'sainnhe/gruvbox-material',
  { "catppuccin/nvim",  name = "catppuccin" },
  { 'rose-pine/neovim', name = 'rose-pine' }
}
