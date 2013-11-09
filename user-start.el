;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (boundp 'window-system)
    (setq frame-title-format `(,(user-login-name) "%%" ,invocation-name
				 "@" ,(system-name) ":"
				 (buffer-file-name "%f") "\[%b\]")))

(setq completion-ignore-case t)
(setq visible-bell nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 8)
(if (file-directory-p (expand-file-name "~/bin"))
    (progn 
      (add-to-list 'exec-path (expand-file-name "~/bin"))
      (let ((exec-path (reverse (cdr-safe (reverse exec-path)))))
        (setenv "PATH" (mapconcat 'identity exec-path path-separator)))))

(if (and (boundp 'window-system) (eq window-system 'ns))
    (progn
      (cond
       ((and (string-match "apple-darwin" system-configuration)
             (display-graphic-p))
        (define-key function-key-map [165] [?\\])
        (define-key function-key-map [67109029] [?\C-\\])
        (define-key function-key-map [134217893] [?\M-\\])
        (define-key function-key-map [201326757] [?\C-\M-\\])
        (defun scroll-down-with-lines () "" (interactive) (scroll-down 3))
        (defun scroll-up-with-lines () "" (interactive) (scroll-up 3))
        (global-set-key [wheel-up] 'scroll-down-with-lines)
        (global-set-key [wheel-down] 'scroll-up-with-lines)
        (global-set-key [double-wheel-up] 'scroll-down-with-lines)
        (global-set-key [double-wheel-down] 'scroll-up-with-lines)
        (global-set-key [triple-wheel-up] 'scroll-down-with-lines)
        (global-set-key [triple-wheel-down] 'scroll-up-with-lines)
        (setq ns-command-modifier (quote meta))
        (setq ns-alternate-modifier (quote super))))))
