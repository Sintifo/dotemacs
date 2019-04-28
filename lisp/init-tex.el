(req-package tex
  :ensure auctex
  :init
  (add-hook 'latex-mode-hook 'flycheck-mode 'flyspell-mode)
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (setq-default TeX-engine 'luatex)
  (setq TeX-source-correlate-mode t)
  (setq LaTex-item-ident 0))

(provide 'init-tex)
