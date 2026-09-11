{ theme }: /* kdl */ ''
  window-rule {
      geometry-corner-radius 12
      clip-to-geometry true

      // draw focus and border ring as borders around the window
      // even for windows which use client-side decorations
      draw-border-with-background false

      background-effect {
          blur true
      }
  }

  layer-rule {
      match namespace="^awww-daemon$"
      place-within-backdrop true
  }

  layer-rule {
      match namespace="^waybar$"

      shadow {
          on
          softness 40
          spread 5
          offset x=0 y=5
          draw-behind-window true
          color "#${theme.darkBase}30"
      }
      place-within-backdrop true

      background-effect {
          xray false
          blur true
      }

      popups {
          geometry-corner-radius 12

          background-effect {
              xray false
              blur true
          }
      }
  }
''
