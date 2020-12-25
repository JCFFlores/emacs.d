;;; package --- Emacs configuration

;;; Commentary:
;;; The configuration resides in the file "README.org" as a literate config file
;;; Code:
(let* ((file-name-handler-alist nil)
       ;; Setting file-name-handler-alist to nil during initialization speeds up start up
       (compiled-file (expand-file-name "README.elc" user-emacs-directory)))
  (if (file-exists-p compiled-file)
      (load-file compiled-file)
    (org-babel-load-file (expand-file-name "README.org" user-emacs-directory)))

  (provide 'init))

;;; init.el ends here
