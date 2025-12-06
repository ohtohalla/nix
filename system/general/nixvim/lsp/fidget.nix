{
  programs.nixvim.plugins.fidget = {
    enable = true;
    settings = {progress = {
      suppressOnInsert = true;
      ignoreDoneAlready = true;
      pollRate = 1;
    };
    };
  };
}
