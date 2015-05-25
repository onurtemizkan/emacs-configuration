;; ###############################################################################
;; HTML CSS Mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))


(add-hook 'after-init-hook 'global-company-mode)


;; ###############################################################################
;; Auto Pair Parentheses and brackets
(electric-pair-mode)
;; ###############################################################################
;; Buffer Zoom in/out
(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)
;; Buffer Zoom in/out End
;; ###############################################################################
;; Splash Screen Inhibit
(setq inhibit-splash-screen t)
;; Splash Screen Inhibit End
;; ###############################################################################
;; Line Numbers
(global-linum-mode 1)
(set-face-attribute 'linum nil :height 8)
(add-hook 'linum-before-numbering-hook '(lambda () (setq linum-format 'dynamic)))
;; Line Numbers End
;; ###############################################################################
;; ###############################################################################
;; Theme
(defun purple-haze-init ()
  (load-theme 'purple-haze)
)
(add-hook 'after-init-hook 'purple-haze-init)
;; Theme End
;; ###############################################################################
;; Directory Tree
(global-set-key [f8] 'sr-speedbar-toggle)
(setq sr-speedbar-right-side nil)
(add-hook 'speedbar-mode-hook (lambda () (linum-mode -1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(company-backends (quote (company-tern company-elisp company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf (company-dabbrev-code company-gtags company-etags company-keywords company-abbrev) company-oddmuse company-files company-dabbrev)))
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (purple-haze)))
 '(custom-safe-themes (quote ("b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "90edd91338ebfdfcd52ecd4025f1c7f731aced4c9c49ed28cfbebb3a3654840b" default)))
 '(fci-rule-color "#383838")
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-edits-mode t)
 '(global-semantic-highlight-func-mode t)
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-semantic-idle-local-symbol-highlight-mode t nil (semantic/idle))
 '(global-semantic-idle-summary-mode t)
 '(global-semantic-mru-bookmark-mode t)
 '(global-semantic-show-parser-state-mode t)
 '(global-semantic-show-unmatched-syntax-mode t)
 '(global-semantic-stickyfunc-mode t)
 '(global-semanticdb-minor-mode t)
 '(show-paren-mode t)
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images nil)
 '(tool-bar-mode nil))
;; Directory Tree End
;; ###############################################################################
;; Cua Mode
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Cua Mode End
;; ###############################################################################
;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(95 90))
(add-to-list 'default-frame-alist '(alpha 95 90))
(eval-when-compile (require 'cl))
(defun toggle-transparency ()
  (interactive)
  (if (/=
       (cadr (frame-parameter nil 'alpha))
       100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(95 90))))
(global-set-key (kbd "C-c t") 'toggle-transparency)
 ;; Set transparency of emacs
(defun transparency (value)
  "Sets the transparency of the frame window. 0=transparent/100=opaque"
  (interactive "nTransparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))
;; Transparency End
;; ###############################################################################
;; Scala Mode 2
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'scala-mode2)
  (package-refresh-contents) (package-install 'scala-mode2))
;; Scala Mode 2 End
;; ###############################################################################
;; SBT Mode
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
(unless (package-installed-p 'sbt-mode)
  (package-refresh-contents) (package-install 'sbt-mode))
;; SBT Mode End
;; ###############################################################################
;; Ensime
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; Ensime End
;; ###############################################################################

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight semi-bold :height 90 :width normal)))))
;; CEDET

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

(require 'semantic/ia)
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-mode 1)      ; Enable prototype help and smart completion )  


;; ################################################################################
;;OTHER
(setq load-prefer-newer t)
(show-paren-mode 1)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; Yasnippet
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
        "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        "/path/to/yasnippet/snippets"         ;; the default collection
        ))
(yas-global-mode 1)

;; iEdit
(define-key global-map (kbd "C-<f6>") 'iedit-mode)
