;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "files")
    (progn (load-library "files")
       (setq backup-inhibited t)
       (setq delete-auto-save-files t)
       (setq backup-by-copying t)))
