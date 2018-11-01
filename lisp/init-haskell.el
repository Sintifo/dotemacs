;;; Haskell
(req-package haskell-mode
  :commands (haskell-mode))

(req-package flycheck-haskell
  :init
  (add-hook 'haskell-mode-hook 'flycheck-haskell-setup))

(provide 'init-haskell)
