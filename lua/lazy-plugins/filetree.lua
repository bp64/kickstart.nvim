-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
          never_show = {
            '.DS_Store',
          },
        },
      },
    }

    vim.keymap.set('n', '\\', function()
      local reveal_file = vim.fn.expand '%:p'
      if reveal_file == '' then
        reveal_file = vim.fn.getcwd()
      else
        local f = io.open(reveal_file, 'r')
        if f then
          f.close(f)
        else
          reveal_file = vim.fn.getcwd()
        end
      end
      require('neo-tree.command').execute {
        action = 'focus', -- OPTIONAL, this is the default value
        source = 'filesystem', -- OPTIONAL, this is the default value
        position = 'left', -- OPTIONAL, this is the default value
        reveal_file = reveal_file, -- path to file or folder to reveal
        reveal_force_cwd = true, -- change cwd without asking if needed
        toggle = true,
      }
    end, { desc = 'Open neo-tree at current file or working directory' })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
