local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

nvim_tree.setup({
    disable_netrw = true,
    hijack_netrw = true,
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                {}
            }
        }
    }
})
