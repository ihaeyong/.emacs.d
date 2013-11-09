;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "ls-lisp")
    (progn
      (setq dired-use-ls-dired nil)
      (setq ls-lisp-use-insert-directory-program nil)
      (require 'ls-lisp)))
