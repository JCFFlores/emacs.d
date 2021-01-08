;;; package --- Emacs configuration -*- lexical-binding: t; -*-

;;; Commentary:
;;; The configuration resides in the file "README.org" as a literate config file
;;; Code:
(let* ((file-name-handler-alist nil)) ;; Setting file-name-handler-alist to nil during initialization speeds up start up
  (org-babel-load-file (expand-file-name "README.org" user-emacs-directory))

  (provide 'init))

;;; init.el ends here
