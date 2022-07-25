local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

configs.setup {
    ensure_installed = {
        "c",
        "cpp",
        "markdown",
        "rust",
        "lua",
        "haskell",
    },
    sync_install = false, 
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
    },
    indent = { enable = true, disable = { "yaml" } },
    rainbow = {
        enable = true,
        extend_mode = true,
        max_file_lines = nil,
        -- Setting colors
        -- colors = {
            -- Colors here
        -- },
        -- Term colors
        -- termcolors = {
            -- Term colors here
        -- }
    },
}

-- Some plugins based on tree-sitter
local ap_ok, autopairs = pcall(require, "nvim-autopairs")
if not ap_ok then
    return
end
autopairs.setup {
    
}
