;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (locate-library "fontset")
         (fboundp 'add-to-list)
         (fboundp 'display-graphic-p))
    (progn
      (cond
       ((and (string-match "linux-gnu" system-configuration)
             (display-graphic-p))
        (add-to-list 'default-frame-alist '(font . "TakaoGothic-12"))
        (add-to-list 'initial-frame-alist '(font . "TakaoGothic-12"))
        (set-frame-font "TakaoGothic-12"))
       ((and (string-match "mingw-nt" system-configuration)
             (display-graphic-p))
        (add-to-list 'default-frame-alist '(font . "MS Gothic-12"))
        (add-to-list 'initial-frame-alist '(font . "MS Gothic-12"))
        (set-frame-font "MS Gothic-12"))
       ((and (string-match "apple-darwin" system-configuration)
             (display-graphic-p))
        (create-fontset-from-ascii-font
         "Menlo-14:weight=normal:slant=normal"
         nil
         "menlokakugo")
        (set-fontset-font
         "fontset-menlokakugo"
         'unicode
         (font-spec :family "Hiragino Kaku Gothic ProN" :size 16)
         nil
         'append)
        (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))
        (add-to-list 'initial-frame-alist '(font . "fontset-menlokakugo"))
        (set-frame-font "fontset-menlokakugo")))))
