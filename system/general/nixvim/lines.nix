{pkgs, config, system, nixvim, ...}: {
    programs.nixvim.plugins = {
        bufferline = { 
            enable = true;
            };    
        lualine = {
            enable = true;
            };
    };
}