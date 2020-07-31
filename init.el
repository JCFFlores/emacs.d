(org-babel-load-file (expand-file-name "README.org" user-emacs-directory))

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

;; Follow symlinks
(setq vc-follow-symlinks t)

(setq fill-column 80)
