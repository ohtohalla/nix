{
  programs.nixvim.plugins.nvim-tree = {
    enable = true;
    openOnSetupFile = true;
    settings = {
      autoReloadOnWrite = true;
    };
  };
}
