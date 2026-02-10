-- ========================================================================== --
-- PLUGIN: ICON-PICKER
-- Purpose: External tool FOR PICKING ICONS WITHIN THE DOCUMENT/BUFFER
-- ========================================================================== --

return {
    {
        "ziontee113/icon-picker.nvim",
        dependencies = { "stevearc/dressing.nvim" }, -- Highly recommended for a better UI
        config = function()
            require("icon-picker").setup({ 
                disable_legacy_commands = true 
            })
        end
    }
}