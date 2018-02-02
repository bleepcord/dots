(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (nlinum-relative magit color-theme auto-complete evil)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; pkg configurations
;; repositories
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; ***functionality
;; enable evil mode
(require 'evil)
(evil-mode 1)
;; auto-complete config
(ac-config-default)
;; c style
(setq c-default-style "bsd")
;; nlinum
(require 'nlinum-relative)
(nlinum-relative-setup-evil)
(add-hook 'prog-mode-hook 'nlinum-relative-mode)
(setq nlinum-relative-redisplay-delay 0)
(setq nlinum-relative-current-symbol "")
(setq nlinum-relative-offset 0)



;; *** looks
;; set font
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10"))
;; theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-goldenrod)
;;(color-theme-charcoal-black)
;;(color-theme-montz)
;;(color-theme-whateveryouwant)
;;(color-theme-midnight)

