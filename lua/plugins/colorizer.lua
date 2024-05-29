return {
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        filetypes = {
          '*',
          'css',
          'javascript',
          'typescript',
          html = { mode = 'foreground'; }
        },
        user_default_options = {
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true, -- CSS rgb() and rgba() functions
          hsl_fn = true, -- CSS hsl() and hsla() functions
        },
      })
      require("colorizer").detach_from_buffer(0, { mode = "virtualtext", css = true})
    end
  },
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require('color-picker').setup()
    end
  }

}
