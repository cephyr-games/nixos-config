{
  language-server = {
    gdscript-lsp = {
      command = "nc";
      args = [
        "127.0.0.1"
        "6005"
      ];
    };
    rust-analyzer.config = {
      check.command = "clippy";
      cargo.features = "all";
    };
  };
  language = [
    {
      name = "c-sharp";
      auto-format = true;
      scope = "source.cs";
      file-types = [ "cs" ];
      roots = [
        "*.sln"
        "*.csproj"
        ".git"
      ];
      formatter = {
        command = "csharpier";
        args = [
          "format"
          "--write-stdout"
        ];
      };
      language-servers = [
        "csharp-ls"
        "omnisharp"
      ];
    }
    {
      name = "rust";
      auto-format = true;
      scope = "source.rs";
      roots = [
        "Cargo.toml"
        ".git"
      ];
      file-types = [ "rs" ];
      formatter = {
        command = "rustfmt";
        args = [
          "--emit"
          "stdout"
        ];
      };
      language-servers = [ "rust-analyzer" ];
    }
    {
      name = "gdscript";
      auto-format = true;
      scope = "source.gd";
      roots = [
        "project.godot"
        ".git"
      ];
      file-types = [ "gd" ];
      formatter = {
        command = "gdscript-formatter";
        args = [ "--reorder-code" ];
      };
      language-servers = [ "gdscript-lsp" ];
    }
    {
      name = "nix";
      auto-format = true;
      scope = "source.nix";
      roots = [
        "flake.nix"
        ".git"
      ];
      file-types = [ "nix" ];
      formatter = {
        command = "nixfmt";
      };
      language-servers = [ "nixd" ];
    }
  ];
}
