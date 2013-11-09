;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "iswitchb")
    (progn
      (require 'iswitchb)
      (if (fboundp 'iswitchb-default-keybindings)
          (iswitchb-default-keybindings))))
