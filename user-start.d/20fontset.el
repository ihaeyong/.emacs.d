;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (and (locate-library "fontset")
         (fboundp 'add-to-list)
         (fboundp 'display-graphic-p))
    (progn
      (cond
       ((and (string-match "linux-gnu" system-configuration)
             (display-graphic-p))
        (add-to-list 'default-frame-alist '(font . "TakaoGothic-14"))
        (add-to-list 'initial-frame-alist '(font . "TakaoGothic-14"))
        (add-hook 'after-init-hook
                  (lambda () (set-frame-font "TakaoGothic-14"))))
       ((and (string-match "mingw-nt" system-configuration)
             (display-graphic-p))
        (add-to-list 'default-frame-alist '(font . "MS Gothic-14"))
        (add-to-list 'initial-frame-alist '(font . "MS Gothic-14"))
        (add-hook 'after-init-hook
                  (lambda () (set-frame-font "MS Gothic-14"))))
       ((and (string-match "apple-darwin" system-configuration)
             (display-graphic-p))
        (set-face-attribute 'default nil :family "Menlo" :height 140)
        (set-fontset-font "fontset-default"
                          '(#x0080 . #x024F)
                          (font-spec :family "Menlo"))
        (set-fontset-font "fontset-default"
                          '(#x0370 . #x03FF)
                          (font-spec :family "Menlo"))
        (set-fontset-font "fontset-default"
                          'katakana-jisx0201
                          (font-spec :family "Hiragino Kaku Gothic ProN"))
        (set-fontset-font "fontset-default"
                          'japanese-jisx0213.2004-1
                          (font-spec :family "Hiragino Kaku Gothic ProN"))
        (set-fontset-font "fontset-default"
                          'japanese-jisx0213-2
                          (font-spec :family "Hiragino Kaku Gothic ProN"))
        (setq face-font-rescale-alist
              '((".*-Hiragino Kaku Gothic ProN-.*" . 1.2)
                (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
                (".*monaco-bold-.*-mac-roman" . 0.9)))))))
