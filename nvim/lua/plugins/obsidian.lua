return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		dir = "~/repo/notes",
		disable_frontmatter = true,
		templates = {
			subdir = "__template",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M:%S",
		},
		daily_notes = {
			folder = "inbox",
			date_format = "%Y-%m-%d",
			alias_format = "%B %-d, %Y",
			default_tags = { "daily-notes" },
			template = "daily.md",
		},
	},
}
