return{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "c",
        "go",
        "rust",
        "lua",
        "markdown",
        "python"
      },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<Enter>", -- 把整個scope包起來 可以快速刪除某個scope 或跳轉
          node_incremental = "<Enter>", -- 遞增scope
          scope_incremental = false,
          node_decremental = "<Backspace>", -- 縮小scope
        },
      },
    })

  end
}
