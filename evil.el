;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;; TODO: Comment out the line below for faster launch
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
;; Enable Evil
(require 'evil)
(evil-mode 1)
;; Fix TAB key conflict with OrgMode
(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
