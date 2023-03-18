(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("b54bf2fa7c33a63a009f249958312c73ec5b368b1094e18e5953adb95ad2ec3a" default))
 '(package-selected-packages '(dracula-theme rainbow-mode nyan-mode sly)))

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
(custom-set-faces)

(set-frame-font "Signika 12" nil t)

