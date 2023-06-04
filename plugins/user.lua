return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  --   },
  -- },
  "sheerun/vim-polyglot",
  "lambdalisue/suda.vim",
  "tjdevries/colorbuddy.nvim",
  { "rcarriga/nvim-notify", opts = { background_colour = "#001E27" } },
  { "simrat39/inlay-hints.nvim", lazy = false, config = true },
  { "simrat39/rust-tools.nvim", ft = "rust" },
  { "vladdoster/remember.nvim", lazy = false, ft = "remember", config = true },
  {
  	"svrana/neosolarized.nvim",
  	config = function()
  		require("neosolarized").setup({ comment_italics = true, background_set = false })
  	end,
  },
  { "p00f/clangd_extensions.nvim", opts = { capabilities = { offsetEncoding = "utf-8" } } },
	["michaelb/sniprun"] = {
		run = "bash ./install.sh",
		config = function()
			require("sniprun").setup({
				inline_messages = 0,
				display = { "NvimNotify" },
				borders = "single",
				display_options = { notification_timeout = 2500 },
				interpreter_options = { Python3_original = { error_truncate = "long" } },
			})
		end,
	},
}
