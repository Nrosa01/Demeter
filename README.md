# Demeter

Demeter is a backup git repository that contains config files on my current
macOS enviroment. Althought all files were created using macOS commandline
utilities, they should work fine with any standard UNIX-like system that uses
`zsh` as it's default shell.

# Restore

So you fucked it up. Now what? No problemo, i've got you covered:

1. Run this:

```bash
curl "https://raw.githubusercontent.com/Altair-Bueno/Demeter/master/restore.sh" | bash
```

2. Install brew packages
3. Set up `zsh` as the default shell
4. Set up GitHub access token on git using the OS `credential store`. Here are
   instructions for
   [macOS](https://gist.github.com/nepsilon/0fd0c779f76d7172f12477ba9d71bb66)
   and
   [Linux](https://stackoverflow.com/questions/5343068/is-there-a-way-to-cache-https-credentials-for-pushing-commits/18362082#18362082)

# Brew installed packages

Right now `HomeBrew` counts 135 packages installed. If you are not using `brew`
as your package manager you might need to manually install some of these
packages or find alternatives.

```text
aom assimp autoconf automake bat bison brotli cairo coreutils coursier dbus docbook docbook-xsl double-conversion fd fnm fontconfig freetype fribidi gcc gdbm gdk-pixbuf gettext ghostscript glib gmp gnu-getopt gobject-introspection gradle graphite2 harfbuzz highlight hyperfine icu4c imagemagick imath isl jasper jbig2dec jpeg libb2 libde265 libffi libheif libidn libidn2 liblqr libmpc libomp libpng libproxy libpthread-stubs librsvg libtiff libtool libunistring libx11 libxau libxcb libxdmcp libxext libxrender little-cms2 lrzsz lua lzo m4 maven mono mpdecimal mpfr ncurses neofetch openexr openjdk openjpeg openssl@1.1 pandoc pango pcre pcre2 pixman pkg-config ponysay pv python@3.8 python@3.9 qt readline sbt screen screenfetch screenresolution shared-mime-info smartmontools sqlite tcl-tk telnet testdisk tree webp wget x265 xmlto xorgproto xz youtube-dl zsh zstd authy basictex blackhole-2ch discord firefox gitkraken google-chrome google-drive handbrake iina iterm2 java maccy mounty mysqlworkbench netnewswire obs qlvideo sbarex-qlmarkdown syntax-highlight tg-pro tiles transmission typora webpquicklook wireshark
```

> List packages on system
>
> ```bash
> brew list | egrep "^[^(==>)]" | xargs
> ```

# Outside packages

- [omz](https://ohmyz.sh/)
- [iterm2](https://iterm2.com/) (macOS) or
  [Alacritty](https://github.com/alacritty/alacritty) (UNIX systems)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [MesloLGS-NF-Regular size 18](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
- [fnm](https://github.com/Schniz/fnm)

# Colorscheme

I'm currently using One Dark. You can find it for:

- [Visual Studio Code](https://github.com/one-dark/vscode-one-dark-theme)
- [iTerm2](https://github.com/one-dark/iterm-one-dark-theme)
- [JetBrains' IDEs](https://github.com/one-dark/jetbrains-one-dark-theme)
- [vim](https://github.com/joshdick/onedark.vim/)

# LaTex & pandoc

- [Theme](https://github.com/Wandmalfarbe/pandoc-latex-template)

# If you want your own backup system

Check out the [wiki](https://github.com/Altair-Bueno/Demeter/wiki) to learn how
to do a dotfiles backup

# License

- [Scrips](scripts/) are licensed under the MIT license
- [restore.sh](restore.sh) is licensed under the MIT license
- [database icon](Icon?) licensed under MIT by
  [VigoKrumins](https://github.com/VigoKrumins/folder-icons/)
- Other files under the [backup folder](backup/) have different licenses and
  belong to their respective owners
