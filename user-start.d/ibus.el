;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "ibus")
    (progn
      (require 'ibus)
      (add-hook 'after-init-hook 'ibus-mode-on)
      (global-set-key "\C-\\" 'ibus-toggle)
      (ibus-define-common-key ?\C-\s nil)
      (ibus-define-common-key ?\C-/ nil)
      (setq ibus-cursor-color '("red" "black" "limegreen"))))
