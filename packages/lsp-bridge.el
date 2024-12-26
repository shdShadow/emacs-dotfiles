(add-to-list 'load-path "/home/kage/.emacs.d/manual_plugins/lsp-bridge")

(require 'yasnippet)
(yas-global-mode 1)

(require 'lsp-bridge)
(global-lsp-bridge-mode)
(setq lsp-bridge-server-command "rust-analyzer")
;; Disable automatic popups for function signatures
(setq lsp-bridge-enable-hover-popup t)
(setq lsp-bridge-enable-inlay-hint t)
(setq lsp-bridge-enable-hover-diagnostic t)
;; Keybinding to manually show the function definition on hover


