;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; TODO: Comment out the line below for faster launch
(package-refresh-contents)

;; Set up color-theme-solarized (TODO: requires manual download)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;; Set to dark theme
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
;; Load theme
(load-theme 'solarized t)
