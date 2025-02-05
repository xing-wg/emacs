(use-package markdown-mode
  :ensure t)

(use-package yasnippet
  :ensure t)

(use-package yasnippet-snippets
  :ensure t)

(use-package lsp-bridge
  :vc (:fetcher "github" :repo "manateelazycat/lsp-bridge")
  :config (global-lsp-bridge-mode))

(use-package popon
  :ensure t)

(use-package acm-terminal
  :vc (:fetcher "github" :repo "twlz0ne/acm-terminal")
  :unless (display-graphic-p)
  :config (add-hook 'emacs-startup-hook
		    (lambda ()
		      (require 'yasnippet)
		      (yas-global-mode 1)

		      (require 'lsp-bridge)
		      (global-lsp-bridge-mode)

		      (unless (display-graphic-p)
			(with-eval-after-load 'acm
			  (require 'acm-terminal))))))


(provide 'init-lsp-bridge)
