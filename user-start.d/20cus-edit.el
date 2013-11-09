;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "cus-edit")
    (progn
      (setq custom-file (expand-file-name "~/.emacs.d/custom.el"))))
