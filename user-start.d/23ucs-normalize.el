;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (locate-library "ucs-normalize")
         (string-match "apple-darwin" system-configuration))
    (progn
      ;; See also: https://gist.github.com/sky-y/3264252
      (require 'ucs-normalize)
      (setq file-name-coding-system 'utf-8-hfs)
      (setq locale-coding-system 'utf-8-hfs)
      (defun ucs-normalize-NFC-buffer ()
        (interactive)
        (ucs-normalize-NFC-region (point-min) (point-max)))
      (global-set-key (kbd "C-x RET u") 'ucs-normalize-NFC-buffer)))
