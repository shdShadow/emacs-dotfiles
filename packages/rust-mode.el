;; rustmode.el -- Configuration for Rust development with eglot and lsp-booster

(use-package rust-mode
  :ensure t
  :hook (rust-mode . lsp-mode)
  (add-hook 'rust-mode-hook #'lsp)
  (setq rust-mode-treesitter-derive t))
