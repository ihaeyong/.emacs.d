;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "server")
    (progn
      (require 'server)
      ;; Suppress error "directory ~/.emacs.d/server is unsafe" on windows.
      ;; http://stackoverflow.com/questions/885793/emacs-error-when-calling-server-start
      (when (and (>= emacs-major-version 23) (equal window-system 'w32))
        (defun server-ensure-safe-dir (dir) "Noop" t))
      (server-start)))
