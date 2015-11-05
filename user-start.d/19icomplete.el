;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "icomplete")
    (progn
      (require 'icomplete)
      (setq icomplete-exceptional-command-list
            '(dired-create-directory
              dired-do-copy
              dired-do-rename))
      (icomplete-mode 1)))
