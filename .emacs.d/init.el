(require 'use-package-ensure) ;; Load use-package-always-ensure
(setq use-package-always-ensure t) ;; Always ensures that a package is installed
(setq package-archives '(("melpa" . "https://melpa.org/packages/") ;; Sets default package repositories
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/"))) ;; For Eat Terminal
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(use-package emacs
  :custom
  (inhibit-startup-screen t)  ;; Disable welcome screen
  (menu-bar-mode nil)         ;;disable menu bar
  (tool-bar-mode nil)         ;; Disable the tool bar
  (blink-cursor-mode nil)     ;; Don't blink cursor
  (global-auto-revert-mode t) ;; Automatically reload file and show changes if the file has changed
  (global-display-line-numbers-mode t)  ;; Display line numbers
  (make-backup-files nil) ;; Stop creating ~ backup files
  (auto-save-default nil) ;; Stop creating # auto save files
  (backup-directory-alist `(("." . "~/.emacs.d/swap")))
  (auto-save-file-name-transforms
      `((".*" "~/.emacs.d/backups/" t)))

)
(setq org-emphasis-alist
      '(("*" (:weight bold :foreground "red"))    ;; bold text in red
        ("/" (:slant italic :foreground "blue")) ;; italic text in blue
        ("_" underline)
        ("=" (:background "snow1" :foreground "deep slate blue"))
        ("~" (:background "PaleGreen1" :foreground "dim gray"))
        ("+" (:strike-through nil :foreground "dark orange"))))

;;(setq org-hide-emphasis-markers t) ;; optionally hide the markup characters like * and /


;; Superstar
(use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode))

(setq org-roam-directory (file-truename "~/Emacsome-vault"))
(setq find-file-visit-truename t)
(org-roam-db-autosync-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(markdown-mode markdown-preview-mode org org-roam org-side-tree
		   org-sidebar org-superstar)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
