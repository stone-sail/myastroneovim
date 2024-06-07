function FormatBuffer()
  vim.cmd [[ %!clang-format --style="{BasedOnStyle: Google}" ]]
  -- print "save"
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.cpp", "*.hpp", "*.c", "*.h", "*.cc" },
  callback = FormatBuffer,
})
