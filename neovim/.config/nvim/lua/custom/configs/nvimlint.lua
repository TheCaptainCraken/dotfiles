require("lint").linters_by_ft = {
  markdown = { "markdownlint" },
}

vim.api.nvim_create_autocmd({ "CursorHoldI", "CursorHold" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
