local set = vim.opt_local

-- Local settings for terminals
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup('custom-term-open', {}),
  callback = function()
    vim.opt_local.guicursor = ""
    set.number = false
    set.relativenumber = false
    set.scrolloff = 0
    vim.bo.filetype = 'terminal'
  end,
})

-- Escape in the terminal
vim.keymap.set("t", "<Esc>", "<c-\\><c-n>")

-- Open a terminal at the bottom of the screen with a fixed height
vim.keymap.set('n', '<leader>st', function()
  vim.cmd.new()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)
