require('nvim-treesitter.configs').setup({
	highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = false
	},

	textsubjects = {
        enable = true,
        prev_selection = ',', -- (Optional) keymap to select the previous selection
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            ['i;'] = 'textsubjects-container-inner',
        },
    },
  -- We must manually specify which parsers to install
	ensure_installed = {
    "bash",
    "c",
    "css",
    "sql",
    "html",
    "typescript",
    "javascript",
    "cpp",
    "cuda",
	"json",
    "julia",
	"lua",
    "python",
    "yaml",
	},
})
