;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "autorevert")
    (progn
      (require 'autorevert)
      (global-auto-revert-mode 1)))

