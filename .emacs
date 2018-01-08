(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (color-theme auto-complete evil)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil))
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

;; enable evil mode
(require 'evil)
(evil-mode 1)

;; auto-complete config
(ac-config-default)

;; theme
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-goldenrod)
(color-theme-charcoal-black)
;;(color-theme-montz)
;;(color-theme-whateveryouwant)
;;(color-theme-midnight)

;; set font
(when (member "DejaVu Sans Mono" (font-family-list))
  (set-face-attribute 'default nil :font "DejaVu Sans Mono-10"))
