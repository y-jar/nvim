-- ========================================================================== --
-- PLUGIN: COMMENT.NVIM
-- Purpose: Quick commenting and uncommenting of code
-- ========================================================================== --

return {
  "lewis6991/gitsigns.nvim",
  -- event ensures the plugin only loads when you actually open a file
  event = { "BufReadPre", "BufNewFile" }, 
  
  -- setup function
  opts = {
    -- Appearance of the signs in the gutter (left side of numbers)
    signs = {
      add          = { text = "┃" }, -- Line added
      change       = { text = "┃" }, -- Line modified
      delete       = { text = "_" }, -- Line deleted
      topdelete    = { text = "‾" }, -- Line deleted at the top of file
      changedelete = { text = "~" }, -- Line modified and then deleted
      untracked    = { text = "┆" }, -- File not yet tracked by git
    },
    
    -- Same as above, but for lines you have already 'git add'-ed
    signs_staged = {
      add          = { text = "┃" },
      change       = { text = "┃" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },

    signs_staged_enable = true, -- Show special signs for staged changes
    signcolumn          = true, -- Keep the sign column always visible
    numhl               = false, -- Toggle: highlight the actual line number
    linehl              = false, -- Toggle: highlight the entire background of the line
    word_diff           = false, -- Toggle: highlight specific word changes within a line
    
    watch_gitdir = {
      follow_files = true, -- Automatically update if the git index changes
    },
    
    auto_attach         = true, -- Attach to any buffer that is inside a git repo
    attach_to_untracked = false, -- Don't show signs for files not in git yet
    
    -- "Blame" settings: shows who wrote the line at the end of the line
    current_line_blame = false, -- Set to true to see 'John Doe, 2 hours ago'
    current_line_blame_opts = {
      virt_text = true,         -- Show the text
      virt_text_pos = "eol",    -- Position: 'eol' (end of line) or 'overlay'
      delay = 1000,             -- Wait 1 second before showing the blame
      ignore_whitespace = false,
      virt_text_priority = 100,
    },
    
    -- How the blame message looks
    current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
    
    sign_priority = 6,          -- Lower numbers mean other plugins can override the sign
    update_debounce = 100,      -- How fast (ms) to refresh signs while typing
    max_file_length = 40000,    -- Don't run on massive files to prevent lag
    
    -- The style of the floating window when you preview a hunk
    preview_config = {
      border = 'single',        -- Can be 'single', 'double', 'rounded'
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  },
}