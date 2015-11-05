;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "yaml-mode")
    (progn
      (autoload 'yaml-mode "yaml-mode.el"
        "Major mode for editing Yaml files" t)
      (add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))))
