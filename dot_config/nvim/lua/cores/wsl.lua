--some settings for wsl using,
--if you not using just comment it.
--allowed you to copy wsl context to windows clipbord
--but need to download win32yank
----wsl 複製
vim.g.clipboard = {
    name = "win32yank",
    copy = {
        ["+"] = "/mnt/c/Windows/System32/win32yank.exe -i --crlf",
        ["*"] = "/mnt/c/Windows/System32/win32yank.exe -i --crlf",
    },
    paste = {
        ["+"] = "/mnt/c/Windows/System32/win32yank.exe -o --lf",
        ["*"] = "/mnt/c/Windows/System32/win32yank.exe -o --lf",
    },
    cache_enabled = 0,
}

