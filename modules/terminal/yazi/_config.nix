{
  mgr = {
    ratio = [
      2
      4
      4
    ];
    sort_by = "natural";
    show_hidden = true;
    title_format = "Yazi: {cwd}";
  };
  preview = {
    image_delay = 0;
    max_width = 1200;
    max_height = 1800;
  };
  opener = {
    edit = [
      {
        run = "hx %s";
        desc = "open helix";
        block = true;
      }
    ];
    img-open = [
      {
        run = "feh --scale-down --geometry 100%%x100%% %s";
        desc = "open feh";
        block = false;
      }
    ];
    pdf-open = [
      {
        run = "firefox %s";
        desc = "open firefox";
        block = false;
      }
    ];
    play = [
      {
        run = "mpv --force-window %s";
        orphan = true;
      }
    ];
    audio-open = [
      {
        run = "mpv %s";
        for = "unix";
      }
    ];
  };
  open = {
    rules = [
      # folder
      {
        url = "*/";
        use = [
          "edit"
          "open"
          "reveal"
        ];
      }
      # text
      {
        mime = "text/*";
        use = [
          "edit"
          "reveal"
        ];
      }
      # Pdf
      {
        mime = "application/pdf";
        use = [
          "pdf-open"
        ];
      }
      # Image
      {
        mime = "image/*";
        use = [
          "img-open"
          "open"
          "reveal"
        ];
      }
      # Video
      {
        mime = "{video}/*";
        use = [
          "play"
          "reveal"
        ];
      }
      # Audio
      {
        mime = "{audio}/*";
        use = [
          "audio-open"
          "reveal"
        ];
      }
      # Archive
      {
        mime = "application/{zip,rar,7z*,tar,gzip,xz,zstd,bzip*,lzma,compress,archive,cpio,arj,xar,ms-cab*}";
        use = [
          "extract"
          "reveal"
        ];
      }
      # JSON
      {
        mime = "application/{json,ndjson}";
        use = [
          "edit"
          "reveal"
        ];
      }
      {
        mime = "*/javascript";
        use = [
          "edit"
          "reveal"
        ];
      }
      # Empty file
      {
        mime = "inode/empty";
        use = [
          "edit"
          "reveal"
        ];
      }
      # Fallback
      {
        url = "*";
        use = [
          "open"
          "reveal"
        ];
      }
    ];
  };
}
