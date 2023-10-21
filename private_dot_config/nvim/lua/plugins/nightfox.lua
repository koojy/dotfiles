local nightfox = require("nightfox")

nightfox.setup({
	options = {
    transparent = true,
  	fox = "hybridfox",
		styles = {
			comments = "italic",
			keywords = "bold",
			functions = "italic,bold"
		}
	}
})

vim.cmd("colorscheme nightfox")
