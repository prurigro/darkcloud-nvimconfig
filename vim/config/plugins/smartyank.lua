require("smartyank").setup {
    validate_yank = false,

    highlight = {
        enabled = false,
    },

    clipboard = {
        enabled = true,
    },

    tmux = {
        enabled = true,
        cmd = { "tmux", "set-buffer", "-w" },
    },

    osc52 = {
        enabled = true,
        ssh_only = true,
        silent = true,
    },
}
