local util = require 'lspconfig.util'

return {
  default_config = {
    cmd = { 'beancount-langserver', '--stdio' },
    filetypes = { 'beancount' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
    init_options = {
      -- this is the path to the beancout journal file
      journalFile = '',
      -- this is the path to the python binary with beancount installed
      pythonPath = 'python3',
    },
  },
  docs = {
    description = [[
https://github.com/polarmutex/beancount-language-server#installation

See https://github.com/polarmutex/beancount-language-server#configuration for configuration options
]],
    default_config = {
      root_dir = [[root_pattern("elm.json")]],
    },
  },
}
