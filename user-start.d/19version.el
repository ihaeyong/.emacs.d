;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "version")
    (progn
      (let (major name path)
        (setq major (number-to-string emacs-major-version))
        (setq name (concat "emacs" major))
        (setq path (concat "~/share/" name))
        (setq my-user-lisp-dir
              (expand-file-name (concat path "/user-lisp")))
        (if (file-directory-p my-user-lisp-dir)
            (progn
              (add-to-list 'load-path my-user-lisp-dir)
              (let ((default-directory my-user-lisp-dir))
                (normal-top-level-add-subdirs-to-load-path)))))))
