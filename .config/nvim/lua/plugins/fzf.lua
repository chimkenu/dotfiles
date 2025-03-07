return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    config = function()
      vim.keymap.set('n', '<leader>ff', require('fzf-lua').files)
      vim.keymap.set('n', '<leader>fh', require('fzf-lua').helptags)
      vim.keymap.set('n', '<leader>fb', require('fzf-lua').buffers)
      vim.keymap.set('n', '<leader>fw', require('fzf-lua').diagnostics_document)
      vim.keymap.set('n', '<leader>en', function()
        require('fzf-lua').files({
          cwd = vim.fn.stdpath('config')
        })
      end)
      vim.keymap.set('n', '<leader>ep', function()
        require('fzf-lua').files({
          cwd = vim.fs.joinpath(vim.fn.stdpath('data'), 'lazy')
        })
      end)
    end,
  }
}
