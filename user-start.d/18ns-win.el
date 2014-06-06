;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (boundp 'window-system)
         (eq window-system 'ns)
         (display-graphic-p))
    (progn
      (if (fboundp 'mac-add-key-passed-to-system)
          (mac-add-key-passed-to-system 'shift))
      (if (fboundp 'mac-change-language-to-us)
          (add-hook 'minibuffer-setup-hook 'mac-change-language-to-us))))
