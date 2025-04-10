return {
  "akinsho/toggleterm.nvim",
  keys = {
    -- Set your preferred keybind here
    { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
  opts = {
    -- Your terminal behavior settings
    size = 15,
    open_mapping = [[<c-\>]],
    direction = "horizontal", -- or "float", "vertical", or "tab"
    start_in_insert = true,
    persist_size = true,
    shade_terminals = true,
    dir = vim.fn.systemlist("git rev-parse --show-toplevel")[1] or "cwd",
  },
}
