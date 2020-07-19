(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'rainbow-delimiters)
(setq-default major-mode 'text-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Enable line numbers for all files
(global-display-line-numbers-mode 1)

;; Add rainbow-delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Counsel config
(require 'counsel)
(ivy-mode 1)
(global-set-key "\C-s" 'swiper)
(counsel-mode 1)
