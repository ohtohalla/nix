{ pkgs, ... }:

{
  programs.nixvim.plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        nixd.enable = true;
       /*  awk_ls.enable = true;
        azure_pipelines_ls.enable = true;
        julials.enable = true;
        r_language_server.enable = true;
        sqlls.enable = true; */
        cssls.enable = true;
        docker_compose_language_service.enable = true;
        dockerls.enable = true;
        eslint.enable = true;
        # graphql.enable = true;
        html.enable = true;
        hyprls.enable = true;
        jsonls.enable = true;
        ltex.enable = true;
        nginx_language_server.enable = true;
        postgres_lsp.enable = true;
        pylyzer.enable = true;
        # ruff_lsp.enable = true;
        sqls.enable = true;
        terraform_lsp.enable = true;
        ts_ls.enable = true;
        yamlls.enable = true;





      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
  };
}
