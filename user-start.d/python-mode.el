;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "python-mode")
    (progn
      (autoload 'python-mode "python-mode" nil t)
      (set-default 'py-indent-offset 4)
      (setq py-indent-offset 4)
      (add-hook 'python-mode-hook
        '(lambda ()
           (make-variable-buffer-local 'tab-width)
           (make-variable-buffer-local 'py-indent-offset)
           (setq tab-width 4)
           (setq python-indent-offset tab-width)
           (set-buffer-file-coding-system 'utf-8)
           (font-lock-mode)
           (set-buffer-modified-p nil)))
      (add-to-list 'auto-mode-alist '("\\.py~?$" . python-mode))))
