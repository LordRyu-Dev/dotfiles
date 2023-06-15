local wezterm = require 'wezterm';

local config = {};

config.font = wezterm.font_with_fallback { 'Fira Code', 'Noto Sans Mono CJK JP' } -- 自分の好きなフォントいれる
config.use_ime = true;                                                          -- wezは日本人じゃないのでこれがないとIME動かない
config.font_size = 14.0;
config.colors = {
    foreground = '#ffffff',
    background = '#172863',

    ansi = {
        '#17115c', '#aa3388', '#9b22ee', '#c49251', '#0d3687', '#5a3aee',
        '#0b92be', '#acb5c5'
    },
    brights = {
        '#2f3f8c', '#ff9fed', '#d88fff', '#ffe49c', '#5b83ef', '#9e7aff',
        '#a4fdf3', '#f1f3fd'
    }
};
config.window_decorations = "TITLE"
config.adjust_window_size_when_changing_font_size = false;
config.tab_bar_style = {}
return config;
