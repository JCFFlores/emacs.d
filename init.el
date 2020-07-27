(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(defun safe-set-font (font-name)
  "If the font exists set it to be used in all frames"
  (when (member font-name (font-family-list))
    (set-frame-font font-name t t)))

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package org
  :ensure org-plus-contrib
  :bind (("C-c a" . org-agenda))
  :mode (("\\.org\\'" . org-mode))
  :config
  (add-to-list 'org-modules 'org-habit))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)))

(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package haskell-mode
  :ensure t)

;; Configure keyfreq
(use-package keyfreq
  :ensure t
  :config (keyfreq-mode 1)
	  (keyfreq-autosave-mode 1))

(setq-default major-mode 'text-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Enable line numbers for all files
(global-display-line-numbers-mode 1)

(use-package swiper
  :ensure t
  :bind (("\C-s" . swiper)))

;; Counsel config
(use-package counsel :ensure t)
(ivy-mode 1)
(counsel-mode 1)

;; Clear emacs screen
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; Configure emacs backups
(use-package backup-each-save
  :ensure t
  :hook (after-save . backup-each-save))
(setq make-backup-files nil)

(use-package fish-mode
  :ensure t)

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

;; Fix for if I ever have to work on mac again
(when (eq system-type 'darwin)
  (setq ns-command-modifier 'meta
	ns-alternate-modifier nil))

;; Follow symlinks
(setq vc-follow-symlinks t)

(setq fill-column 80)

;; Set font
(setq font-name "FuraCode Nerd Font")
(safe-set-font font-name)
