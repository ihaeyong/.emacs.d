;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "browse-url")
    (progn
      (if (and (string-match "linux-gnu" system-configuration)
               (boundp 'window-system)
               (eq window-system 'x))
          (progn
            (setq browse-url-browser-function '(("." . browse-url-generic)))
            (setq browse-url-generic-program "google-chrome")))))
