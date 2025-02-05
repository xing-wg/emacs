;; UI
(menu-bar-mode -1)
(fset 'display-startup-echo-area-message 'ignore)  ;display startup echo message
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)

;; Edit
(electric-pair-mode t)

;; Other
(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)

;; Cache file
(save-place-mode t)
(setq save-place-file (expand-file-name "cache/places" user-emacs-directory))
(setq custom-file (expand-file-name "cache/custom.el" user-emacs-directory))
(setq auto-save-list-file-prefix (expand-file-name "cache/auto-save-list/.saves-" user-emacs-directory))


(provide 'init-defaults)
