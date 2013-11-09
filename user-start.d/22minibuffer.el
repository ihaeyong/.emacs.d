;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "minibuffer")
    (setq read-file-name-completion-ignore-case t))
