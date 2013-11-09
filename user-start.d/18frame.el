;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (locate-library "frame")
         (display-graphic-p)
         (fboundp 'add-to-list))
    (progn
      (add-to-list 'default-frame-alist '(height . 40))
      (add-to-list 'default-frame-alist '(width  . 82))
      (add-to-list 'initial-frame-alist '(height . 40))
      (add-to-list 'initial-frame-alist '(width  . 82))))
