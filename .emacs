(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;init file
; describe-key
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("b54bf2fa7c33a63a009f249958312c73ec5b368b1094e18e5953adb95ad2ec3a" default))
 '(package-selected-packages '(dracula-theme sly rainbow-mode evil nyan-mode)))

(nyan-mode)
(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))

(define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))
(my-global-rainbow-mode 1)

(menu-bar-mode -1) ;; off bars
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq make-backup-files nil) ;; Don't want any backup files
(setq auto-save-list-file-name nil) ;; Don't want save any .saves files
(setq auto-save-default nil) ;; Don't want any auto saving

(setq inferior-lisp-program "/usr/bin/sbcl")

;; numbering lines
(when (version<= "26.0.50" emacs-version )
(global-display-line-numbers-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-frame-font "Liberation Mono 12" nil t)

(require 'evil)
(evil-mode 1)

;;;; define shortcuts for powerful commands
;;;; these can be invoked vim-style 
;;;; Esc-:<single_key_from_below>
(define-key evil-ex-map "b " 'helm-mini)
(define-key evil-ex-map "e" 'helm-find-files)
(define-key evil-ex-map "g" 'helm-projectile-grep)
(define-key evil-ex-map "f" 'helm-projectile-find-file)

;;;; I wept with joy about this in:
;;;; http://www.mycpu.org/emacs-24-magit-magic/
(define-key evil-ex-map "m" 'magit-blame)
