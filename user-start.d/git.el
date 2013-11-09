;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "git")
    (progn
      (require 'git)
      (require 'git-blame)
      (require 'vc-git)))
