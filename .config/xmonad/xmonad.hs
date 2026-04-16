import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP
import XMonad.Util.EZConfig
import XMonad.Util.Loggers
import XMonad.Util.SpawnOnce

myTerminal = "alacritty"

myModMask = mod4Mask

myBorderWidth = 2

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

-- Monadic Sequence of actions
myStartupHook :: X ()
myStartupHook = do
  spawnOnce "nitrogen --restore" -- Sets Wallpaper
  spawnOnce "compton" -- X11 Compositor

main :: IO ()
main =
  xmonad
    . ewmhFullscreen
    . ewmh
    . withEasySB (statusBarProp "xmobar ~/.config/xmobar/xmobarrc" (pure myXmobarPP)) defToggleStrutsKey
    $ myConfig

myXmobarPP :: PP
myXmobarPP =
  def
    { ppCurrent = xmobarColor "#ff79c6" "" . wrap "[" "]",
      ppVisible = xmobarColor "#8be9fd" "",
      ppSep = " : ",
      ppOrder = \(ws : l : t : _) -> [ws, l, t]
    }

myConfig =
  additionalKeysP
    ( def
        { borderWidth = myBorderWidth,
          startupHook = myStartupHook,
          modMask = myModMask,
          terminal = myTerminal,
          workspaces = myWorkspaces
        }
    )
    [("M-f", spawn "firefox")
    ,("M-S-f", spawn "flameshot gui")
    ,("M-z", spawn "zotero")
    ,("M-<F5>", spawn "amixer set Master 5%-")
    ,("M-<F6>", spawn "amixer set Master 5%+")]
