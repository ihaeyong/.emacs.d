;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "uniquify")
    (progn 
      (require 'uniquify)
      (setq uniquify-buffer-name-style 'post-forward-angle-brackets)))

