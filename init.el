(org-babel-load-file (expand-file-name "README.org" user-emacs-directory))

(use-package org
  :ensure org-plus-contrib
  :bind (("C-c a" . org-agenda))
  :mode (("\\.org\\'" . org-mode))
  :config
  (add-to-list 'org-modules 'org-habit))

(use-package haskell-mode
  :ensure t)

;; Configure keyfreq
(use-package keyfreq
  :ensure t
  :config (keyfreq-mode 1)
	  (keyfreq-autosave-mode 1))

(use-package swiper
  :ensure t
  :bind (("\C-s" . swiper)))

;; Counsel config
(use-package counsel :ensure t)
(ivy-mode 1)
(counsel-mode 1)

;; Configure emacs backups
(use-package backup-each-save
  :ensure t
  :hook (after-save . backup-each-save))
(setq make-backup-files nil)

;; Org configuration
;; Set location for agenda files
(setq org-agenda-files (list (getenv "ORG_AGENDA")))

;; Keywords used in org todo items
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(i)" "|" "DONE(d)" "CANCELED(c)" "MISSED(m)")))

;; Colors for todo states
(setq org-todo-keyword-faces
      '(("CANCELED" . "magenta") ("MISSED" . "red")))

;; Max number of days to show in org agenda
(setq org-agenda-span 14)

;; Make org agenda not start on a fixed day
(setq org-agenda-start-on-weekday nil)

;; Follow symlinks
(setq vc-follow-symlinks t)

(setq fill-column 80)
