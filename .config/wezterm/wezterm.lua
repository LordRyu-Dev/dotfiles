local wezterm = require 'wezterm';

local config = {};

config.font = wezterm.font("Fira Code"); -- 自分の好きなフォントいれる
config.use_ime = true; -- wezは日本人じゃないのでこれがないとIME動かない
config.font_size = 16.0;
config.color_scheme = "AdventureTime"; -- 自分の好きなテーマ探す https://wezfurlong.org/wezterm/colorschemes/index.html
config.hide_tab_bar_if_only_one_tab = true;
config.adjust_window_size_when_changing_font_size = false;

return config;
