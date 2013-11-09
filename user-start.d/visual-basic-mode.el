;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "visual-basic-mode")
    (progn
      (autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
      (add-to-list 'auto-mode-alist '("\\.vbs\\'" . visual-basic-mode))
      (add-to-list 'auto-mode-alist '("\\.vb\\'" . visual-basic-mode))
      (add-to-list 'auto-mode-alist '("\\.bas\\'" . visual-basic-mode))
      (add-to-list 'auto-mode-alist '("\\.frm\\'" . visual-basic-mode))
      (add-to-list 'auto-mode-alist '("\\.cls\\'" . visual-basic-mode))))
