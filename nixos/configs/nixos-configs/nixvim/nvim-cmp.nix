{ ... }:

{
  programs.nixvim.plugins.cmp = {
    enable = true;
    extraOptions.sources =
      [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
        { name = "luasnip"; }
      ];


      extraOptions.mapping = {
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
      };
      extraOptions.snippet.expand = ''
      function(args)
      require('luasnip').lsp_expand(args.body)
      end
      '';
    };
  }

