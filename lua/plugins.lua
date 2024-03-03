-- [[ Configure and install plugins ]]
require('lazy').setup {
  -- NOTE: Plugins can be added 3 ways
  -- 1. with a link (or for a github repo: 'owner/repo' link)
  --    ex. 'tpope/vim-fugitive'
  -- 2. with a table where the first key is the link and the following
  -- keys configure plugin behavior/loading/etc.
  --    ex. {
  --      'tpope/vim-fugitive',
  --      opts = {}, <-- forces the plugin to load
  --      config = function () ... end <-- set a function to a key to configure at run time
  --      dependencies = { <-- plugins can load other plugins; they use the same spec
  --        'tpope/vim-sleuth',
  --      }
  --    }
  -- 3. with an import table which loads plugins from lua files defined in a directory
  { import = 'lazy-plugins' },
}
-- vim: ts=2 sts=2 sw=2 et
