;; rustmode.el -- Configuration for Rust development with eglot and lsp-booster

(use-package rust-mode
  :ensure t
  :hook (rust-mode . eglot-ensure))

(use-package eglot
  :ensure t
  :config
  (add-to-list 'eglot-server-programs '(rust-mode . ("rust-analyzer")))
  ;; Disable eldoc in Rust if needed
  )
