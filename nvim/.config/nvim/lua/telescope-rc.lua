local telescope = require('telescope')
local actions = require('telescope.actions')
local fb_actions = require('telescope').extensions.file_browser.actions

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end
telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      initial_mode = "normal",
      hidden = { file_browser = true, folder_browser = true },
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  }, 
}
telescope.load_extension("file_browser")
vim.keymap.set('n', '<leader>fd', function()
        telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 }
        })
    end)
-- keybindings
vim.keymap.set("n", "<C-p>", function()
        require('telescope.builtin').git_files()
end, {noremap = true});

-- Live grep, greps as you type
vim.keymap.set("n", "<leader>ps", function() 
         require('telescope.builtin').live_grep() 
     end, {noremap = true})

-- vim.keymap.set("n", "<leader>ps", function() 
--         require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")}) 
--     end, {noremap = true})

vim.keymap.set("n", "<leader>pp", function()
  require('telescope.builtin').builtin()
end, {noremap = true})

vim.keymap.set("n", "<leader>pb", function()
  require('telescope.builtin').buffers()
end, {noremap = true})


-- Grep for the conitinuous word under your cursor
vim.keymap.set("n", "<leader>pw", function()
    require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>")}
end, {noremap = true})


vim.keymap.set("n", "<leader>pf", function()
    require('telescope.builtin').find_files()
end, {noremap = true})
