---@type LazySpec
return {
  "almo7aya/openingh.nvim",
  cmd = { "OpenInGHRepo", "OpenInGHFile", "OpenInGHFileLines" },
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local prefix = "<Leader>g"
      opts.mappings.n[prefix] = { desc = "OpenInGH" }
      opts.mappings.n[prefix .. "o"] = { "<CMD>OpenInGHRepo<CR>", desc = "Open git repo in web" }
      opts.mappings.n[prefix .. "O"] = { "<CMD>OpenInGHRepo+<CR>", desc = "Copy git repo url" }
      opts.mappings.n[prefix .. "f"] = { "<CMD>OpenInGHFile<CR>", desc = "Open git file in web" }
      opts.mappings.n[prefix .. "F"] = { "<CMD>OpenInGHFile+<CR>", desc = "Copy git file url" }
      opts.mappings.x[prefix .. "f"] = { "<CMD>OpenInGHFileLines<CR>", desc = "Open git lines in web" }
      opts.mappings.x[prefix .. "F"] = { "<CMD>OpenInGHFileLines+<CR>", desc = "Copy git lines url" }
    end,
  },
}
