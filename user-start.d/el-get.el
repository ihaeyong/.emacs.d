;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "el-get")
    (progn
      (require 'el-get)
      (let (name path)
    (setq name (concat "emacs" (number-to-string emacs-major-version)))
    (setq path (concat "~/share/" name))
    (setq el-get-dir
          (expand-file-name
           (concat (file-name-as-directory path) "el-get")))
    (setq el-get-status-file
          (concat (file-name-as-directory el-get-dir) ".status.el"))
    (setq el-get-autoload-file
          (concat (file-name-as-directory el-get-dir) ".loaddefs.el")))
      (el-get)))
