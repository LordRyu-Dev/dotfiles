return {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
        -- add more things to the ensure_installed table protecting against community packs modifying it
        opts.ensure_installed = require("astronvim.utils").list_insert_unique(
                                    opts.ensure_installed, {
                "tsx", "json", "yaml", "css", "html", "lua"
            })
        opts.highlight = {disable = {}}
        opts.indent = {disable = {}}
        local parser_config =
            require"nvim-treesitter.parsers".get_parser_configs()
        parser_config.tsx.filetype_to_parsername = {
            "javascript", "typescript.tsx"
        }
    end
}
