(package-initialize)

(require 'package)

(setq inhibit-startup-screen t)

(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deep-thought)))
 '(custom-safe-themes
   (quote
	("0788bfa0a0d0471984de6d367bb2358c49b25e393344d2a531e779b6cec260c5" "7bf64a1839bf4dbc61395bd034c21204f652185d17084761a648251041b70233" "7dad2be7d806486305d7d3afe6b53a0c882cf651e183ed1ffe6dfb0745dc80f6" default)))
 '(ensime-sem-high-faces
   (quote
	((var :foreground "#9876aa" :underline
		  (:style wave :color "yellow"))
	 (val :foreground "#9876aa")
	 (varField :slant italic)
	 (valField :foreground "#9876aa" :slant italic)
	 (functionCall :foreground "#a9b7c6")
	 (implicitConversion :underline
						 (:color "#808080"))
	 (implicitParams :underline
					 (:color "#808080"))
	 (operator :foreground "#cc7832")
	 (param :foreground "#a9b7c6")
	 (class :foreground "#4e807d")
	 (trait :foreground "#4e807d" :slant italic)
	 (object :foreground "#6897bb" :slant italic)
	 (package :foreground "#cc7832")
	 (deprecated :strike-through "#a9b7c6"))))
 '(menu-bar-mode nil)
 '(package-archives
   (quote
	(("gnu" . "http://elpa.gnu.org/packages/")
	 ("melpa" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages
   (quote
	(org paper-theme cyberpunk-theme airline-themes web-mode php-mode linum-relative darcula-theme)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000F14" :foreground "#fff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "ADBE" :family "Source Code Pro for Powerline"))))
 '(cursor ((t (:background "white"))))
 '(powerline-active1 ((t (:inherit mode-line :background "dim gray")))))

(setq default-tab-width 4)

;;(global-linum-mode t)

(require 'linum-relative)

(add-hook 'html-mode-hook
          (lambda ()
            ;; Default indentation is usually 2 spaces, changing to 4.
            (set (make-local-variable 'sgml-basic-offset) 4)))

(scroll-bar-mode -1)
