Sway + X-Wayland works perfectly.

# Install
`flatpak --user install flathub com.valvesoftware.Steam`

# X-Wayland
`pacman -S install xorg-xwayland`


# Gamescope

Gamescope is written by Valve and lets you creat a dedicated compositor for a game with a defined window size, among other things. Everything works great in Sway so its not needed but if it is, it's easy to use.  
`flatpak --user install flathub org.freedesktop.Platform.VulkanLayer.gamescope`

Then in Steam, edit the game properties and make it run:  
`gamescope -- %command%`

# GloriousEggroll
Use this custom Proton build. It solved all my Grim Dawn performance problems
https://github.com/GloriousEggroll/proton-ge-custom


# Links
https://wiki.archlinux.org/title/Steam
https://www.reddit.com/r/linux_gaming/comments/sok9zw/how_to_use_fsr_on_any_steam_game_with_gamescope/
https://github.com/ValveSoftware/gamescope

