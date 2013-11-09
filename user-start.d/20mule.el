;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (featurep 'mule)
    (progn
      (set-language-environment "Japanese")
      (prefer-coding-system 'utf-8)
      (set-default-coding-systems 'utf-8)
      (set-keyboard-coding-system 'utf-8)
      (if (string-match "mingw" system-configuration)
          (progn
            (set-clipboard-coding-system 'japanese-cp932)
            (setq file-name-coding-system 'japanese-cp932)
            (setq locale-coding-system 'japanese-cp932))
        (set-clipboard-coding-system 'utf-8)
        (setq file-name-coding-system 'utf-8)
        (setq locale-coding-system 'utf-8))
      (if (string-match "apple-darwin" system-configuration)
          (setq default-input-method "MacOSX"))))
