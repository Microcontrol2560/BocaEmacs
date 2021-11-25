;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (add-to-list 'default-frame-alist '(font . Iosevka Regular ))


;;ALECT THEME TERMINAL
(setq alect-display-class '((class color) (min-colors 256)))


;; Disable tool bar
(tool-bar-mode -1)


(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)



;;MEPLA BLEEDING-EDGE

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)



;;IDO

(setq inhibit-startup-screen t)
(ido-mode 1)
;;(set-face-attribute 'default t :font "iosevka Regular-12")


;;SMEX

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


;;THEMES


(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'gruvbox t)
;;(load-theme 'zenburn t)
;;(load-theme 'cyberpunk t)
;;(load-theme 'solarized-dark t)
;;(load-theme 'monokai t)
;;(load-theme 'alect-dark t)
;;(load-theme 'afternoon t)




;; ;;AMPLE THEME

;; ;;then in your init you can load all of the themes
;; ;;without enabling theme (or just load one)
;; (load-theme 'ample t t)
;; (load-theme 'ample-flat t t)
;; (load-theme 'ample-light t t)
;; ;; choose one to enable
;; (enable-theme 'ample)
;; ;; (enable-theme 'ample-flat)
;; ;; (enable-theme 'ample-light)

;; ;; Or, if you use `use-package', do something like this:
;; ;; (use-package ample-theme
;; ;;   :init (progn (load-theme 'ample t t)
;; ;;                (load-theme 'ample-flat t t)
;; ;;                (load-theme 'ample-light t t)
;; ;;                (enable-theme 'ample-flat))
;; ;;   :defer t
;; ;;   :ensure t)






;;USE PACKAGE
;; This is only needed once, near the top of the file
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  
  (require 'use-package))

(use-package color-moccur
  :commands (isearch-moccur isearch-all)
  :bind (("M-s O" . moccur)
         :map isearch-mode-map
         ("M-o" . isearch-moccur)
         ("M-O" . isearch-moccur-all))
  :init
  (setq isearch-lazy-highlight t)
  :config
  (use-package moccur-edit))





;;Material Theme
;;(load-theme 'material t)
;;(load-theme 'material-light t)



;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)



;;CUSTOM

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(beacon-color "#cc6666")
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face 'default)
 '(custom-enabled-themes '(ample))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "3190b71fa04debee96a8d00b795498a12a6f3002a4e66daaad09f65e48e519db" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "03e26cd42c3225e6376d7808c946f7bed6382d795618a82c8f3838cd2097a9cc" "27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" "583148e87f779040b5349db48b6fcad6fe9a873c6ada20487e9a1ec40d845505" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "2d620056528e3fc6f1c63a8197f7d597138aef8bb414e8f544b45dea77ef56c5" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "dd3db7c97438c0deb317197653fbef629735e8f93b6366b6f50400ed71a0f234" "d14f3df28603e9517eb8fb7518b662d653b25b26e83bd8e129acea042b774298" "0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" default))
 '(fci-rule-color "#383838")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(global-display-line-numbers-mode t)
 '(highlight-changes-colors '("#FD5FF0" "#AE81FF"))
 '(highlight-tail-colors
   '(("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100)))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(javap-mode pyenv-mode msvc lsp-pyre markdown-preview-mode lsp-mode google-this js2-mode undo-tree helm mode-icons highlight-symbol find-file-in-project ace-jump-mode auto-complete tabbar all-the-icons twilight-theme darkmine-theme seti-theme badwolf-theme espresso-theme planet-theme spacegray-theme minimal-theme darkburn-theme naquadah-theme jazz-theme hc-zenburn-theme flatui-theme tango-plus-theme kaolin-themes grandshell-theme subatomic-theme tangotango-theme ujelly-theme inkpot-theme organic-green-theme gotham-theme tao-theme darktooth-theme sublime-themes apropospriate-theme color-theme-sanityinc-solarized leuven-theme doom-themes dakrone-theme atom-one-dark-theme apheleia flycheck aggressive-indent yasnippet-snippets yasnippet undo-fu-session crux bm helm-swoop minimap evil company-tabnine evil-nerd-commenter rainbow-delimiters counsel-projectile projectile company-box company dracula-theme forge magit ggtags python-mode clues-theme soothe-theme gruber-darker-theme flatland-theme afternoon-theme alect-themes moe-theme ample-zen-theme use-package ample-theme color-theme-sanityinc-tomorrow monokai-theme cyberpunk-theme solarized-theme smex))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   '(unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(window-divider-mode nil))




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil :family "Iosevka" :foundry "UKWN" :slant normal :weight normal :height 110 :width normal)))))
 



;;SAVES



(setq backup-directory-alist '(("." . "~/.emacs_saves")))


;; RESOLUTION
(when window-system
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 145 34))





;;PYTHON


(use-package python-mode
  :ensure nil
  :custom
  (python-shell-interpreter "python3"))


;; (use-package python-mode
;;   :ensure t
;;   :hook (python-mode . lsp-deferred)
;;   :custom
;;   ;; NOTE: Set these if Python 3 is called "python3" on your system!
;;   ;; (python-shell-interpreter "python3")
;;   ;; (dap-python-executable "python3")
;;   (dap-python-debugger 'debugpy)
;;   :config
;;   (require 'dap-python))




;;GGTAGS / C++

;; (require 'ggtags)
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;               (ggtags-mode 1))))

;; (define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
;; (define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
;; (define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
;; (define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
;; (define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
;; (define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

;; (define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)






;;MAGIT

(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

;; NOTE: Make sure to configure a GitHub token before using this package!
;; - https://magit.vc/manual/forge/Token-Creation.html#Token-Creation
;; - https://magit.vc/manual/ghub/Getting-Started.html#Getting-Started
(use-package forge)





;;TERM

(use-package term
  :config
  (setq explicit-shell-file-name "fish") ;; Change this to zsh, etc
  ;;(setq explicit-zsh-args '())         ;; Use 'explicit-<shell>-args for shell-specific args

  ;; Match the default Bash shell prompt.  Update this if you have a custom prompt
  (setq term-prompt-regexp "^[^#$%>\n]*[#$%>] *"))





;;COMPANY

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
         ("<tab>" . company-complete-selection))
        (:map lsp-mode-map
         ("<tab>" . company-indent-or-complete-common))
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.0))

(use-package company-box
  :hook (company-mode . company-box-mode))




;;PROJectile

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  ;; NOTE: Set this to the folder where you keep your Git repos!
  (when (file-directory-p "~/Projects/Code")
    (setq projectile-project-search-path '("~/Projects/Code")))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :config (counsel-projectile-mode))



;;Rainbow Delimiters
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;;Evil Nerd Commenter

;; (use-package evil-nerd-commenter
;;   :bind ("M-/" . evilnc-comment-or-uncomment-lines))



;;Tabnine

(require 'company-tabnine)

(use-package company-tabnine :ensure t)

(add-to-list 'company-backends #'company-tabnine)

;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)


;;Show Lines

(setq line-number-mode t)


;;Evil

;; (require 'evil)
;; (evil-mode 1)


;;Sunrise

;;(require 'sunrise)



;;CRUX Useful Packages

(unless (package-installed-p 'crux)
  (package-refresh-contents)
  (package-install 'crux))

;;Undo Fu Session

;; (use-package undo-fu-session
;;   :config
;;   (setq undo-fu-session-incompatible-files '("/COMMIT_EDITMSG\\'" "/git-rebase-todo\\'")))

;; (global-undo-fu-session-mode)



;;SNIPPETS
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;INDENT Aggressive
;; (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
;; (add-hook 'css-mode-hook #'aggressive-indent-mode)


;;Flycheck

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))



;;Apheleia
;; (straight-use-package 'apheleia)








;;Ivy

;; (ivy-mode)
;; (setq ivy-use-virtual-buffers t)
;; (setq enable-recursive-minibuffers t)
;; ;; enable this if you want `swiper' to use it
;; ;; (setq search-default-mode #'char-fold-to-regexp)
;; (global-set-key "\C-s" 'swiper)
;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
;; (global-set-key (kbd "<f6>") 'ivy-resume)
;; (global-set-key (kbd "M-x") 'counsel-M-x)
;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;; (global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;; (global-set-key (kbd "C-c g") 'counsel-git)
;; (global-set-key (kbd "C-c j") 'counsel-git-grep)
;; (global-set-key (kbd "C-c k") 'counsel-ag)
;; (global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
;; (define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)



;;Awesome Tab
(add-to-list 'load-path (expand-file-name "~/elisp"))

(require 'awesome-tab)

(awesome-tab-mode )



;; Doom Themes
;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   ;; Global settings (defaults)
;;   (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;         doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;   (load-theme 'doom-one t)

;;   ;; Enable flashing mode-line on errors
;;   (doom-themes-visual-bell-config)
;;   ;; Enable custom neotree theme (all-the-icons must be installed!)
;;   (doom-themes-neotree-config)
;;   ;; or for treemacs users
;;   (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
;;   (doom-themes-treemacs-config)
;;   ;; Corrects (and improves) org-mode's native fontification.
;;   (doom-themes-org-config))



;;APPPPPPP long theme
;; (require 'apropospriate)
;; (load-theme 'apropospriate-dark t)


;; (load "~/.emacs.d/themes/molokai-theme.el")
;; (color-theme-molokai)



;; Noctilux Theme
;;(load-theme 'noctilux t)


;; Theme load path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'ample-zen t)

;;(load-theme 'clues t)


;;(package-install 'tango-plus-theme)




;;All the Icons
(when (display-graphic-p)
  (require 'all-the-icons))
;; or
(use-package all-the-icons
  :if (display-graphic-p))





;;Turn on Lines
(require 'display-line-numbers)

(defcustom display-line-numbers-exempt-modes
  '(vterm-mode eshell-mode shell-mode term-mode ansi-term-mode)
  "Major modes on which to disable line numbers."
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "Turn on line numbers except for certain major modes.
Exempt major modes are defined in `display-line-numbers-exempt-modes'."
  (unless (or (minibufferp)
              (member major-mode display-line-numbers-exempt-modes))
    (display-line-numbers-mode)))

(global-display-line-numbers-mode)




;; Awesome Tab Config Navigation
;; (global-set-key (kbd "s-1") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-2") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-3") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-4") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-5") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-6") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-7") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-8") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-9") 'awesome-tab-select-visible-tab)
;; (global-set-key (kbd "s-0") 'awesome-tab-select-visible-tab)



;; Company Mode Global enabled

(add-hook 'after-init-hook 'global-company-mode)

;; Org Mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)


;;Electric pair

(defun electric-pair ()
  "If at end of line, insert character pair without surrounding spaces.
    Otherwise, just insert the typed character."
  (interactive)
  (if (eolp) (let (parens-require-spaces) (insert-pair)) (self-insert-command 1)))

;; Python Electric pair
(add-hook 'python-mode-hook
          (lambda ()
            (define-key python-mode-map "\"" 'electric-pair)
            (define-key python-mode-map "\'" 'electric-pair)
            (define-key python-mode-map "(" 'electric-pair)
            (define-key python-mode-map "[" 'electric-pair)
            (define-key python-mode-map "{" 'electric-pair)))


;; Highlight symbol

(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)


;; Mode Icons Only if I feel like it
;;(mode-icons-mode)


;; Helm Config
;; (require 'helm)
;; (require 'helm-config)

;; ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;; (global-set-key (kbd "C-c h") 'helm-command-prefix)
;; (global-unset-key (kbd "C-x c"))

;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;; (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
;; (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;; (when (executable-find "curl")
;;   (setq helm-google-suggest-use-curl-p t))

;; (setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;;       helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;       helm-ff-file-name-history-use-recentf t
;;       helm-echo-input-in-header-line t)

;; (defun spacemacs//helm-hide-minibuffer-maybe ()
;;   "Hide minibuffer in Helm session if we use the header line as input field."
;;   (when (with-helm-buffer helm-echo-input-in-header-line)
;;     (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
;;       (overlay-put ov 'window (selected-window))
;;       (overlay-put ov 'face
;;                    (let ((bg-color (face-background 'default nil)))
;;                      `(:background ,bg-color :foreground ,bg-color)))
;;       (setq-local cursor-type nil))))


;; (add-hook 'helm-minibuffer-set-up-hook
;;           'spacemacs//helm-hide-minibuffer-maybe)

;; (setq helm-autoresize-max-height 0)
;; (setq helm-autoresize-min-height 20)
;; (helm-autoresize-mode 1)

;; (helm-mode 1)





;; Weird Plugin
;; (add-to-list 'load-path "~/.emacs.d/emacs-sourcegraph-mode")
;; (require 'sourcegraph)



;; Google this
(google-this-mode 1)
;; (global-set-key (kbd "C-x g") 'google-this-mode-submap)
