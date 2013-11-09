;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "cperl-mode")
    (progn (autoload 'cperl-mode "cperl-mode" nil t)
       (add-hook 'cperl-mode-hook
             '(lambda ()
            (make-variable-buffer-local 'tab-width)
            (setq tab-width 4)
            (set-buffer-file-coding-system 'utf-8)
            (font-lock-mode)
            (set-buffer-modified-p nil)))
       (add-to-list 'auto-mode-alist '("\\.pl~?$" . cperl-mode))))
