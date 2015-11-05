;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "emoji-cheat-sheet-plus") (require 'emoji-cheat-sheet-plus)
  (if (locate-library "emoji-cheat-sheet") (require 'emoji-cheat-sheet)))
