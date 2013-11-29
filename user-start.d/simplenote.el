;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "simplenote")
    (progn
      (require 'simplenote)
      (if (locate-library "netrc")
          (progn
            (require 'netrc)
            (let* ((credentials (netrc-credentials "app.simplenote.com"))
                   (login (nth 0 credentials))
                   (password (nth 1 credentials)))
              (setq simplenote-email login)
              (setq simplenote-password password))
            (simplenote-setup)
            (setq simplenote-notes-mode 'markdown-mode)))))
