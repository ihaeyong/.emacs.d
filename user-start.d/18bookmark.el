;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "bookmark")
    (progn
      (require 'bookmark)
      (setq bookmark-default-file
            (expand-file-name "~/.emacs.bmk"))
      (unless (file-exists-p bookmark-default-file) (bookmark-save))
      (bookmark-load bookmark-default-file)))
