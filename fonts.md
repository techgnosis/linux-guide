Seems like all fonts live in /usr/share/fonts/

That directory is empty unless you actually install some fonts

its all managed by fontconfig and freetype2

Arch - `gnu-free-fonts` populates that directory
all of the fonts from gnu-free-fonts have the .otf extension which makes them "OpenType" which is built on "TrueType"
`ttf-liberation`

Void - `freefont-ttf`
all of the fonts from `freefont-ttf` are .ttf which I guess makes them "TrueType"

Sway won't work right unless you have some fonts installed


