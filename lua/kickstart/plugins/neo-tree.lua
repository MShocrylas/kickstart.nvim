-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    close_if_last_window = true,
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    source_selector = {
      winbar = true,
      sources = {
        { source = 'filesystem' },
        { source = 'buffers', display_name = ' 󰈚 Buffs ' },
        { source = 'git_status' },
        { source = 'document_symbols' },
      },
    },

    default_component_configs = {
      git_status = {
        symbols = {
          unstaged = '',
        },
      },
    },
  },
}
