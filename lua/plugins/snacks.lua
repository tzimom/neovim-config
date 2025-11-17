return {
    "folke/snacks.nvim",

    lazy = false,

    keys = {
        { "<leader>bd", function() require("snacks").bufdelete() end, desc = "Delete current buffer" },

        { "<leader>ff", function() require("snacks").picker.files() end, desc = "Find file" },
        { "<leader>fg", function() require("snacks").picker.git_files() end, desc = "Find git file" },

        { "<leader>gg", function() require("snacks").lazygit() end, desc = "Lazy git" },
        { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Git log" },
        { "<leader>gc", function() require("snacks").picker.git_branches() end, desc = "Git checkout" },

        { "<leader>sg", function() require("snacks").picker.grep() end, desc = "Grep" },
        { "<leader>sg", function() require("snacks").picker.grep_word() end, desc = "Grep selection", mode = "x" },
        { "<leader>sk", function() require("snacks").picker.keymaps() end, desc = "Search keymaps" },

        { "<leader>ct", function() require("snacks").terminal() end, desc = "Open terminal" },
    },

    opts = {
        animate = { enabled = false },
        bigfile = { enabled = false },
        bufdelete = { enabled = true },
        dashboard = {
            enabled = true,
            pane_gap = 10,
            sections = {
                { section = "header" },
                { section = "keys", gap = 1, padding = 1 },
                {
                	pane = 2,
                	icon = " ",
                	desc = "Browse Repo",
                	padding = 1,
                	key = "b",
                	action = function() require("snacks").gitbrowse() end,
                },
                function()
                	local in_git = require("snacks").git.get_root() ~= nil
                	local cmds = {
                		{
                			title = "Notifications",
                			cmd = "gh notify -s -a -n5",
                			action = function()
                				vim.ui.open("https://github.com/notifications")
                			end,
                			key = "n",
                			icon = " ",
                			height = 5,
                			enabled = true,
                		},
                		{
                			title = "Open Issues",
                			cmd = "gh issue list -L 3",
                			key = "i",
                			action = function()
                				vim.fn.jobstart("gh issue list --web", { detach = true })
                			end,
                			icon = " ",
                			height = 7,
                		},
                		{
                			icon = " ",
                			title = "Open PRs",
                			cmd = "gh pr list -L 3",
                			key = "P",
                			action = function()
                				vim.fn.jobstart("gh pr list --web", { detach = true })
                			end,
                			height = 7,
                		},
                		{
                			icon = " ",
                			title = "Git Status",
                			cmd = "git --no-pager diff --stat -B -M -C",
                			height = 10,
                		},
                	}
                	return vim.tbl_map(function(cmd)
                		return vim.tbl_extend("force", {
                			pane = 2,
                			section = "terminal",
                			enabled = in_git,
                			padding = 1,
                			ttl = 5 * 60,
                			indent = 3,
                		}, cmd)
                	end, cmds)
                end,
                { section = "startup" },
			},
		},
		debug = { enabled = false },
		dim = { enabled = false },
		explorer = { enabled = false },
		gh = { enabled = false }, -- TODO: Find out what this does.
		git = { enabled = false }, -- TODO: Same thing here.
		gitbrowse = { enabled = false },
		image = { enabled = false },
		indent = {
			enabled = true,
			char = "│",
			only_scope = true,
			only_current = true,
			hl = "SnacksIndent",
		},
		input = { enabled = false },
		keymap = { enabled = false },
		layout = { enabled = false },
		lazygit = { enabled = true },
		notifier = { enabled = false },
		notify = { enabled = false },
		picker = { enabled = true },
		profiler = { enabled = false },
		quickfile = { enabled = true },
		rename = { enabled = false },
		scope = { enabled = false },
		scratch = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
		terminal = { enabled = true }, -- TODO: Check out config.
		toggle = { enabled = false },
		util = { enabled = false },
		win = { enabled = false },
		words = { enabled = false },
		zen = { enabled = false },
	},
}
