;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "android-mode")
    (progn
      (cond
       ((string-match "windows" system-configuration)
        (setq android-mode-sdk-dir
          (or (getenv "ANDROID_SDK_ROOT") "~/android-sdk-windows")))
       ((string-match "apple-darwin" system-configuration)
        (setq android-mode-sdk-dir
          (or (getenv "ANDROID_SDK_ROOT") "~/android-sdk-macosx")))
       ((string-match "linux" system-configuration)
        (setq android-mode-sdk-dir
          (or (getenv "ANDROID_SDK_ROOT") "~/android-sdk-linux"))))))
