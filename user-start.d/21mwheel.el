;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "mwheel")
    (progn (require 'mwheel)
       (if (fboundp 'mouse-wheel-mode) (mouse-wheel-mode t))
       (setq mouse-wheel-follow-mouse t)))
