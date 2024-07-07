-- Things that don't really have a home
return {
  -- Discord Rich Presence
  { 'andweeb/presence.nvim' },

  -- Cool TODO commands
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',     opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',    opts = {} },
}
