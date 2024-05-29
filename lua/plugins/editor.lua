return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { 
        "nvim-telescope/telescope-live-grep-args.nvim" ,
        -- This will not install any breaking changes.
        -- For major updates, this must be adjusted manually.
        version = "^1.0.0",
        config = function(plugin)
          LazyVim.on_load("telescope.nvim", function()
            local ok, err = pcall(require("telescope").load_extension, "live_grep_args")
            if not ok then
                LazyVim.error("Failed to load `telescope-live-grep-args.nvim`:\n" .. err)
            end
          end)
        end
      },
    },
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fP",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>/",
        "<cmd>lua require(\"telescope\").extensions.live_grep_args.live_grep_args()<CR>",
        desc = "Grep with Args (Root Dir)",
      },
    },
    opts = {
      defaults = {
        dynamic_preview_title = true,
      },
    },
  },
}
