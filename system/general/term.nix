{pkgs, config, ...}: {
    programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
        ll = "ls -la";
        update = "sudo nixos-rebuild switch";
        home = "cd && clear";
        
    };
    history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
    ignoreDups = true;
    };
    };

    programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    };

    programs.oh-my-posh = {
        enable = true;
        enableZshIntegration = true;
        useTheme = "gruvbox";
    };

    programs.zoxide = {
        enable = true;
        enableZshIntegration = true;
        options = [
            "--cmd cd"
        ];
    };

    }

