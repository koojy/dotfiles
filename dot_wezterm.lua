local wezterm = require 'wezterm'

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local config = {}
local wsl_domains = wezterm.default_wsl_domains()

for idx, dom in ipairs(wsl_domains) do
  if dom.name == 'WSL:Ubuntu-20.04' then
    dom.name = 'WSL:Ubuntu-20.04'
    dom.distribution = 'Ubuntu-20.04'
    dom.username = 'koojy'
    dom.default_cwd = '/home/koojy'
    -- dom.default_prog = { 'zsh' }
  end
end

-- config.color_schema = 'Batman'
config.window_background_opacity = 0.9

-- config.default_domain = 'WSL:Ubuntu-20.04'
config.wsl_domains = wsl_domains
config.font_size = 13.3
config.font = wezterm.font("Hack", {weight="Regular", stretch="Normal", style="Normal"})

config.keys = {
  
}

return config
