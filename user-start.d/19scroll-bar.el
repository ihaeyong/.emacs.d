;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (boundp 'window-system) (locate-library "scroll-bar"))
    (progn
      (require 'scroll-bar)
      (set-scroll-bar-mode 'right)))
