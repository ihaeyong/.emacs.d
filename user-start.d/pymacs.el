;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "pymacs")
    (progn
      (autoload 'pymacs-apply "pymacs")
      (autoload 'pymacs-call "pymacs")
      (autoload 'pymacs-eval "pymacs" nil t)
      (autoload 'pymacs-exec "pymacs" nil t)
      (autoload 'pymacs-load "pymacs" nil t)))
