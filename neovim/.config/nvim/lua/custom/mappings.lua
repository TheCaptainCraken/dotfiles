---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format {
          lsp_fallback = true,
        }
      end,
      "formatting",
    },

    -- ["<leader>fmt"] = {
    --   function()
    --     vim.lsp.buf.format { async = true }
    --   end,
    --   "LSP formatting",
    -- },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
