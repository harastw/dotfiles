; init file
; describe-key
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(ubuntu))
 '(custom-safe-themes
   '("7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "803aaddee599b43da31fb0fd8fae0fa58b4ef7617c673f07201e3463a3099957" "776c1ab52648f98893a2aa35af2afc43b8c11dd3194a052e0b2502acca02bfce" "fa1b2c364b1d058d0611caa5f5c9b2e8cdd0eca519ef88af2de2a2728bbf8070" "d824f0976625bb3bb38d3f6dd10b017bdb4612f27102545a188deef0d88b0cd9" default))
 '(package-selected-packages
   '(js2-mode darktooth-theme dashboard moe-theme ubuntu-theme melancholy-theme ayu-theme alect-themes nyan-mode grandshell-theme slime gruvbox-theme)))

(nyan-mode)

(setq mode-line-format
      (list
       '(:eval (list (nyan-create)))
       ))

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

;; numbering lines
(when (version<= "26.0.50" emacs-version )
(global-display-line-numbers-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(dolist (key '("\C-a" "\C-b" "\C-c" "\C-d" "\C-e" "\C-f" "\C-g"
               "\C-h" "\C-k" "\C-l" "\C-n" "\C-o" "\C-p" "\C-q"
               "\C-t" "\C-u" "\C-v" "\C-x" "\C-z" "\e" "\C-r"))
  (global-unset-key key))

(global-set-key (kbd "C-p") 'dabbrev-expand) ;; base complete
    (define-key minibuffer-local-map (kbd "C-p") 'dabbrev-expand)

;; hotheys
;; SSS keys
(global-set-key (kbd "C-m") 'execute-extended-command) ;; execute command
(global-set-key (kbd "C-n") 'newline)

;; navigation
(global-set-key (kbd "C-` c") 'completion-at-point) ;; complete
(global-set-key (kbd "C-w") 'previous-line) ;; up
(global-set-key (kbd "C-s") 'next-line) ;; down
(global-set-key (kbd "C-a") 'backward-char) ;; left
(global-set-key (kbd "C-d") 'forward-char)

(global-set-key (kbd "C-q") 'beginning-of-line) ;; begin of line
(global-set-key (kbd "C-e") 'end-of-line) ;; end of line

(global-set-key (kbd "M-w") 'backward-page) ;; previous page
(global-set-key (kbd "M-s") 'scroll-up) ;; next page
(global-set-key (kbd "M-a") 'backward-word) ;; previous word
(global-set-key (kbd "M-d") 'forward-word) ;; next word
(global-set-key (kbd "M-q") 'beginning-of-buffer) ;; begin of buffer
(global-set-key (kbd "M-e") 'end-of-buffer) ;; end of buffer
;; kills
(global-set-key (kbd "C-k c") 'delete-char) ;; delete char
(global-set-key (kbd "C-k w") 'kill-word) ;; kill word
(global-set-key (kbd "C-k l") 'kill-line) ;; kill line
(global-set-key (kbd "M-k") 'kill-backward-char)
(global-set-key (kbd "C-k b") 'kill-this-buffer)
(global-set-key (kbd "C-k f") 'delete-window)
;; mark
(global-set-key (kbd "C-x") 'kill-region) ;; cut
(global-set-key (kbd "C-v") 'yank) ;; past
(global-set-key (kbd "C-c") 'kill-ring-save) ;; copy
;; search
(global-set-key (kbd "C-z f'") 'isearch-forward) ;; search
(global-set-key (kbd "C-z b") 'isearch-backward) ;; back search
(global-set-key (kbd "C-z l") 'goto-line) ;; go to line
;; files and buffers
(global-set-key (kbd "C-z o") 'find-file) ;; find file
(global-set-key (kbd "C-z s") 'save-buffer) ;; save buffer
(global-set-key (kbd "C-z C-s") 'save-buffer)
(global-set-key (kbd "C-z w") 'write-file) ;; write file with new name
(global-set-key (kbd "C-z e") 'save-buffers-kill-emacs) ;; exit
(global-set-key (kbd "C-z d") 'delete-other-windows) ;; delete other window
(global-set-key (kbd "C-z v") 'split-window-vertically) ;; split vertically
(global-set-key (kbd "C-z h") 'split-window-horizontally) ;; horizontally
(global-set-key (kbd "C-z n") 'other-window) ;; in other window
(global-set-key (kbd "C-b") 'undo) ;; undo
(global-set-key (kbd "C-1") 'load-file)
(global-set-key (kbd "C-2") 'buffer-menu)

(set-face-attribute 'default nil :height 140)

(require 'cc-mode)
(add-to-list 'c++-font-lock-extra-types "auto")
(define-key c++-mode-map "\C-c" 'nil)
(define-key c++-mode-map "\C-d" 'nil)

