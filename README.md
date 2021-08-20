# Demeter

Demeter is a backup git repository that contains config files on my current 
macOS enviroment. Althought all files were created using macOS commandline 
utilities, they should work fine with any standard UNIX-like system that uses 
`zsh` as it's default shell.

# Structure
```text
.
├── .github
│   └── workflows
├── README.md
├── backup                              # Backup config files. Use `restore.sh`
│   ├── .bash_profile
│   ├── .gitconfig
│   ├── .iterm2_shell_integration.zsh   # macOS iTerm shell extras
│   ├── .p10k.zsh                       # zsh powerline 10k config
│   ├── .vimrc
│   ├── .zprofile
│   ├── .zshenv
│   └── .zshrc
├── restore.sh                          # Automated restore tool
└── scripts                             # Scripts folder. Should be on $PATH
    └── takeout                         # Take files out and remove folder

4 directories, 11 files
```

# Restore

So you fucked it up. Now what? No problemo, i've got you covered:

1. Download [restore.sh](restore.sh)
2. Run it on the console. It will create a `Demeter` folder on `$HOME` or 
   update it's content if it already exists
3. Install brew packages
4. Set up `zsh` as the default shell
5. Set up GitHub access token on git using the OS `credential 
    store`. Here are instructions for [macOS](https://gist.github.com/nepsilon/0fd0c779f76d7172f12477ba9d71bb66) and [Linux](https://stackoverflow.com/questions/5343068/is-there-a-way-to-cache-https-credentials-for-pushing-commits/18362082#18362082)



# Brew installed packages

Right now `HomeBrew` counts 135 packages installed. If you are not using
`brew` as your package manager you might need to manually install some of 
these packages or find alternatives.

```text
aom assimp autoconf automake bison brotli cairo coreutils coursier dbus docbook docbook-xsl double-conversion fd fontconfig freetype fribidi gcc gdbm gdk-pixbuf gettext ghostscript glib gmp gnu-getopt gobject-introspection gradle graphite2 harfbuzz highlight hyperfine icu4c imagemagick imath isl jasper jbig2dec jpeg libb2 libde265 libffi libheif libidn libidn2 liblqr libmpc libomp libpng libproxy libpthread-stubs librsvg libtiff libtool libunistring libx11 libxau libxcb libxdmcp libxext libxrender little-cms2 lrzsz lua lzo m4 maven mono mpdecimal mpfr ncurses neofetch openexr openjdk openjpeg openssl@1.1 pandoc pango pcre pcre2 pixman pkg-config ponysay pv python@3.8 python@3.9 qt readline sbt screen screenfetch screenresolution shared-mime-info smartmontools sqlite tcl-tk telnet testdisk tree webp wget x265 xmlto xorgproto xz youtube-dl zsh zstd authy basictex blackhole-2ch discord firefox gitkraken google-chrome google-drive handbrake iina iterm2 java maccy mos mounty mysqlworkbench netnewswire obs qlvideo sbarex-qlmarkdown sublime-text syntax-highlight tg-pro tiles transmission typora webpquicklook wireshark
```

# Outside packages
- [omz](https://ohmyz.sh/)
- [iterm2](https://iterm2.com/) (macOS) or [Alacritty](https://github.com/alacritty/alacritty)
  (UNIX systems)
- [powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

> ## List packages on system
> ```bash
> brew list | egrep "^[^(==>)]" | xargs
> ```


# If you want your own backup system
Check out the [wiki](https://github.com/Altair-Bueno/Demeter/wiki)
