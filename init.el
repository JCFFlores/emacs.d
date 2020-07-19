(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(eval-when-compile (require 'use-package))

(use-package rainbow-delimiters :ensure t)
(use-package magit :ensure t)

;; Configure keyfreq
(use-package keyfreq
  :ensure t
  :config (keyfreq-mode 1) (keyfreq-autosave-mode 1))

(setq-default major-mode 'text-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Enable line numbers for all files
(global-display-line-numbers-mode 1)

;; Add rainbow-delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Counsel config
(use-package counsel :ensure t)
(ivy-mode 1)
(global-set-key "\C-s" 'swiper)
(counsel-mode 1)

;; Fix for if I ever have to work on mac again
(when (eq system-type 'darwin)
  (setq ns-command-modifier 'meta
	ns-alternate-modifier nil))

;; Follow symlinks
(setq vc-follow-symlinks t)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)
