local wezterm = require 'wezterm'

return {
    font = wezterm.font("Cascadia Code"),
    font_size = 13.0,
    color_scheme = "Dracula",
    enable_tab_bar = false,
    default_prog = { "/bin/zsh", "-l" },
}
