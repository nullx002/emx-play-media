# emx-play-media
play media from emacs buffers using keybindings in external media player like vlc or mplayer

this package is not in melpa. you have to download zip folder from repository and place it in your .emacs.d/elpa folder and have to `cd` to that directory `emx-play-media` and have to compile fie using `M-x byte-compile-file RET emx-play-media.el` to compile it yourself. 

**add `(require 'emx-play-media)` to your `.emacs` or `.emacs.d/init.el` file.**

### to use:
---

`M-x play-youtube-video RET URL`

`M-x www-play-youtube-video` - when on url or anchor

`M-x play-vlc-video RET URL`

`M-x www-play-vlc-video` - when on url or anchor

`M-x play-mp3-podcast RET URL`

`M-x www-play-mp3-podcast` - when on url or anchor

**or in detail:**

place point/cursor on anchor text or url in buffer (like w3m, twittering mode, etc.) and use keybindings to start playing media in external player like vlc or mplayer.

default keybindings used by ~null are as follows:

for video and audio (using youtube-dl, if want to play audio only from youtube videos. make changes in .el accordingly. can check available formats for a video by command: `# youtube-dl -F url` in terminal)

`<f9> y` - input url and hit RET to play it using youtube-dl in vlc media player

`<f9> Y` - place cursor/point on anchor-text, url in buffer and hit `<f9> + SHIFT y` same as above with youtube-dl

`<f9> v` - play media without youtube-dl (if it is not installed on your system), directly inside vlc from web, can chagne resolution in .el file before compiling it.

`<f9> V` - place cursor/point on anchor-text, url in buffer and hit `<f9> + SHIFT v` same as above without youtube-dl

for all media supported by vlc player (should work with mplayer too, just change vlc to mplayer in .el file before byte-compiling)

`<f9 a>` - generic media player (all file types supported by vlc, best resolution is played by default)

`<f9 A>` - place cursosr/point on anchor-text, url in buffer and hit `<f9> + SHIFT a`

### keybindings:
---

keybindings here explained are default keybindings, if they conflict with the ones you already have you can change them in .el file before byte-compiling it in your elpa directory.

#### copying:
---

free to copy and redistribute, check license file for more information.

##### ~null on pale blue dot

                                         ##
                                 #####  ##
                              ##      ###
                            ##       ##  ##
                           ##       ##    ##
                          ##       ##      ##
                          ##      ##       ##
                          ##     ##        ##
                           ##   ##        ##
                            ## ##        ##
                              ###      ##
                             ##  #####   
                            ##

P.S.  ~null has not checked all defun with mplayer but it should work (probably even better than vlc)
