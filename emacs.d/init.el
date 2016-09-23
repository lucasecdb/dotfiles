(require 'package)

(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("7bf64a1839bf4dbc61395bd034c21204f652185d17084761a648251041b70233" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'deep-thought)
(set-cursor-color "#ffffff")

(setq default-tab-width 4)

(scroll-bar-mode -1)

;; web-mode
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(add-hook 'html-mode-hook
          (lambda ()
			(web-mode)
			(emmet-mode)
            (set (make-local-variable 'sgml-basic-offset) 4)))
