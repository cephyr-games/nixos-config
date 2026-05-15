theme: {
  tabs = {
    active = {
      bg = "magenta";
      fg = "#${theme.darkMain}";
    };
    inactive = {
      fg = "magenta";
      bg = "#${theme.darkMain}";
    };
  };
  mode = {
    normal_main = {
      bg = "blue";
      fg = "#${theme.darkMain}";
    };
    normal_alt = {
      fg = "blue";
      bg = "#${theme.darkMain}";
    };

    select_main = {
      bg = "green";
      fg = "#${theme.darkMain}";
    };
    select_alt = {
      fg = "green";
      bg = "#${theme.darkMain}";
    };

    unset_main = {
      bg = "yellow";
      fg = "#${theme.darkMain}";
    };
    unset_alt = {
      fg = "yellow";
      bg = "#${theme.darkMain}";
    };
  };

  mgr = {
    cwd = {
      fg = "magenta";
    };

    # Find
    find_keyword = {
      fg = "yellow";
      bold = true;
      italic = true;
      underline = true;
    };
    find_position = {
      fg = "magenta";
      bg = "reset";
      bold = true;
      italic = true;
    };

    # Marker
    marker_copied = {
      fg = "green";
      bg = "green";
    };
    marker_cut = {
      fg = "red";
      bg = "red";
    };
    marker_marked = {
      fg = "blue";
      bg = "blue";
    };
    marker_selected = {
      fg = "yellow";
      bg = "yellow";
    };

    # Count
    count_copied = {
      fg = "black";
      bg = "green";
    };
    count_cut = {
      fg = "black";
      bg = "magenta";
    };
    count_selected = {
      fg = "black";
      bg = "yellow";
    };

    # Border
    border_symbol = "│";
    border_style = {
      fg = "gray";
    };
  };

  status = {
    # Progress
    progress_label = {
      bold = true;
    };
    progress_normal = {
      fg = "#${theme.lightMain}";
      bg = "black";
    };
    progress_error = {
      fg = "red";
      bg = "black";
    };

    # Permissions
    perm_sep = {
      fg = "darkgray";
    };
    perm_type = {
      fg = "magenta";
    };
    perm_read = {
      fg = "blue";
    };
    perm_write = {
      fg = "red";
    };
    perm_exec = {
      fg = "green";
    };
  };

  input = {
    border = {
      fg = "#${theme.lightMain}";
    };
  };

  confirm = {
    border = {
      fg = "#${theme.lightMain}";
    };
    title = {
      fg = "#${theme.lightMain}";
    };
  };

  completion = {
    border = {
      fg = "#${theme.lightMain}";
    };
    active = {
      reversed = true;
    };

    # Icons
    icon_file = "";
    icon_folder = "";
    icon_command = "";
  };

  tasks = {
    border = {
      fg = "#${theme.lightMain}";
    };
    hovered = {
      fg = "magenta";
      underline = true;
    };
  };

  which = {
    cols = 3;
    mask = {
      bg = "#${theme.darkBase}";
    };
    cand = {
      fg = "yellow";
    };
    rest = {
      fg = "#${theme.textMain}";
    };
    desc = {
      fg = "#${theme.textMain}";
    };
    separator = " -> ";
    separator_style = {
      fg = "#${theme.textMain}";
    };

  };

  filetype = {
    rules = [
      {
        url = "*/";
        fg = "blue";
      }
      # special
      {
        name = "*";
        is = "orphan";
        bg = "red";
      }
      {
        url = "*";
        is = "exec";
        fg = "green";
      }
      # Media
      {
        mime = "{image,audio,video}/*";
        fg = "yellow";
      }
      # Archives
      {
        mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
        fg = "magenta";
      }
    ];
  };

  icon = {
    prepend_conds = [
      {
        "if" = "dummy";
        text = "";
        fg = "red";
      }
      {
        "if" = "orphan";
        text = "";
        fg = "red";
      }
      {
        "if" = "dir";
        text = "󰉋";
        fg = "blue";
      }
      {
        "if" = "exec";
        text = "";
        fg = "green";
      }
      {
        "if" = "!dir";
        text = "󰈔";
        fg = "reset";
      }
    ];

    globs = [ ];
    dirs = [
      {
        name = ".config";
        text = "";
      }
      {
        name = ".git";
        text = "";
      }
      {
        name = "Desktop";
        text = "";
      }
      {
        name = "Projects";
        text = "󰚝";
      }
      {
        name = "Documents";
        text = "󱧶";
      }
      {
        name = "Downloads";
        text = "󰉍";
      }
      {
        name = "Music";
        text = "󱍙";
      }
      {
        name = "Pictures";
        text = "󰉏";
      }
      {
        name = "Public";
        text = "󰴋";
      }
      {
        name = "Videos";
        text = "󱧺";
      }
      {
        name = "desktop";
        text = "";
      }
      {
        name = "projects";
        text = "󰚝";
      }
      {
        name = "documents";
        text = "󱧶";
      }
      {
        name = "downloads";
        text = "󰉍";
      }
      {
        name = "music";
        text = "󱍙";
      }
      {
        name = "pictures";
        text = "󰉏";
      }
      {
        name = "public";
        text = "󰴋";
      }
      {
        name = "videos";
        text = "󱧺";
      }
    ];
    files = [
      {
        name = ".babelrc";
        text = "";
      }
      {
        name = ".bash_profile";
        text = "";
      }
      {
        name = ".bashrc";
        text = "";
      }
      {
        name = ".dockerignore";
        text = "󰡨";
      }
      {
        name = ".ds_store";
        text = "";
      }
      {
        name = ".editorconfig";
        text = "";
      }
      {
        name = ".env";
        text = "";
      }
      {
        name = ".eslintignore";
        text = "";
      }
      {
        name = ".eslintrc";
        text = "";
      }
      {
        name = ".git-blame-ignore-revs";
        text = "";
      }
      {
        name = ".gitattributes";
        text = "";
      }
      {
        name = ".gitconfig";
        text = "";
      }
      {
        name = ".gitignore";
        text = "";
      }
      {
        name = ".gitlab-ci.yml";
        text = "";
      }
      {
        name = ".gitmodules";
        text = "";
      }
      {
        name = ".gtkrc-2.0";
        text = "";
      }
      {
        name = ".gvimrc";
        text = "";
      }
      {
        name = ".justfile";
        text = "";
      }
      {
        name = ".luaurc";
        text = "";
      }
      {
        name = ".mailmap";
        text = "󰊢";
      }
      {
        name = ".npmignore";
        text = "";
      }
      {
        name = ".npmrc";
        text = "";
      }
      {
        name = ".nuxtrc";
        text = "󱄆";
      }
      {
        name = ".nvmrc";
        text = "";
      }
      {
        name = ".prettierignore";
        text = "";
      }
      {
        name = ".prettierrc";
        text = "";
      }
      {
        name = ".prettierrc.cjs";
        text = "";
      }
      {
        name = ".prettierrc.js";
        text = "";
      }
      {
        name = ".prettierrc.json";
        text = "";
      }
      {
        name = ".prettierrc.json5";
        text = "";
      }
      {
        name = ".prettierrc.mjs";
        text = "";
      }
      {
        name = ".prettierrc.toml";
        text = "";
      }
      {
        name = ".prettierrc.yaml";
        text = "";
      }
      {
        name = ".prettierrc.yml";
        text = "";
      }
      {
        name = ".settings.json";
        text = "";
      }
      {
        name = ".SRCINFO";
        text = "󰣇";
      }
      {
        name = ".vimrc";
        text = "";
      }
      {
        name = ".Xauthority";
        text = "";
      }
      {
        name = ".xinitrc";
        text = "";
      }
      {
        name = ".Xresources";
        text = "";
      }
      {
        name = ".xsession";
        text = "";
      }
      {
        name = ".zprofile";
        text = "";
      }
      {
        name = ".zshenv";
        text = "";
      }
      {
        name = ".zshrc";
        text = "";
      }
      {
        name = "_gvimrc";
        text = "";
      }
      {
        name = "_vimrc";
        text = "";
      }
      {
        name = "avif";
        text = "";
      }
      {
        name = "brewfile";
        text = "";
      }
      {
        name = "bspwmrc";
        text = "";
      }
      {
        name = "build";
        text = "";
      }
      {
        name = "build.gradle";
        text = "";
      }
      {
        name = "build.zig.zon";
        text = "";
      }
      {
        name = "cantorrc";
        text = "";
      }
      {
        name = "checkhealth";
        text = "󰓙";
      }
      {
        name = "cmakelists.txt";
        text = "";
      }
      {
        name = "code_of_conduct";
        text = "";
      }
      {
        name = "code_of_conduct.md";
        text = "";
      }
      {
        name = "commit_editmsg";
        text = "";
      }
      {
        name = "commitlint.config.js";
        text = "󰜘";
      }
      {
        name = "commitlint.config.ts";
        text = "󰜘";
      }
      {
        name = "compose.yaml";
        text = "󰡨";
      }
      {
        name = "compose.yml";
        text = "󰡨";
      }
      {
        name = "config";
        text = "";
      }
      {
        name = "containerfile";
        text = "󰡨";
      }
      {
        name = "copying";
        text = "";
      }
      {
        name = "copying.lesser";
        text = "";
      }
      {
        name = "docker-compose.yaml";
        text = "󰡨";
      }
      {
        name = "docker-compose.yml";
        text = "󰡨";
      }
      {
        name = "dockerfile";
        text = "󰡨";
      }
      {
        name = "eslint.config.cjs";
        text = "";
      }
      {
        name = "eslint.config.js";
        text = "";
      }
      {
        name = "eslint.config.mjs";
        text = "";
      }
      {
        name = "eslint.config.ts";
        text = "";
      }
      {
        name = "ext_typoscript_setup.txt";
        text = "";
      }
      {
        name = "favicon.ico";
        text = "";
      }
      {
        name = "fp-info-cache";
        text = "";
      }
      {
        name = "fp-lib-table";
        text = "";
      }
      {
        name = "FreeCAD.conf";
        text = "";
      }
      {
        name = "gemfile$";
        text = "";
      }
      {
        name = "gnumakefile";
        text = "";
      }
      {
        name = "go.mod";
        text = "";
      }
      {
        name = "go.sum";
        text = "";
      }
      {
        name = "go.work";
        text = "";
      }
      {
        name = "gradle-wrapper.properties";
        text = "";
      }
      {
        name = "gradle.properties";
        text = "";
      }
      {
        name = "gradlew";
        text = "";
      }
      {
        name = "groovy";
        text = "";
      }
      {
        name = "gruntfile.babel.js";
        text = "";
      }
      {
        name = "gruntfile.coffee";
        text = "";
      }
      {
        name = "gruntfile.js";
        text = "";
      }
      {
        name = "gruntfile.ts";
        text = "";
      }
      {
        name = "gtkrc";
        text = "";
      }
      {
        name = "gulpfile.babel.js";
        text = "";
      }
      {
        name = "gulpfile.coffee";
        text = "";
      }
      {
        name = "gulpfile.js";
        text = "";
      }
      {
        name = "gulpfile.ts";
        text = "";
      }
      {
        name = "hypridle.conf";
        text = "";
      }
      {
        name = "hyprland.conf";
        text = "";
      }
      {
        name = "hyprlock.conf";
        text = "";
      }
      {
        name = "hyprpaper.conf";
        text = "";
      }
      {
        name = "i18n.config.js";
        text = "󰗊";
      }
      {
        name = "i18n.config.ts";
        text = "󰗊";
      }
      {
        name = "i3blocks.conf";
        text = "";
      }
      {
        name = "i3status.conf";
        text = "";
      }
      {
        name = "ionic.config.json";
        text = "";
      }
      {
        name = "justfile";
        text = "";
      }
      {
        name = "kalgebrarc";
        text = "";
      }
      {
        name = "kdeglobals";
        text = "";
      }
      {
        name = "kdenlive-layoutsrc";
        text = "";
      }
      {
        name = "kdenliverc";
        text = "";
      }
      {
        name = "kritadisplayrc";
        text = "";
      }
      {
        name = "kritarc";
        text = "";
      }
      {
        name = "license";
        text = "";
      }
      {
        name = "license.md";
        text = "";
      }
      {
        name = "lxde-rc.xml";
        text = "";
      }
      {
        name = "lxqt.conf";
        text = "";
      }
      {
        name = "makefile";
        text = "";
      }
      {
        name = "mix.lock";
        text = "";
      }
      {
        name = "mpv.conf";
        text = "";
      }
      {
        name = "node_modules";
        text = "";
      }
      {
        name = "nuxt.config.cjs";
        text = "󱄆";
      }
      {
        name = "nuxt.config.js";
        text = "󱄆";
      }
      {
        name = "nuxt.config.mjs";
        text = "󱄆";
      }
      {
        name = "nuxt.config.ts";
        text = "󱄆";
      }
      {
        name = "package-lock.json";
        text = "";
      }
      {
        name = "package.json";
        text = "";
      }
      {
        name = "PKGBUILD";
        text = "";
      }
      {
        name = "platformio.ini";
        text = "";
      }
      {
        name = "pom.xml";
        text = "";
      }
      {
        name = "prettier.config.cjs";
        text = "";
      }
      {
        name = "prettier.config.js";
        text = "";
      }
      {
        name = "prettier.config.mjs";
        text = "";
      }
      {
        name = "prettier.config.ts";
        text = "";
      }
      {
        name = "procfile";
        text = "";
      }
      {
        name = "PrusaSlicer.ini";
        text = "";
      }
      {
        name = "PrusaSlicerGcodeViewer.ini";
        text = "";
      }
      {
        name = "py.typed";
        text = "";
      }
      {
        name = "QtProject.conf";
        text = "";
      }
      {
        name = "rakefile";
        text = "";
      }
      {
        name = "rmd";
        text = "";
      }
      {
        name = "robots.txt";
        text = "󰚩";
      }
      {
        name = "security";
        text = "󰒃";
      }
      {
        name = "security.md";
        text = "󰒃";
      }
      {
        name = "settings.gradle";
        text = "";
      }
      {
        name = "svelte.config.js";
        text = "";
      }
      {
        name = "sxhkdrc";
        text = "";
      }
      {
        name = "sym-lib-table";
        text = "";
      }
      {
        name = "tailwind.config.js";
        text = "󱏿";
      }
      {
        name = "tailwind.config.mjs";
        text = "󱏿";
      }
      {
        name = "tailwind.config.ts";
        text = "󱏿";
      }
      {
        name = "tmux.conf";
        text = "";
      }
      {
        name = "tmux.conf.local";
        text = "";
      }
      {
        name = "tsconfig.json";
        text = "";
      }
      {
        name = "unlicense";
        text = "";
      }
      {
        name = "vagrantfile$";
        text = "";
      }
      {
        name = "vercel.json";
        text = "▲";
      }
      {
        name = "vlcrc";
        text = "󰕼";
      }
      {
        name = "webpack";
        text = "󰜫";
      }
      {
        name = "weston.ini";
        text = "";
      }
      {
        name = "workspace";
        text = "";
      }
      {
        name = "xmobarrc";
        text = "";
      }
      {
        name = "xmobarrc.hs";
        text = "";
      }
      {
        name = "xmonad.hs";
        text = "";
      }
      {
        name = "xorg.conf";
        text = "";
      }
      {
        name = "xsettingsd.conf";
        text = "";
      }
    ];
    exts = [
      {
        name = "3gp";
        text = "";
      }
      {
        name = "3mf";
        text = "󰆧";
      }
      {
        name = "7z";
        text = "";
      }
      {
        name = "a";
        text = "";
      }
      {
        name = "aac";
        text = "";
      }
      {
        name = "ai";
        text = "";
      }
      {
        name = "aif";
        text = "";
      }
      {
        name = "aiff";
        text = "";
      }
      {
        name = "android";
        text = "";
      }
      {
        name = "ape";
        text = "";
      }
      {
        name = "apk";
        text = "";
      }
      {
        name = "apl";
        text = "⍝";
      }
      {
        name = "app";
        text = "";
      }
      {
        name = "applescript";
        text = "";
      }
      {
        name = "asc";
        text = "󰦝";
      }
      {
        name = "ass";
        text = "󰨖";
      }
      {
        name = "astro";
        text = "";
      }
      {
        name = "awk";
        text = "";
      }
      {
        name = "azcli";
        text = "";
      }
      {
        name = "bak";
        text = "󰁯";
      }
      {
        name = "bash";
        text = "";
      }
      {
        name = "bat";
        text = "";
      }
      {
        name = "bazel";
        text = "";
      }
      {
        name = "bib";
        text = "󱉟";
      }
      {
        name = "bicep";
        text = "";
      }
      {
        name = "bicepparam";
        text = "";
      }
      {
        name = "bin";
        text = "";
      }
      {
        name = "blade.php";
        text = "";
      }
      {
        name = "blend";
        text = "󰂫";
      }
      {
        name = "blp";
        text = "󰺾";
      }
      {
        name = "bmp";
        text = "";
      }
      {
        name = "bqn";
        text = "⎉";
      }
      {
        name = "brep";
        text = "󰻫";
      }
      {
        name = "bz";
        text = "";
      }
      {
        name = "bz2";
        text = "";
      }
      {
        name = "bz3";
        text = "";
      }
      {
        name = "bzl";
        text = "";
      }
      {
        name = "c";
        text = "";
      }
      {
        name = "c++";
        text = "";
      }
      {
        name = "cache";
        text = "";
      }
      {
        name = "cast";
        text = "";
      }
      {
        name = "cbl";
        text = "⚙";
      }
      {
        name = "cc";
        text = "";
      }
      {
        name = "ccm";
        text = "";
      }
      {
        name = "cfg";
        text = "";
      }
      {
        name = "cjs";
        text = "";
      }
      {
        name = "clj";
        text = "";
      }
      {
        name = "cljc";
        text = "";
      }
      {
        name = "cljd";
        text = "";
      }
      {
        name = "cljs";
        text = "";
      }
      {
        name = "cmake";
        text = "";
      }
      {
        name = "cob";
        text = "⚙";
      }
      {
        name = "cobol";
        text = "⚙";
      }
      {
        name = "coffee";
        text = "";
      }
      {
        name = "conf";
        text = "";
      }
      {
        name = "config.ru";
        text = "";
      }
      {
        name = "cow";
        text = "󰆚";
      }
      {
        name = "cp";
        text = "";
      }
      {
        name = "cpp";
        text = "";
      }
      {
        name = "cppm";
        text = "";
      }
      {
        name = "cpy";
        text = "⚙";
      }
      {
        name = "cr";
        text = "";
      }
      {
        name = "crdownload";
        text = "";
      }
      {
        name = "cs";
        text = "󰌛";
      }
      {
        name = "csh";
        text = "";
      }
      {
        name = "cshtml";
        text = "󱦗";
      }
      {
        name = "cson";
        text = "";
      }
      {
        name = "csproj";
        text = "󰪮";
      }
      {
        name = "css";
        text = "";
      }
      {
        name = "csv";
        text = "";
      }
      {
        name = "cts";
        text = "";
      }
      {
        name = "cu";
        text = "";
      }
      {
        name = "cue";
        text = "󰲹";
      }
      {
        name = "cuh";
        text = "";
      }
      {
        name = "cxx";
        text = "";
      }
      {
        name = "cxxm";
        text = "";
      }
      {
        name = "d";
        text = "";
      }
      {
        name = "d.ts";
        text = "";
      }
      {
        name = "dart";
        text = "";
      }
      {
        name = "db";
        text = "";
      }
      {
        name = "dconf";
        text = "";
      }
      {
        name = "desktop";
        text = "";
      }
      {
        name = "diff";
        text = "";
      }
      {
        name = "dll";
        text = "";
      }
      {
        name = "doc";
        text = "󰈬";
      }
      {
        name = "Dockerfile";
        text = "󰡨";
      }
      {
        name = "docx";
        text = "󰈬";
      }
      {
        name = "dot";
        text = "󱁉";
      }
      {
        name = "download";
        text = "";
      }
      {
        name = "drl";
        text = "";
      }
      {
        name = "dropbox";
        text = "";
      }
      {
        name = "dump";
        text = "";
      }
      {
        name = "dwg";
        text = "󰻫";
      }
      {
        name = "dxf";
        text = "󰻫";
      }
      {
        name = "ebook";
        text = "";
      }
      {
        name = "ebuild";
        text = "";
      }
      {
        name = "edn";
        text = "";
      }
      {
        name = "eex";
        text = "";
      }
      {
        name = "ejs";
        text = "";
      }
      {
        name = "el";
        text = "";
      }
      {
        name = "elc";
        text = "";
      }
      {
        name = "elf";
        text = "";
      }
      {
        name = "elm";
        text = "";
      }
      {
        name = "eln";
        text = "";
      }
      {
        name = "env";
        text = "";
      }
      {
        name = "eot";
        text = "";
      }
      {
        name = "epp";
        text = "";
      }
      {
        name = "epub";
        text = "";
      }
      {
        name = "erb";
        text = "";
      }
      {
        name = "erl";
        text = "";
      }
      {
        name = "ex";
        text = "";
      }
      {
        name = "exe";
        text = "";
      }
      {
        name = "exs";
        text = "";
      }
      {
        name = "f#";
        text = "";
      }
      {
        name = "f3d";
        text = "󰻫";
      }
      {
        name = "f90";
        text = "󱈚";
      }
      {
        name = "fbx";
        text = "󰆧";
      }
      {
        name = "fcbak";
        text = "";
      }
      {
        name = "fcmacro";
        text = "";
      }
      {
        name = "fcmat";
        text = "";
      }
      {
        name = "fcparam";
        text = "";
      }
      {
        name = "fcscript";
        text = "";
      }
      {
        name = "fcstd";
        text = "";
      }
      {
        name = "fcstd1";
        text = "";
      }
      {
        name = "fctb";
        text = "";
      }
      {
        name = "fctl";
        text = "";
      }
      {
        name = "fdmdownload";
        text = "";
      }
      {
        name = "fish";
        text = "";
      }
      {
        name = "flac";
        text = "";
      }
      {
        name = "flc";
        text = "";
      }
      {
        name = "flf";
        text = "";
      }
      {
        name = "fnl";
        text = "";
      }
      {
        name = "fs";
        text = "";
      }
      {
        name = "fsi";
        text = "";
      }
      {
        name = "fsscript";
        text = "";
      }
      {
        name = "fsx";
        text = "";
      }
      {
        name = "gcode";
        text = "󰐫";
      }
      {
        name = "gd";
        text = "";
      }
      {
        name = "gemspec";
        text = "";
      }
      {
        name = "gif";
        text = "";
      }
      {
        name = "git";
        text = "";
      }
      {
        name = "glb";
        text = "";
      }
      {
        name = "gleam";
        text = "";
      }
      {
        name = "gnumakefile";
        text = "";
      }
      {
        name = "go";
        text = "";
      }
      {
        name = "godot";
        text = "";
      }
      {
        name = "gql";
        text = "";
      }
      {
        name = "gradle";
        text = "";
      }
      {
        name = "graphql";
        text = "";
      }
      {
        name = "gresource";
        text = "";
      }
      {
        name = "gv";
        text = "󱁉";
      }
      {
        name = "gz";
        text = "";
      }
      {
        name = "h";
        text = "";
      }
      {
        name = "haml";
        text = "";
      }
      {
        name = "hbs";
        text = "";
      }
      {
        name = "heex";
        text = "";
      }
      {
        name = "hex";
        text = "";
      }
      {
        name = "hh";
        text = "";
      }
      {
        name = "hpp";
        text = "";
      }
      {
        name = "hrl";
        text = "";
      }
      {
        name = "hs";
        text = "";
      }
      {
        name = "htm";
        text = "";
      }
      {
        name = "html";
        text = "";
      }
      {
        name = "http";
        text = "";
      }
      {
        name = "huff";
        text = "󰡘";
      }
      {
        name = "hurl";
        text = "";
      }
      {
        name = "hx";
        text = "";
      }
      {
        name = "hxx";
        text = "";
      }
      {
        name = "ical";
        text = "";
      }
      {
        name = "icalendar";
        text = "";
      }
      {
        name = "ico";
        text = "";
      }
      {
        name = "ics";
        text = "";
      }
      {
        name = "ifb";
        text = "";
      }
      {
        name = "ifc";
        text = "󰻫";
      }
      {
        name = "ige";
        text = "󰻫";
      }
      {
        name = "iges";
        text = "󰻫";
      }
      {
        name = "igs";
        text = "󰻫";
      }
      {
        name = "image";
        text = "";
      }
      {
        name = "img";
        text = "";
      }
      {
        name = "import";
        text = "";
      }
      {
        name = "info";
        text = "";
      }
      {
        name = "ini";
        text = "";
      }
      {
        name = "ino";
        text = "";
      }
      {
        name = "ipynb";
        text = "";
      }
      {
        name = "iso";
        text = "";
      }
      {
        name = "ixx";
        text = "";
      }
      {
        name = "java";
        text = "";
      }
      {
        name = "jl";
        text = "";
      }
      {
        name = "jpeg";
        text = "";
      }
      {
        name = "jpg";
        text = "";
      }
      {
        name = "js";
        text = "";
      }
      {
        name = "json";
        text = "";
      }
      {
        name = "json5";
        text = "";
      }
      {
        name = "jsonc";
        text = "";
      }
      {
        name = "jsx";
        text = "";
      }
      {
        name = "jwmrc";
        text = "";
      }
      {
        name = "jxl";
        text = "";
      }
      {
        name = "kbx";
        text = "󰯄";
      }
      {
        name = "kdb";
        text = "";
      }
      {
        name = "kdbx";
        text = "";
      }
      {
        name = "kdenlive";
        text = "";
      }
      {
        name = "kdenlivetitle";
        text = "";
      }
      {
        name = "kicad_dru";
        text = "";
      }
      {
        name = "kicad_mod";
        text = "";
      }
      {
        name = "kicad_pcb";
        text = "";
      }
      {
        name = "kicad_prl";
        text = "";
      }
      {
        name = "kicad_pro";
        text = "";
      }
      {
        name = "kicad_sch";
        text = "";
      }
      {
        name = "kicad_sym";
        text = "";
      }
      {
        name = "kicad_wks";
        text = "";
      }
      {
        name = "ko";
        text = "";
      }
      {
        name = "kpp";
        text = "";
      }
      {
        name = "kra";
        text = "";
      }
      {
        name = "krz";
        text = "";
      }
      {
        name = "ksh";
        text = "";
      }
      {
        name = "kt";
        text = "";
      }
      {
        name = "kts";
        text = "";
      }
      {
        name = "lck";
        text = "";
      }
      {
        name = "leex";
        text = "";
      }
      {
        name = "less";
        text = "";
      }
      {
        name = "lff";
        text = "";
      }
      {
        name = "lhs";
        text = "";
      }
      {
        name = "lib";
        text = "";
      }
      {
        name = "license";
        text = "";
      }
      {
        name = "liquid";
        text = "";
      }
      {
        name = "lock";
        text = "";
      }
      {
        name = "log";
        text = "󰌱";
      }
      {
        name = "lrc";
        text = "󰨖";
      }
      {
        name = "lua";
        text = "";
      }
      {
        name = "luac";
        text = "";
      }
      {
        name = "luau";
        text = "";
      }
      {
        name = "m";
        text = "";
      }
      {
        name = "m3u";
        text = "󰲹";
      }
      {
        name = "m3u8";
        text = "󰲹";
      }
      {
        name = "m4a";
        text = "";
      }
      {
        name = "m4v";
        text = "";
      }
      {
        name = "magnet";
        text = "";
      }
      {
        name = "makefile";
        text = "";
      }
      {
        name = "markdown";
        text = "";
      }
      {
        name = "material";
        text = "󰔉";
      }
      {
        name = "md";
        text = "";
      }
      {
        name = "md5";
        text = "󰕥";
      }
      {
        name = "mdx";
        text = "";
      }
      {
        name = "mint";
        text = "󰌪";
      }
      {
        name = "mjs";
        text = "";
      }
      {
        name = "mk";
        text = "";
      }
      {
        name = "mkv";
        text = "";
      }
      {
        name = "ml";
        text = "";
      }
      {
        name = "mli";
        text = "";
      }
      {
        name = "mm";
        text = "";
      }
      {
        name = "mo";
        text = "∞";
      }
      {
        name = "mobi";
        text = "";
      }
      {
        name = "mojo";
        text = "";
      }
      {
        name = "mov";
        text = "";
      }
      {
        name = "mp3";
        text = "";
      }
      {
        name = "mp4";
        text = "";
      }
      {
        name = "mpp";
        text = "";
      }
      {
        name = "msf";
        text = "";
      }
      {
        name = "mts";
        text = "";
      }
      {
        name = "mustache";
        text = "";
      }
      {
        name = "nfo";
        text = "";
      }
      {
        name = "nim";
        text = "";
      }
      {
        name = "nix";
        text = "";
      }
      {
        name = "nswag";
        text = "";
      }
      {
        name = "nu";
        text = ">";
      }
      {
        name = "o";
        text = "";
      }
      {
        name = "obj";
        text = "󰆧";
      }
      {
        name = "ogg";
        text = "";
      }
      {
        name = "opus";
        text = "";
      }
      {
        name = "org";
        text = "";
      }
      {
        name = "otf";
        text = "";
      }
      {
        name = "out";
        text = "";
      }
      {
        name = "part";
        text = "";
      }
      {
        name = "patch";
        text = "";
      }
      {
        name = "pck";
        text = "";
      }
      {
        name = "pcm";
        text = "";
      }
      {
        name = "pdf";
        text = "";
      }
      {
        name = "php";
        text = "";
      }
      {
        name = "pl";
        text = "";
      }
      {
        name = "pls";
        text = "󰲹";
      }
      {
        name = "ply";
        text = "󰆧";
      }
      {
        name = "pm";
        text = "";
      }
      {
        name = "png";
        text = "";
      }
      {
        name = "po";
        text = "";
      }
      {
        name = "pot";
        text = "";
      }
      {
        name = "pp";
        text = "";
      }
      {
        name = "ppt";
        text = "󰈧";
      }
      {
        name = "prisma";
        text = "";
      }
      {
        name = "pro";
        text = "";
      }
      {
        name = "ps1";
        text = "󰨊";
      }
      {
        name = "psb";
        text = "";
      }
      {
        name = "psd";
        text = "";
      }
      {
        name = "psd1";
        text = "󰨊";
      }
      {
        name = "psm1";
        text = "󰨊";
      }
      {
        name = "pub";
        text = "󰷖";
      }
      {
        name = "pxd";
        text = "";
      }
      {
        name = "pxi";
        text = "";
      }
      {
        name = "py";
        text = "";
      }
      {
        name = "pyc";
        text = "";
      }
      {
        name = "pyd";
        text = "";
      }
      {
        name = "pyi";
        text = "";
      }
      {
        name = "pyo";
        text = "";
      }
      {
        name = "pyw";
        text = "";
      }
      {
        name = "pyx";
        text = "";
      }
      {
        name = "qm";
        text = "";
      }
      {
        name = "qml";
        text = "";
      }
      {
        name = "qrc";
        text = "";
      }
      {
        name = "qss";
        text = "";
      }
      {
        name = "query";
        text = "";
      }
      {
        name = "R";
        text = "󰟔";
      }
      {
        name = "r";
        text = "󰟔";
      }
      {
        name = "rake";
        text = "";
      }
      {
        name = "rar";
        text = "";
      }
      {
        name = "razor";
        text = "󱦘";
      }
      {
        name = "rb";
        text = "";
      }
      {
        name = "res";
        text = "";
      }
      {
        name = "resi";
        text = "";
      }
      {
        name = "rlib";
        text = "";
      }
      {
        name = "rmd";
        text = "";
      }
      {
        name = "rproj";
        text = "󰗆";
      }
      {
        name = "rs";
        text = "";
      }
      {
        name = "rss";
        text = "";
      }
      {
        name = "sass";
        text = "";
      }
      {
        name = "sbt";
        text = "";
      }
      {
        name = "sc";
        text = "";
      }
      {
        name = "scad";
        text = "";
      }
      {
        name = "scala";
        text = "";
      }
      {
        name = "scm";
        text = "󰘧";
      }
      {
        name = "scss";
        text = "";
      }
      {
        name = "sh";
        text = "";
      }
      {
        name = "sha1";
        text = "󰕥";
      }
      {
        name = "sha224";
        text = "󰕥";
      }
      {
        name = "sha256";
        text = "󰕥";
      }
      {
        name = "sha384";
        text = "󰕥";
      }
      {
        name = "sha512";
        text = "󰕥";
      }
      {
        name = "sig";
        text = "λ";
      }
      {
        name = "signature";
        text = "λ";
      }
      {
        name = "skp";
        text = "󰻫";
      }
      {
        name = "sldasm";
        text = "󰻫";
      }
      {
        name = "sldprt";
        text = "󰻫";
      }
      {
        name = "slim";
        text = "";
      }
      {
        name = "sln";
        text = "";
      }
      {
        name = "slvs";
        text = "󰻫";
      }
      {
        name = "sml";
        text = "λ";
      }
      {
        name = "so";
        text = "";
      }
      {
        name = "sol";
        text = "";
      }
      {
        name = "spec.js";
        text = "";
      }
      {
        name = "spec.jsx";
        text = "";
      }
      {
        name = "spec.ts";
        text = "";
      }
      {
        name = "spec.tsx";
        text = "";
      }
      {
        name = "sql";
        text = "";
      }
      {
        name = "sqlite";
        text = "";
      }
      {
        name = "sqlite3";
        text = "";
      }
      {
        name = "srt";
        text = "󰨖";
      }
      {
        name = "ssa";
        text = "󰨖";
      }
      {
        name = "ste";
        text = "󰻫";
      }
      {
        name = "step";
        text = "󰻫";
      }
      {
        name = "stl";
        text = "󰆧";
      }
      {
        name = "stp";
        text = "󰻫";
      }
      {
        name = "strings";
        text = "";
      }
      {
        name = "styl";
        text = "";
      }
      {
        name = "sub";
        text = "󰨖";
      }
      {
        name = "sublime";
        text = "";
      }
      {
        name = "suo";
        text = "";
      }
      {
        name = "sv";
        text = "󰍛";
      }
      {
        name = "svelte";
        text = "";
      }
      {
        name = "svg";
        text = "󰜡";
      }
      {
        name = "svh";
        text = "󰍛";
      }
      {
        name = "swift";
        text = "";
      }
      {
        name = "t";
        text = "";
      }
      {
        name = "tbc";
        text = "󰛓";
      }
      {
        name = "tcl";
        text = "󰛓";
      }
      {
        name = "templ";
        text = "";
      }
      {
        name = "terminal";
        text = "";
      }
      {
        name = "test.js";
        text = "";
      }
      {
        name = "test.jsx";
        text = "";
      }
      {
        name = "test.ts";
        text = "";
      }
      {
        name = "test.tsx";
        text = "";
      }
      {
        name = "tex";
        text = "";
      }
      {
        name = "tf";
        text = "";
      }
      {
        name = "tfvars";
        text = "";
      }
      {
        name = "tgz";
        text = "";
      }
      {
        name = "tmux";
        text = "";
      }
      {
        name = "toml";
        text = "";
      }
      {
        name = "torrent";
        text = "";
      }
      {
        name = "tres";
        text = "";
      }
      {
        name = "ts";
        text = "";
      }
      {
        name = "tscn";
        text = "";
      }
      {
        name = "tsconfig";
        text = "";
      }
      {
        name = "tsx";
        text = "";
      }
      {
        name = "ttf";
        text = "";
      }
      {
        name = "twig";
        text = "";
      }
      {
        name = "txt";
        text = "󰈙";
      }
      {
        name = "txz";
        text = "";
      }
      {
        name = "typoscript";
        text = "";
      }
      {
        name = "ui";
        text = "";
      }
      {
        name = "v";
        text = "󰍛";
      }
      {
        name = "vala";
        text = "";
      }
      {
        name = "vh";
        text = "󰍛";
      }
      {
        name = "vhd";
        text = "󰍛";
      }
      {
        name = "vhdl";
        text = "󰍛";
      }
      {
        name = "vim";
        text = "";
      }
      {
        name = "vsh";
        text = "";
      }
      {
        name = "vsix";
        text = "";
      }
      {
        name = "vue";
        text = "";
      }
      {
        name = "wasm";
        text = "";
      }
      {
        name = "wav";
        text = "";
      }
      {
        name = "webm";
        text = "";
      }
      {
        name = "webmanifest";
        text = "";
      }
      {
        name = "webp";
        text = "";
      }
      {
        name = "webpack";
        text = "󰜫";
      }
      {
        name = "wma";
        text = "";
      }
      {
        name = "woff";
        text = "";
      }
      {
        name = "woff2";
        text = "";
      }
      {
        name = "wrl";
        text = "󰆧";
      }
      {
        name = "wrz";
        text = "󰆧";
      }
      {
        name = "wv";
        text = "";
      }
      {
        name = "wvc";
        text = "";
      }
      {
        name = "x";
        text = "";
      }
      {
        name = "xaml";
        text = "󰙳";
      }
      {
        name = "xcf";
        text = "";
      }
      {
        name = "xcplayground";
        text = "";
      }
      {
        name = "xcstrings";
        text = "";
      }
      {
        name = "xls";
        text = "󰈛";
      }
      {
        name = "xlsx";
        text = "󰈛";
      }
      {
        name = "xm";
        text = "";
      }
      {
        name = "xml";
        text = "󰗀";
      }
      {
        name = "xpi";
        text = "";
      }
      {
        name = "xul";
        text = "";
      }
      {
        name = "xz";
        text = "";
      }
      {
        name = "yaml";
        text = "";
      }
      {
        name = "yml";
        text = "";
      }
      {
        name = "zig";
        text = "";
      }
      {
        name = "zip";
        text = "";
      }
      {
        name = "zsh";
        text = "";
      }
      {
        name = "zst";
        text = "";
      }
      {
        name = "🔥";
        text = "";
      }
    ];
  };
}
