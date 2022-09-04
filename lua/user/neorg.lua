local ok, neorg = pcall(require, "neorg")
if not ok then
    return
end

neorg.setup {
    load = {
        ["core.defaults"] = {},
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    work = "D:/Documents/notes",
                    home = "F:/code/projects/my-docs/notes/home",
                }
            }
        },
        ["core.gtd.base"] = {
            config = {
                workspace = "home",
            },
        },
        ["core.norg.qol.toc"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
            }
        },
        ["core.gtd.queries"] = {},
    }
}
