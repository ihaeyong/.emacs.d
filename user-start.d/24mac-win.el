;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (locate-library "mac-win")
         (string-match "apple-darwin" system-configuration))
    (progn
      (if (fboundp 'mac-auto-ascii-mode) (mac-auto-ascii-mode t))))
