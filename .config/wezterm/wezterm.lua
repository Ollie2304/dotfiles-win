-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Color Scheme
config.color_scheme = 'Catppuccin Mocha'
-- Font
config.font = wezterm.font 'JetBrainsMono NF'
--config.font = wezterm.font 'MesloLGS NF'
-- Default Program
config.default_prog = { 'C:/Program Files/PowerShell/7/pwsh.exe', '-l' }

-- Add Arch to launch menu
config.launch_menu = {
	{
		label = 'Arch Linux',
		args = {'wsl', '--distribution', 'Arch', '--cd', '~'}
	}
}

-- Set tab title for specific program
wezterm.on('format-tab-title', function(tab, tabs, panes, config, hover, max_width)
  local pane = tab.active_pane
  local process_name = pane.foreground_process_name
  if process_name:find('wsl') then
    return 'Arch'
  elseif process_name:find('nvim.exe') then
    return 'NeoVim'
  end
  return tab.active_pane.title
end)

-- and finally, return the configuration to wezterm
return config
