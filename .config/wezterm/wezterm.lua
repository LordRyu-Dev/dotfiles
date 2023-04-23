local wezterm = require 'wezterm';

local config = {};

config.font = wezterm.font_with_fallback {
  'Fira Code',
  'Noto Sans CJK JP',
}-- 自分の好きなフォントいれる
config.use_ime = true; -- wezは日本人じゃないのでこれがないとIME動かない
config.font_size = 16.0;
config.colors = {
    foreground = '#ffffff',
    background = '#120537',

    ansi = {
        '#17115c',
        '#8a5288',
        '#b962ee',
        '#c49251',
        '#0d3687',
        '#4100aa',
        '#0b92be',
        '#acb5c5',
    },
    brights = {
        '#2f3f8c',
        '#ff9fed', 
        '#d57cff',
        '#ffe49c',
        '#5b83ef',
        '#8b55ff',
        '#a4fdf3',
        '#f1f3fd',
    }
};

config.adjust_window_size_when_changing_font_size = false;
return config;
