--[[

Lua resources
- https://learnxinyminutes.com/docs/lua/

After understanding a bit more about Lua, you can use `:help lua-guide` as a
reference for how Neovim integrates Lua.
- :help lua-guide
- (or HTML version): https://neovim.io/doc/user/lua-guide.html

--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- this loads lua files found undert the `lua` directory
require 'options'
require 'keymaps'
require 'lazy-bootstrap'
require 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
