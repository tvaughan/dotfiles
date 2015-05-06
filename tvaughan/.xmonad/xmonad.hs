import XMonad
import XMonad.Config.Gnome
import XMonad.Util.EZConfig
import XMonad.Util.Run(spawnPipe)

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ gnomeConfig {
        focusFollowsMouse = False,
        modMask = mod4Mask,
        terminal = "gnome-terminal"
    }
        `additionalKeysP` [
                ("M-S-q", spawn "gnome-session-quit")
        ]
