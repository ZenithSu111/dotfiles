-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.
-- shell
config.default_prog = { "/home/zenith/.nix-profile/bin/zsh", "-l"}

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'AdventureTime'

-- font
config.font =
    wezterm.font("IosevkaTerm Nerd Font", { weight = "Regular", italic = false })
config.font_size =16.0

-- tab_bar
config.hide_tab_bar_if_only_one_tab = true

-- opacity
config.window_background_opacity = 0.5


-- theme
config.color_scheme = 'Butrin (Gogh)'

-- Finally, return the configuration to wezterm:
return config
