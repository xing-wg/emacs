(use-package rust-mode
  :ensure t
  :config
  (progn
    (add-hook 'rust-mode-hook
              (lambda () (setq indent-tabs-mode nil)))
    (setq rust-format-on-save t)))


(provide 'init-rust)
