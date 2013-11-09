;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "subr")
    (progn
      (if (and (boundp 'window-system) (eq window-system 'ns))
          (progn
            (cond
             ((and (string-match "apple-darwin" system-configuration)
                   (display-graphic-p))
              (define-key global-map [165] nil)
              (define-key global-map [67109029] nil)
              (define-key global-map [134217893] nil)
              (define-key global-map [201326757] nil)))))))
