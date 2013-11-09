;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (boundp 'window-system)
         (eq window-system 'ns)
         (display-graphic-p))
    (progn
      (mac-add-key-passed-to-system 'shift)
      (add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)))
