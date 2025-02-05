(use-package term
  :ensure nil
  :bind (:map term-raw-map
         ("M-:" . nil)
         ("M-x" . nil)
	 ("C-h" . nil))
  :config
  (progn
    (defun +ansi-term ()
      (interactive)
      (ansi-term shell-file-name))))

(provide 'init-term)
