;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (boundp 'window-system) (eq window-system 'x))
    (setq x-select-enable-clipboard t))
