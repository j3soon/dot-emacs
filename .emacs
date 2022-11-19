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

;; Set up color-theme-solarized (TODO: requires manual download)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;; Set to dark theme
(set-frame-parameter nil 'background-mode 'dark)
(set-terminal-parameter nil 'background-mode 'dark)
;; Load theme
(load-theme 'solarized t)

;; Set default font for Chinese on Windows (TODO: requires manual download)
;; TODO: Uncomment the line below on Windows
;; (set-frame-font "Microsoft YaHei Mono 12" nil t)

;; Inhibit Start Up Message
(setq inhibit-startup-message t)

;; Activate OrgMode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; Change entry state based on child
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))
(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)
;; Block changing parent to DONE when children are not all done
(setq org-enforce-todo-dependencies t)

;; Add `CANCELED` keyword to list
(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "CANCELED(c)" "DONE(d)")))
;; Set color for `CANCELED` keyword
(setq org-todo-keyword-faces
  '(("CANCELED" . (:foreground "cyan"))))
;; Keep track of when a certain TODO item was marked as done
(setq org-log-done 'time)

;; Use Indent Mode (use virtual spaces)
(setq org-startup-indented t)

;; Set default column format, which is shown with C-c C-x C-c and exited with C-c C-c or q on a column view line
(setq org-columns-default-format "%40ITEM(TASK) %1PRIORITY(P) %10EFFORT{:} %10CLOCKSUM %TAGS")

;; OrgMode Number of clock tasks to remember in history (1 to 9 + A to Z)
(setq org-clock-history-length 35)

;; Custom OrgMode Agenda Commands
;; Make sure to add current file to the list of agenda files with C-c [
(setq org-agenda-custom-commands
  ;; Show TODO/NEXT tasks with deadline with C-c a d
  '(("d" "Sort by deadline" tags "+DEADLINE={.+}/!+TODO|+NEXT|+WAITING"
    ;; Sort by ascending deadline
    ((org-agenda-sorting-strategy '(deadline-up))
      ;; Set column format
      (org-agenda-overriding-columns-format "%15ITEM %DEADLINE %EFFORT %TIMESTAMP")
      ;; Default to column mode (press q twice to exit)
      (org-agenda-view-columns-initially t)))
    ;; Show TODO/NEXT tasks with schedule with C-c a s
    ("s" "Sort by schedule" tags "+SCHEDULED={.+}/!+TODO|+NEXT|+WAITING"
    ;; Sort by ascending schedule
    ((org-agenda-sorting-strategy '(scheduled-up))
      (org-agenda-overriding-columns-format "%15ITEM %SCHEDULED %DEADLINE %TIMESTAMP")
      (org-agenda-view-columns-initially t)))
    ;; Show TODO/NEXT tasks with effort with C-c a f
    ("f" "Sort by effort" tags "+EFFORT={.+}/!+TODO|+NEXT|+WAITING"
    ;; Sort by ascending effort
    ((org-agenda-sorting-strategy '(effort-up))
      (org-agenda-overriding-columns-format "%30ITEM %EFFORT %DEADLINE %TIMESTAMP %SCHEDULED")
      (org-agenda-view-columns-initially t)))
    ;; Show TODO/NEXT tasks with timestamp with C-c a c
    ("c" "Sort by timestamp" tags "+TIMESTAMP={.+}/!+TODO|+NEXT|+WAITING"
    ;; Sort by ascending timestamp
    ((org-agenda-sorting-strategy '(ts-up))
      (org-agenda-overriding-columns-format "%15ITEM %TIMESTAMP %DEADLINE %SCHEDULED")
      (org-agenda-view-columns-initially t)))))
