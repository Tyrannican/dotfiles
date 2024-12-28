return {
  {
    "tyrannican/warcraft-api.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('warcraft-api').setup()
    end
  }
}
