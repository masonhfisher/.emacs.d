;;;;;;;;;;;;;;;;
; No littering ;
;;;;;;;;;;;;;;;;
(setq make-backup-files nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;;;;;;;;;;;;;;;
; Indentation ;
;;;;;;;;;;;;;;;

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

(add-hook 'html-mode-hook
          (lambda ()
            (setq-default tab-width 4)
            (setq indent-tabs-mode nil)
            (setq sgml-basic-offset 4)))

;;;;;;;;;;;;;;;;;;
; Hide passwords ;
;;;;;;;;;;;;;;;;;;

(add-hook 'comint-output-filter-functions
  'comint-watch-for-password-prompt)

;;;;;;;;;;;;
; Themeing ;
;;;;;;;;;;;;

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode)

;;;;;;;;;;;
; Sidebar ;
;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/packages/dired-hacks")
(add-to-list 'load-path "~/.emacs.d/packages/dired-sidebar")
(add-to-list 'load-path "~/.emacs.d/packages/dash")
(add-to-list 'load-path "~/.emacs.d/packages/nerd-icons")
(add-to-list 'load-path "~/.emacs.d/packages/nerd-icons-dired")

(require 'dired-sidebar)
(require 'nerd-icons)
(require 'nerd-icons-dired)
(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)

(dired-sidebar-toggle-sidebar)
(global-set-key (kbd "C-<left>") 'dired-sidebar-toggle-sidebar)

;;;;;;;;;;;;
; Packages ;
;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/packages")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
