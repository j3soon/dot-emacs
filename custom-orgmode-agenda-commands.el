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
