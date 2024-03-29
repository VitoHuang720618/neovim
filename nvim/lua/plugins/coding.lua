return {
  -- golang
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()

      -- Run gofmt + goimport on save
      local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          require("go.format").goimport()
        end,
        group = format_sync_grp,
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
    keys = {
      { "<localleader>r", "<cmd>GoRun<cr>", desc = "Go Run" },
      { "<localleader>t", "<cmd>GoTest<cr>", desc = "Go Test" },

      { "<leader>gat", "<cmd>GoAddTag<cr>", desc = "Add json tags" },
      { "<leader>gam", "<cmd>GoAddTag mapstructure<cr>", desc = "Add mapstructure tags" },
      { "<leader>gae", "<cmd>GoAddTag env<cr>", desc = "Add env tags" },
    },
  },
}
