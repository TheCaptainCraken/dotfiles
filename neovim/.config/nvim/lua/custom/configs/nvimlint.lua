require("lint").linters_by_ft = {
  markdown = { "markdownlint" },
  typescript = { "eslint_d" },
  javascript = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "CursorHoldI", "CursorHold" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
