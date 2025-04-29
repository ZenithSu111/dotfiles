return{
    'echasnovski/mini.nvim',
    version = '*',

    config = function()
        require("mini.pairs").setup()
        require("mini.statusline").setup()
        require("mini.icons").setup()
        require("mini.surround").setup()

    end

}


