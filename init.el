;; always show line numbers on supported emacs versions
(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

;; load emacs 24's package system
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                           ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                           ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/"))))

;; emmet-mode
(add-to-list 'load-path "~/.emacs.d/emmet-mode")
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook 'emmet-mode) ;; enable Emmet's css abbreviation

;; load theme
(load-theme 'deeper-blue t)

;; GNU ELPA configures
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit markdown-mode company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; setup company mode
(add-hook 'after-init-hook 'global-company-mode)

;; activate org-mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; setup fonts
(add-to-list 'default-frame-alist
             '(font . "JetBrains Mono-18"))

;; set bing as eww's default search engine
(setq eww-search-prefix "https://cn.bing.com/search?q=")
