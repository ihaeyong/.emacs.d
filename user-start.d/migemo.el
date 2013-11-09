;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "migemo")
    (progn
      (setq migemo-command "/usr/local/bin/cmigemo")
      (setq migemo-options '("-q" "--emacs" "-i" "\a"))
      (setq migemo-directory "/usr/local/share/migemo/utf-8")
      (setq migemo-user-dictionary nil)
      (setq migemo-regex-dictionary nil)
      (setq migemo-use-pattern-alist t)
      (setq migemo-use-frequent-pattern-alist t)
      (setq migemo-pattern-alist-length 1000)
      (setq migemo-coding-system 'utf-8-unix)
      (load-library "migemo")
      (migemo-init)))
