return {
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			vim.g.sonokai_transparent_background = 1
			vim.g.sonokai_enable_italic = 1
			vim.g.sonokai_style = "andromeda"
			vim.cmd("colorscheme sonokai")
		end,
	},
}

-- return {
--   'EdenEast/nightfox.nvim',
--   config = function()
--     local nightfox = require("nightfox")
--
--     nightfox.setup({
--       options = {
--         transparent = true,
--         fox = "hybridfox",
--         styles = {
--           comments = "italic",
--           keywords = "bold",
--           functions = "italic,bold"
--         }
--       }
--     })
--
--     vim.cmd("colorscheme nightfox")
--   end
-- }
