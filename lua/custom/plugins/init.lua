-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'numToStr/FTerm.nvim',
    config = function()
      require('FTerm').setup {
        border = 'rounded',
        dimensions = {
          height = 0.9,
          width = 0.9,
        },
      }

      -- Keybinding to toggle terminal with <leader>tt
      vim.keymap.set('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>', { desc = '[T]oggle [T]erminal' })
      vim.keymap.set('t', '<leader>tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = '[T]oggle [T]erminal' })
    end,
  },
}
