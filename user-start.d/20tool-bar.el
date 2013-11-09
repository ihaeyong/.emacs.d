;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (boundp 'window-system) (locate-library "tool-bar"))
    (progn (require 'tool-bar) (tool-bar-mode -1)))
