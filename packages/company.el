;; Install company-mode
(use-package company
  :ensure t
  :init
  (global-company-mode)  ;; Enable company globally
  :config
  (setq company-minimum-prefix-length 1  ;; Start completion after 1 character
        company-idle-delay 0.0           ;; No delay in showing suggestions
        company-show-numbers t)          ;; Show numbers for quick selection
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection)  ;; Use tab to complete selection
              ("M-n" . nil)  ;; Unbind M-n
              ("M-p" . nil)  ;; Unbind M-p
              ("C-n" . company-select-next)
              ("C-p" . company-select-previous)))

(use-package eglot
  :hook (rust-mode . eglot-ensure)
  :config
  ;; Add company backends to eglot
  (add-to-list 'eglot-server-programs '(rust-mode . ("rust-analyzer"))))

;; Enable company-mode with eglot
(add-hook 'eglot-managed-mode-hook
          (lambda ()
            (company-mode)))
