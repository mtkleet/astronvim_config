return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "max397574/better-escape.nvim", enabled = false },
  { "declancm/cinnamon.nvim", enabled = false },
  { "windwp/nvim-autopairs", enabled = false },
  { "p00f/clangd_extensions.nvim",
    { "williamboman/mason-lspconfig.nvim", opts = { ensure_installed = { "clangd" } } },
  },
  { "simrat39/rust-tools.nvim",
    { "williamboman/mason-lspconfig.nvim", opts = { ensure_installed = { "rust_analyzer" } } },
  },
  "sheerun/vim-polyglot",
  "lambdalisue/suda.vim",
  "tjdevries/colorbuddy.nvim",
  { "rcarriga/nvim-notify", opts = { background_colour = "#001E27" } },
  { "simrat39/inlay-hints.nvim", lazy = false, config = true },
  { "vladdoster/remember.nvim", lazy = false, ft = "remember", config = true },
  {
    "svrana/neosolarized.nvim",
    config = function() require("neosolarized").setup { comment_italics = true, background_set = false } end,
  },
  {
    "michaelb/sniprun",
    lazy = false,
    build = "bash ./install.sh",
    config = function()
      require("sniprun").setup {
        inline_messages = 0,
        display = { "NvimNotify" },
        borders = "single",
        display_options = { notification_timeout = 2500 },
        interpreter_options = { Python3_original = { error_truncate = "long" } },
      }
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  --
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
  { "folke/which-key.nvim",
    config = function(plugin, opts)
      require "plugins.configs.which-key"(plugin, opts)
      -- Add bindings which show up as group name
      local wk = require "which-key"
      wk.register({ b = { name = "Buffer" }, }, { mode = "n", prefix = "<leader>" })
    end,
  },
}
