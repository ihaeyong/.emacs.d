;;; -*- mode: emacs-lisp; coding: utf-8-emacs; -*-

(defun my-make-scratch (&optional arg)
  (interactive)
  (progn
    (set-buffer (get-buffer-create "*scratch*"))
    (funcall initial-major-mode)
    (erase-buffer)
    (when initial-scratch-message (insert initial-scratch-message))
    (or arg (progn (setq arg 0) (switch-to-buffer "*scratch*")))
    (goto-char (point-max)) ;; currently, this line does not work. orz
    (cond ((= arg 0) (message "*scratch* is cleared up."))
      ((= arg 1) (message "another *scratch* is created")))
    (set-buffer-modified-p nil)))

(if (fboundp 'my-make-scratch)
    (progn (add-hook 'kill-buffer-query-functions
             (lambda ()
               (if (string= "*scratch*" (buffer-name))
               (progn (my-make-scratch 0) nil) t)))
       (add-hook 'after-save-hook
             (lambda ()
               (unless (member (get-buffer "*scratch*") (buffer-list))
             (my-make-scratch 1))))))
