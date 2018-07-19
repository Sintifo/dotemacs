(req-package diminish
  :config
  (diminish 'eldoc-mode)
  (diminish 'subword-mode)
  (diminish 'auto-revert-mode)
  (diminish 'abbrev-mode))

(req-package magit
  :commands magit-status
  :init
  (evil-leader/set-key "gs" 'magit-status)
  :config
  (setq magit-last-seen-setup-instructions "1.4.0")
  )

(req-package evil-magit
  :require magit
  :init
  (require 'evil-magit))

(req-package magit-todos
  :require magit
  :init
  (add-hook 'magit-status-mode-hook
            'magit-todos-mode))

(req-package which-key
  :diminish which-key-mode
  :config
  (which-key-mode 1)
  (which-key-setup-minibuffer))

(req-package pinentry
  :init
  (setq epa-pinentry-mode 'loopback)
  (pinentry-start))

(req-package exec-path-from-shell
  :config
  (exec-path-from-shell-copy-env "SSH_AGENT_PID")
  (exec-path-from-shell-copy-env "SSH_AUTH_SOCK")
  (exec-path-from-shell-copy-env "GPG_AGENT_INFO"))

(provide 'init-utils)
