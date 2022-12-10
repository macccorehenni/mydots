(setq warning-minimum-level :emergency)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(bubbles-game-theme 'medium)
 '(bubbles-graphics-theme 'diamonds)
 '(calculator-bind-escape t)
 '(calculator-use-menu nil)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   '("03adef25678d624333371e34ec050db1ad7d13c9db92995df5085ebb82978671" "f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" default))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(dracula-alternate-mode-line-and-minibuffer t)
 '(fci-rule-color "#37474f")
 '(font-use-system-font t)
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(make-pointer-invisible nil)
 '(markdown-command-needs-filename nil)
 '(markdown-display-remote-images t)
 '(markdown-open-command "/usr/bin/ghostwriter" nil nil "make sure no new lines")
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(company 2048-game exwm detour dictionary helm-spotify-plus frog-menu ac-emoji ac-ispell darkroom achievements ivy-file-preview elcord kdeconnect material-theme spotify which-key wc-mode volume slime shut-up sesman redtick pdf-tools openwith markdown-mode hydra howm auto-complete))
 '(save-place-mode t)
 '(show-paren-mode t)
 '(so-long-action 'so-long-minor-mode)
 '(so-long-hook '(toggle-word-wrap))
 '(so-long-minor-modes
   '(font-lock-mode display-line-numbers-mode flymake-mode goto-address-mode goto-address-prog-mode hi-lock-mode highlight-changes-mode hl-line-mode linum-mode nlinum-mode prettify-symbols-mode visual-line-mode whitespace-mode diff-hl-amend-mode diff-hl-flydiff-mode diff-hl-mode dtrt-indent-mode hl-sexp-mode idle-highlight-mode rainbow-delimiters-mode))
 '(so-long-mode-line-label "tl")
 '(so-long-target-modes '(markdown-mode text-mode))
 '(tab-bar-close-last-tab-choice 'delete-frame)
 '(tab-bar-mode t)
 '(tab-bar-tab-name-function 'tab-bar-tab-name-all)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-default ((t (:inherit default))))
 '(so-long-mode-line-active ((t (:inherit mode-line-emphasis :background "dim gray"))))
 '(solaire-default-face ((t (:inherit default :weight bold :foundry "GOOG" :family "Roboto Mono"))))
 '(solaire-mode-line-face ((t (:background "gray28" :foreground "gray77" :box (:line-width 2 :color "grey75") :overline t :underline t))))
 '(widget-button ((t (:weight extra-bold)))))
(add-to-list'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(spotify-enable-song-notifications)
;; cheatsheet
(require 'cheatsheet)
(cheatsheet-add-group 'System-wide
                      '(:key "C-x C-c" :description "Close emacs")
                      '(:key "C-x C-f" :description "Open document or leave an folder name to open in dired")
		      '(:key "C-x 1" :description "Full screen window")
                      '(:key "C-x 3" :description "Split right")
                      '(:key "M-` b [first letter of buffer]" :description "open buffer")
                      '(:key "M-` [app or mode first letter]" :description "mode or app menu (same as clicking mode name)")
(cheatsheet-add-group 'markdown-mode
                      '(:key "C-c C-c o" :description "Open in Ghostwriter GUI")
                      '(:key "C-c C-s [BI]" :description "Bold or Italics"))
(cheatsheet-add-group 'Inter-app
                      '(:key "M-X elcord-mode" :description "Run elcord, the Discord Status Updater— now everyone will know what you are working on!")
                      '(:key "M-X spot(ify)-pl(ay)" :description "Play music from Spotify")
                      '(:key "M-X spot(ify)-pa(use)" :description "Pause your Spotify")))
;;; undo-fu
(require 'undo-fu) 
(global-unset-key (kbd "C-z"))

(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
;;;dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(toggle-word-wrap)
(require 'workgroups2)
;;emacs wm
(require 'exwm)
(require 'exwm-config)
(exwm-config-example)
(exwm-enable)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
