-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                          , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim',
                     'kdheepak/lazygit.nvim',
	                 --'nvim-tree/nvim-web-devicons',
		            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
    },
   keys = {
   { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
   { "<leader><C-p>", "<cmd>Telescope git_files<cr>", desc = "Find Git Files" },
   { "<leader>vh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
   { "<leader>ps", function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) end },
   }
}
