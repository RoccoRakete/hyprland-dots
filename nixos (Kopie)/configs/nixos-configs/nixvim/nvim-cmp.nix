{ pkgs, lib, ... }:

{
  programs.nixvim.plugins.nvim-cmp = {
    enable = true;
    snippet.expand = "luasnip";
    sources =
      [
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "buffer"; }
      ];

    mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      #  "<Tab>" = {
      #    action = ''
      #      function(fallback)
      #        if cmp.visible() then
      #          cmp.select_next_item()
      #        elseif check_backspace() then
      #          fallback()
      #        else
      #          fallback()
      #        end
      #      end
      #    '';
      #    modes = [
      #      "i"
      #      "s"
      #    ];
      #  };
    };
  };
}

