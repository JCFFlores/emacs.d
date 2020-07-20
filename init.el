(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(use-package rainbow-delimiters :ensure t)
(use-package magit :ensure t)

;; Configure keyfreq
(use-package keyfreq
  :ensure t
  :config (keyfreq-mode 1)
	  (keyfreq-autosave-mode 1))

(setq-default major-mode 'text-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Enable line numbers for all files
(global-display-line-numbers-mode 1)

;; Add rainbow-delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

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

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
