;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "netrc")
    (progn
      (autoload 'netrc-credentials "netrc.el" nil t)
      (setq netrc-file "~/.netrc")))
