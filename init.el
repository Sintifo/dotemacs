;; init.el --- The new config file

(add-to-list 'load-path (concat user-emacs-directory "lisp"))

;;;; Put Customize stuff into separate file
(setq custom-file (concat user-emacs-directory (convert-standard-filename "custom.el")))
(load custom-file 'noerror)

;; Calls (package-initialize)
(require 'init-core)
(require 'init-evil)
(require 'init-appearance)
(require 'init-theme)
(require 'init-editor)
(require 'init-navigation)
(require 'init-utils)
(require 'init-window)
(require 'init-buffer)
(require 'init-lsp)
(require 'init-c++)
(require 'init-rust)
(require 'init-python)
(require 'init-lisp)
(require 'init-web)
(require 'init-auto-insert)
(require 'init-org)


(req-package-finish)
