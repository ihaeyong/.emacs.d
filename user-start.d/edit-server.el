;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "edit-server")
    (progn
      (require 'edit-server)
      (edit-server-start)))
