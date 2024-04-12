{ ... }:

{
  programs.nixvim.plugins.conform-nvim = {
    enable = true;
    formattersByFt = {
      "*" = [ "codespell" ];
      "_" = [ "trim_whitespace" ];
      #go = [ "goimports" "golines" "gofmt" "gofumpt" ];
      javascript =  [ "prettierd" ];
      typescript =  [ "prettierd" ];
      yaml =  [ "prettierd" ];
      json = [ "jq" ];
      lua = [ "stylua" ];
      scss = [ "prettierd" ];
      css = [ "prettierd" ];
      python = [ "isort" "black" ];
      rust = [ "rustfmt" ];
      sh = [ "shfmt" ];
      #terraform = [ "terraform_fmt" ];
    };
  };
}
