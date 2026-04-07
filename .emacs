
(add-to-list 'default-frame-alist '(font . "Iosevka-20"))
(setq inferior-lisp-program "sbcl")
(setq inhibit-splash-screen t) ; no splash screen
(setq initial-scratch-message nil) ; no scratch message
(global-display-line-numbers-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)

;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(package-selected-packages '(gruber-darker-theme paredit rainbow-delimiters slime)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
