(use-package lsp-mode
  :hook (rust-mode . lsp)
  :commands lsp
  :config
  ;; This will install rust-analyzer automatically if it's missing
  (setq lsp-auto-guess-root t)
  (setq lsp-rust-analyzer-server-command '("rust-analyzer"))
  (lsp-install-server 'rust-analyzer)
  (setq lsp-install-server nil)
  (setq lsp-rust-analyzer-server-command
        '("emacs-lsp-booster" "--" "rust-analyzer"))
  )


