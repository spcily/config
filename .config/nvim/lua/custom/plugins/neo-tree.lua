return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- Optional, for file icons
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        -- Basic configuration
        window = {
          position = 'left', -- or "right", "float", "current"
          width = 30,
          mappings = {
            ['<space>'] = 'none', -- Disable default space mapping to avoid conflicts
            ['e'] = 'none', -- Disable default 'e' mapping if needed
            ['<C-e>'] = 'toggle_node', -- Toggle directory node
            ['W'] = 'close_all_nodes', -- Collapse all nodes
          },
        },
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = {
            enabled = true, -- Auto-focus current file
          },
        },
      }

      -- Keymaps for toggling Neo-tree
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree' })
    end,
  },
}
