;; Disable Toolbars and other ugly stuff
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq inhibit-startup-screen t)

(show-paren-mode t)
(blink-cursor-mode -1)
(column-number-mode t)

;; Set frames by default maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Font
(add-to-list 'default-frame-alist
             '(font . "Iosevka Term SS11"))

(defun xy//remove-bold ()
  (interactive)
  (mapc
   (lambda (face)
     (set-face-attribute face nil :weight 'normal :underline nil))
   (face-list)))

(setq-default show-trailing-whitespace t
              echo-keystrokes 0.5)

(req-package beacon
  :diminish beacon-mode
  :config
  (beacon-mode 1))

(req-package spaceline
  :config
  (require 'spaceline-config)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (spaceline-spacemacs-theme))


;; Set bell to flashing of modline
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))

(provide 'init-appearance)
