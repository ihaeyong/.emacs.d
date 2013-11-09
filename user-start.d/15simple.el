;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "simple")
    (progn
      (require 'simple)
      (transient-mark-mode 1)
      (size-indication-mode t)
      (column-number-mode t)))
