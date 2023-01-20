return {
  "nvim-neo-tree/neo-tree.nvim",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      {"nvim-tree/nvim-web-devicons", name = "neo-tree-web-devicons"}, -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup {
	filesystem = {
	  filtered_items = {
	    visible = true,
	    hide_dotfiles = false,
	    hide_gitignored = false,
          },
	  use_libuv_file_watcher = true
        }
      }
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')
    end,
}
