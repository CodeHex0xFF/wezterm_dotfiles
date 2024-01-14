local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'powershell' }
   options.launch_menu = {
      { label = 'Command Prompt', args = { 'cmd' } },
      { label = 'Nushell',        args = { 'nu' } }
   }
elseif platform.is_mac then
   options.default_prog = { '/bin/zsh' }
   options.launch_menu = {
      { label = 'Bash',    args = { 'bash' } },
      { label = 'Fish',    args = { '/opt/homebrew/bin/fish' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
      { label = 'Zsh',     args = { 'zsh' } },
   }
end

return options
