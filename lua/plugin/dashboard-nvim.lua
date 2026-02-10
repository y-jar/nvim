-- ========================================================================== --
-- PLUGIN: COMMENT.NVIM
-- Purpose: Quick commenting and uncommenting of code
-- ========================================================================== --

return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
            -- config
            }
        end,
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    }
}