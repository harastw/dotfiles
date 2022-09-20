; init file
; describe-key
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(grandshell))
 '(custom-safe-themes
   '("3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c"
     "267cf309b02f463cd50df6a9ca67034e32698510995fefaa3c1bfee2c0d30f0e"
     "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b"
     "91964f59704afb8941929ff19894e3ae5b614c2a29ccb72c8b2bbf0502c8054d"
     "b4e786d88aeb48bce6c3b93a72d50e9c98966b759b2b09d837ea93e25acb8cc2"
     "f028e1985041fd072fa9063221ee9c9368a570d26bd6660edbd00052d112e8bb"
     "e8882a809fb14f2307410a659846a06bfa58a2279ffb1f5aca0c3aecbcb6aaee"
     "3325e2c49c8cc81a8cc94b0d57f1975e6562858db5de840b03338529c64f58d1" default))
 '(package-selected-packages '(grandshell-theme eglot dracula-theme slime gruvbox-theme)))

(menu-bar-mode -1) ;; off bars
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 120) ;; font size
;; (setq show-paren-style 'expression) ;; show (...)
;; (show-paren-mode 2)

(setq make-backup-files nil) ;; Don't want any backup files
(setq auto-save-list-file-name nil) ;; Don't want save any .saves files
(setq auto-save-default nil) ;; Don't want any auto saving

(setq inferior-lisp-program "/usr/bin/sbcl")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; (require 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
;; (add-hook 'c-mode-hook 'eglot-ensure)
;; (add-hook 'c++-mode-hook 'eglot-ensure)
;; (add-to-list 'flycheck-disabled-checkers 'c/c++-clang)
;; (add-to-list 'eglot-stay-out-of 'flymake)

;; numbering lines
(when (version<= "26.0.50" emacs-version )
(global-display-line-numbers-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(define-key global-map (kbd "C-r") nil)
(define-key global-map (kbd "C-f") nil)
(define-key global-map (kbd "C-1") nil)
(define-key global-map (kbd "C-2") nil)
(define-key global-map (kbd "C-3") nil)

(add-hook 'prog-mode-hook
  (lambda ()
    (local-set-key "\C-d" #'forward-char))) ;; c++ mode, f*ck u!

;; hotheys
;; SSS keys
(global-set-key (kbd "C-f") 'execute-extended-command) ;; execute command
(global-set-key (kbd "C-n") 'newline)
(global-set-key (kbd "C-r C-r") '(load-file "~/.emacs"))

;; navigation
(global-set-key (kbd "C-` c") 'completion-at-point) ;; complete
(global-set-key (kbd "C-w") 'previous-line) ;; up
(global-set-key (kbd "C-s") 'next-line) ;; down
(global-set-key (kbd "C-a") 'backward-char) ;; left
(global-set-key (kbd "C-d") 'forward-char) ;; right
(global-set-key (kbd "C-q") 'beginning-of-line) ;; begin of line
(global-set-key (kbd "C-e") 'end-of-line) ;; end of line

(global-set-key (kbd "C-u") 'backward-page) ;; previous page
(global-set-key (kbd "C-j") 'scroll-up) ;; next page
(global-set-key (kbd "C-h") 'backward-word) ;; previous word
(global-set-key (kbd "C-k") 'forward-word) ;; next word
(global-set-key (kbd "C-y") 'beginning-of-buffer) ;; begin of buffer
(global-set-key (kbd "C-i") 'end-of-buffer) ;; end of buffer
;; text edit
(global-set-key (kbd "C-,") 'delete-char) ;; delete char
(global-set-key (kbd "C-.") 'kill-word) ;; kill word
(global-set-key (kbd "C-/") 'kill-line) ;; kill line
;; mark
(global-set-key (kbd "C-]") 'kill-region) ;; cut
(global-set-key (kbd "C-p") 'yank) ;; past
(global-set-key (kbd "C-[") 'kill-ring-save) ;; copy
;; search
(global-set-key (kbd "C-'") 'isearch-forward) ;; search
(global-set-key (kbd "C-;") 'isearch-backward) ;; back search
(global-set-key (kbd "C-l") 'goto-line) ;; go to line
;; files and buffers
(global-set-key (kbd "C-r o") 'find-file) ;; find file
(global-set-key (kbd "C-r s") 'save-buffer) ;; save buffer
(global-set-key (kbd "C-r w") 'write-file) ;; write file with new name
(global-set-key (kbd "C-r e") 'save-buffers-kill-emacs) ;; exit
(global-set-key (kbd "C-r d") 'delete-other-windows) ;; delete other window
(global-set-key (kbd "C-r v") 'split-window-vertically) ;; split vertically
(global-set-key (kbd "C-r h") 'split-window-horizontally) ;; horizontally
(global-set-key (kbd "C-r n") 'other-window) ;; in other window
(global-set-key (kbd "C-b") 'undo) ;; undo
