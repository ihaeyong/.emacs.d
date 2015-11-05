;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

;; 24.4 or upper, "Package iswitchb is obsolete!"
(if (not (and (>= emacs-major-version 24)(>= emacs-minor-version 4)))
    (if (and (locate-library "iswitchb")
             (not (locate-library "icomplete")))
        (progn
          (require 'iswitchb)
          (if (fboundp 'iswitchb-default-keybindings)
              (iswitchb-default-keybindings)))))
