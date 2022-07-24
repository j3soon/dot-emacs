;; Add `CANCELED` keyword to list
(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "CANCELED(c)" "DONE(d)")))
;; Set color for `CANCELED` keyword
(setq org-todo-keyword-faces
  '(("CANCELED" . (:foreground "cyan"))))
;; Keep track of when a certain TODO item was marked as done
(setq org-log-done 'time)
