local plugins = {
   "folke/which-key.nvim",
    "Pocco81/auto-save.nvim",
    "mrjones2014/legendary.nvim",

}

for i, name in ipairs(plugins) do
    local ok, plugin = pcall(require, name)
    if ok then
        plugin.setup()
    end
end
