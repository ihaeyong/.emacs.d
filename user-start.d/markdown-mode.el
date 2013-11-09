;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(if (locate-library "markdown-mode")
    (progn
      (autoload 'markdown-mode "markdown-mode.el"
        "Major mode for editing Markdown files" t)
      (autoload 'gfm-mode "markdown-mode.el"
        "Major mode for editing Github Flavored Markdown files" t)
      (cond
       ((file-executable-p "/usr/local/bin/multimarkdown")
        (setq markdown-command "/usr/local/bin/multimarkdown"))
       ((file-executable-p "/usr/local/bin/markdown_py")
        (setq markdown-command "/usr/local/bin/markdown_py"))
       ((file-executable-p "/usr/local/bin/markdown.pl")
        (setq markdown-command "/usr/local/bin/markdown.pl"))
       ((file-executable-p "/usr/local/bin/Markdown")
        (setq markdown-command "/usr/local/bin/Markdown"))
       ((file-executable-p "/usr/local/bin/markdown")
        (setq markdown-command "/usr/local/bin/markdown"))
       ((file-executable-p "/usr/bin/multimarkdown")
        (setq markdown-command "/usr/bin/multimarkdown"))
       ((file-executable-p "/usr/bin/markdown_py")
        (setq markdown-command "/usr/bin/markdown_py"))
       ((file-executable-p "/usr/bin/markdown.pl")
        (setq markdown-command "/usr/bin/markdown.pl"))
       ((file-executable-p "/usr/bin/Markdown")
        (setq markdown-command "/usr/bin/Markdown"))
       ((file-executable-p "/usr/bin/markdown")
        (setq markdown-command "/usr/bin/markdown"))
       (t t))
      (defun markdown-current-region (from to)
        (interactive "r")
        (if (> from to)
            (rotatef from to))
        (let ((buffer-output (get-buffer-create "*markdown*")))
          (with-current-buffer buffer-output (erase-buffer))
          (call-process-region from to
                               markdown-command
                               nil
                               buffer-output
                               nil)
          (switch-to-buffer-other-window buffer-output))
        (defun markdown-preview-file ()
          "run Marked on the current file and revert the buffer"
          (interactive)
          (shell-command
           (format "open -a /Applications/Marked.app %s"
                   (shell-quote-argument (buffer-file-name)))))
        (global-set-key "\C-cm" 'markdown-preview-file))
      (add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))))
