return {
  --[=[
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
    opts = {
      rocks = { "lua-curl", "nvim-nio", "mimetypes", "xml2lua" }
    }
  },
  {
    "rest-nvim/rest.nvim",
    ft = "http",
    dependencies = { "luarocks.nvim" },
    config = function()
      require("rest-nvim").setup({
        keybinds = {
          {
            "<leader>rr", "<cmd>Rest run<cr>", "Run request under the cursor",
          },
          {
            "<leader>rl", "<cmd>Rest run last<cr>", "Re-run latest request",
          },
          {
            "<leader>rs", "<cmd>Telescope rest select_env<cr>", "rest select_env",
          },
        }
      })
      -- first load extension
      -- require("telescope").load_extension("rest")
      -- then use it, you can also use the `:Telescope rest select_env` command
      -- require("telescope").extensions.rest.select_env()
      LazyVim.on_load("telescope.nvim", function()
        local ok, err = pcall(require("telescope").load_extension, "rest")
        if not ok then
            LazyVim.error("Failed to load `rest`:\n" .. err)
        end
      end)
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        "rest",
        icon = "",
        fg = "#428890"
      })
    end,
  },
  --]=]
}
