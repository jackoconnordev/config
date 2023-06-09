require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    projects = "~/Documents/projects",
                    techwiki = "~/Documents/tech-wiki",
                    life = "~/Documents/life",
                }
            }
        },
        ["core.journal"] = {
            config = {
                workspace = "life",
                strategy = "flat"
            }
        }
    }
}
