require('nvim-treesitter.configs').setup({
	highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = false
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
