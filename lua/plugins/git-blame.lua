return {
  {
    "f-person/git-blame.nvim",
    config = function()
      -- vim.g.gitblame_message_template = "<author> • <committer> • <committer-date> • <summary> • <sha>"
      vim.g.gitblame_message_template = " <committer> • <committer-date> • <summary> • <sha>"
      vim.g.gitblame_date_format = "%r,%x%,%Y"
    end,
  },
}
