local plugins = {
   "which-key",
    "auto-save",
    "legendary",
    "symbols-outline",
}

for i, name in ipairs(plugins) do
    local ok, plugin = pcall(require, name)
    if ok then
        plugin.setup()
    end
end
