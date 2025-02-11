return {
  {
    'Ramilito/kubectl.nvim',
    enabled = false,
    opts = {
      {
        log_level = vim.log.levels.INFO,
        auto_refresh = {
          enabled = true,
          interval = 300, -- milliseconds
        },
        diff = {
          bin = 'kubediff', -- or any other binary
        },
        kubectl_cmd = { cmd = 'kubectl', env = {}, args = {}, persist_context_change = false },
        terminal_cmd = nil, -- Exec will launch in a terminal if set, i.e. "ghostty -e"
        namespace = 'ewa',
        namespace_fallback = { 'ewa' }, -- If you have limited access you can list all the namespaces here
        hints = true,
        context = true,
        heartbeat = true,
        lineage = {
          enabled = false, -- This feature is in beta at the moment
        },
        logs = {
          prefix = true,
          timestamps = true,
          since = '5m',
        },
        alias = {
          apply_on_select_from_history = true,
          max_history = 5,
        },
        filter = {
          apply_on_select_from_history = true,
          max_history = 10,
        },
        float_size = {
          -- Almost fullscreen:
          -- width = 1.0,
          -- height = 0.95, -- Setting it to 1 will cause bottom to be cutoff by statuscolumn

          -- For more context aware size:
          width = 0.9,
          height = 0.8,

          -- Might need to tweak these to get it centered when float is smaller
          col = 10,
          row = 5,
        },
        obj_fresh = 5, -- highlight if creation newer than number (in minutes)
        skew = {
          enabled = true,
          log_level = vim.log.levels.INFO,
        },
      },
    },
    cmd = { 'Kubectl' },
    keys = {
      { '<leader>k', '<cmd>lua require("kubectl").toggle()<cr>' },
      { '<C-k>', '<Plug>(kubectl.kill)', ft = 'k8s_*' },
      { '7', '<Plug>(kubectl.view_nodes)', ft = 'k8s_*' },
      { '8', '<Plug>(kubectl.view_overview)', ft = 'k8s_*' },
      { '<C-t>', '<Plug>(kubectl.view_top)', ft = 'k8s_*' },
    },
    -- config = function(_, opts)
    --   require('kubectl').setup { opts }
    -- end,
  },
}
