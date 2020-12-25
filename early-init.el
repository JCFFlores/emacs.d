;;; early-init.el --- Early configuration -*- lexical-binding:t -*-

;;; Commentary:
;; Leverage early-init.el to speed up startup.

;;; Code:
(setq gc-cons-threshold 100000000)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(provide 'early-init)

;;; early-init.el ends here
