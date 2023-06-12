-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<ESC>"] = { "<cmd>:noh<cr>", desc = "Remove highlights from search results" },
    ["<C-c>"] = { "<cmd> %y+ <cr>", desc = "Copy buffer content to clipboard" },
    ["<F4>"] = { "<cmd>AerialToggle<cr>", desc = "Toggle Aerial (tag viewer)" },
    ["<F3>"] = { "<cmd>Neotree toggle<cr>", desc = "Open Neotree (file explorer)" },
    ["<F2>"] = { "<cmd>set number! norelativenumber!<cr>", desc = "Toggle numberline" },
    ["<leader>a"] = { "ggVG", desc = "Select all" },
  },
  v = {
    ["<F6>"] = { ":'<,'>SnipRun<cr>", desc = "Execute :SnipRun in visual-selection mode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
