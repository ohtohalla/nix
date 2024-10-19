{
  programs.nixvim.plugins.wilder = {
    enable = true;
    modes = [ ":" "/" "?" ];
    renderer = ''wilder.renderer_mux({
    [':'] = wilder.popupmenu_renderer({
      highlighter = wilder.basic_highlighter(),
      pumblend = 20,
      left = {' ', wilder.popupmenu_devicons()},
      right = {' ', wilder.popupmenu_scrollbar()},
    }),
    ['/'] = wilder.wildmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    }),
    })'';
    };
}

