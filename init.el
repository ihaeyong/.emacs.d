;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(setq my-user-start-file (expand-file-name "~/.emacs.d/user-start"))
(setq my-user-start-dir (expand-file-name "~/.emacs.d/user-start.d"))

(load my-user-start-file 'noerror)
(let* ((dir my-user-start-dir)
       (el-suffix "\\.el\\'")
       (files (mapcar
           (lambda (path) (replace-regexp-in-string el-suffix "" path))
           (directory-files dir t el-suffix))))
  (while files (load (car files) 'noerror) (setq files (cdr files))))
(if custom-file (load custom-file 'noerror))

(put 'downcase-region 'disabled nil)
