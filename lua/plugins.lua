-- [[ Configure and install plugins ]]
require('lazy').setup {
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  -- NOTE: The import below can automatically add plugins, configuration, etc from `lua/lazy-plugins`
  { import = 'lazy-plugins' },
}

-- vim: ts=2 sts=2 sw=2 et
