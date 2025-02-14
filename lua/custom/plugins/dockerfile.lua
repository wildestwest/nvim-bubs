return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = getmetatable { ensure_installed = { 'dockerfile' } },
  },
  {
    'mason.nvim',
    opts = { ensure_installed = { 'hadolint' } },
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        dockerls = {},
        docker_compose_language_service = {},
      },
    },
  },
  {
    'mfussenegger/nvim-lint',
    optional = true,
    opts = {
      linters_by_ft = {
        dockerfile = { 'hadolint' },
      },
    },
  },
}
