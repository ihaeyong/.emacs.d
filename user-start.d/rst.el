;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "rst")
    (progn
      (add-hook
       'rst-mode-hook
       (lambda () (setq rst-slides-program "open -a \"Google Chrome\"")))
      (add-to-list 'auto-mode-alist '("\\.rst~?$" . rst-mode))))
