(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages") t)
(package-initialize)

(setq-default major-mode 'text-mode)

(add-hook 'emacs-lisp-mode-hook 'electric-pair-mode)
