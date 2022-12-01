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
 '(custom-enabled-themes '(gruvbox-dark-hard))
 '(custom-safe-themes
   '("d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "803aaddee599b43da31fb0fd8fae0fa58b4ef7617c673f07201e3463a3099957" "776c1ab52648f98893a2aa35af2afc43b8c11dd3194a052e0b2502acca02bfce" "fa1b2c364b1d058d0611caa5f5c9b2e8cdd0eca519ef88af2de2a2728bbf8070" "d824f0976625bb3bb38d3f6dd10b017bdb4612f27102545a188deef0d88b0cd9" default))
 '(package-selected-packages
   '(rainbow-mode lua-mode evil dashboard ubuntu-theme nyan-mode slime gruvbox-theme)))

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

(set-frame-font "hermit 12" nil t)

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
