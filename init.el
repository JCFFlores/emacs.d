(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq-default major-mode 'text-mode)

(add-hook 'prog-mode-hook 'electric-pair-mode)

;; Enable line numbers for all files
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)
