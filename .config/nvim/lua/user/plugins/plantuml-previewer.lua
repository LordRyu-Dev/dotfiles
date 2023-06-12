return {
    "weirongxu/plantuml-previewer.vim",
    lazy = true,
    cmd = { "PlantumlOpen" },
    keys = { { "<Leader>P", "<cmd>PlantumlOpen<cr>", noremap = true, mode = "n" } },
    dependencies = { "tyru/open-browser.vim", "aklt/plantuml-syntax" }
}
