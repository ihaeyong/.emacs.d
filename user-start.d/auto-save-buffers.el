;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "auto-save-buffers")
    (progn (require 'auto-save-buffers)
       (run-with-idle-timer 30 t 'auto-save-buffers)
       (setq auto-save-buffers-exclude-regexp "\\.asc$")))
