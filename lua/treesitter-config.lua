local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    -- ensure_installed = "all",
    context_commentstring = {
        enable = true
    },
    highlight = {
        enable = true,
        disable = { "lua" },
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true
    }
}