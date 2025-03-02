return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    -- More detailed configuration
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return vim.o.columns * 0.35
      end
    end,
    open_mapping = [[<c-t>]],
    direction = 'vertical',
    autochdir = true,
  },
}
