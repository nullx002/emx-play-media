;;; emx-play-media.el --- play media from emacs buffers
;;
;; Author: ~nullx002
;; Maintainer: ~nullx002 (github)
;; Created: 04 March 2016
;; Keywords: play, media, vlc, mplayer, w3m, buffers
;; URL: https://github.com/nullx002/emx-play-media
;; Version: 0.2

;; This package is not in MELPA, created for personal use.

;; This file is not part of GNU Emacs.

;; This code is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or
;; (at your option) any later version.

;; This code is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.


;;; emx-play-media starts here


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;     play youtube video          ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; use this instead of "start-process-shell-command" only if you want info displayed about media being played in a new buffer

;;(defun play-youtube-video (url)  
;;  (interactive "sURL: ")  
;;  (async-shell-command
;;   (concat "youtube-dl -f 36  -o - " url " | vlc -")))
;;(global-set-key (kbd "<f9> y") 'play-youtube-video)


(defun play-youtube-video (url)
  (interactive "sURL: ")
  (start-process-shell-command "youtubebar"
            nil "youtube-dl -f 36  -o - " url " | vlc --no-autoscale --zoom 1.8 -"))
(global-set-key (kbd "<f9> y") 'play-youtube-video)

(defun www-play-youtube-video ()
  (interactive)
  (play-youtube-video
    (or (w3m-next-anchor (point))
        (thing-at-point 'url))))
(global-set-key (kbd "<f9> Y") 'www-play-youtube-video)


(defun play-vlc-video (url)
  (interactive "sURL: ")
  (start-process-shell-command "vlcbar"
            nil  "vlc --no-autoscale --zoom 2 --preferred-resolution 240 " url ""))
(global-set-key (kbd "<f9> v") 'play-vlc-video)

(defun www-play-vlc-video ()
  (interactive)
  (play-vlc-video
    (or (w3m-next-anchor (point))
       (thing-at-point 'url))))
(global-set-key (kbd "<f9> V") 'www-play-vlc-video)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;     play mp3 podcasts           ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun play-mp3-podcast (url)
  (interactive "sURL: ")
  (start-process-shell-command "mp3podcast"
            nil "vlc " url ""))
(global-set-key (kbd "<f9> a") 'play-mp3-podcast)

(defun www-play-mp3-podcast ()
  (interactive)
  (play-mp3-podcast
   (or (w3m-next-anchor (point))
       (thing-at-point 'url))))
(global-set-key (kbd "<f9> A") 'www-play-mp3-podcast)

(provide 'emx-play-media)

;;; emx-play-media ends here
