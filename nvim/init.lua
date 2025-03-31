--load module------------------------------------------------------------------------------------------------------
local cores_modules = {
    "keymaps",
    "options",
    -- "wsl",
}
for _, module in ipairs(cores_modules) do
    local ok, err = pcall(require, "cores." .. module)
    if not ok then
        vim.api.nvim_err_writeln("Error loading cores module: " .. module .. "\n\n" .. err)
    end
end

--Lazy start-------------------------------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- add your plugins path here
        { import = "plugins" },
    },
})
--lazy end ---------------------------------------------------------------------------------------------------------

--colorscheme--------------------------------------------------------------------------------------------------------
-- vim.cmd("colorscheme tokyonight-storm")
vim.cmd("colorscheme catppuccin")
--colorscheme end----------------------------------------------------------------------------------------------------
--lsp----------------------------------------------------------------------------------------------------------------
-- vim.lsp.enable({"clangd","rust-analyzer","lua-language-server"})
--lsp end------------------------------------------------------------------------------------------------------------
--virtual text-------------------------------------------------------------------------------------------------------
vim.diagnostic.config({ virtual_lines = true })
--virtual text end---------------------------------------------------------------------------------------------------
