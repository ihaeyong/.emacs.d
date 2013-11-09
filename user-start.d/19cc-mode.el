;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "cc-mode")
    (progn
      (add-hook 'c-mode-common-hook '(lambda() (c-set-style "cc-mode")))
      (add-to-list 'magic-mode-alist
                   '("\\(.\\|\n\\)*\n@implementation" . objc-mode))
      (add-to-list 'magic-mode-alist
                   '("\\(.\\|\n\\)*\n@interface" . objc-mode))
      (add-to-list 'magic-mode-alist
                   '("\\(.\\|\n\\)*\n@protocol" . objc-mode))
      (setq-default indent-tabs-mode nil)))
