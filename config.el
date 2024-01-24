(setq user-full-name "Mateus Lira Guilhermino Carmagnini"
      user-mail-address "mateuscarmagnini@gmail.com")

(setq fancy-splash-image (concat doom-user-dir "splash.png"))

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 15))

(setq doom-theme 'doom-acario-light) ;;light theme
(setq doom-theme 'doom-one)

(setq org-directory "~/Org/"
      org-roam-directory "~/Org/roam")

(require 'org-tempo)

(add-to-list 'org-structure-template-alist '("sh" . "src shell"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))

(setq org-superstar-headline-bullets-list '("◇" "◆" "◈" "◊" "◊"))

(use-package! org-ol-tree
  :after org
  :commands org-ol-tree
  :hook (org-ol-tree-mode . visual-line-mode)
  :config
  (setq org-ol-tree-ui-window-auto-resize nil
        org-ol-tree-ui-window-max-width 0.3
        org-ol-tree-ui-window-position 'left))
(map! :map org-mode-map
      :after org
      :localleader
      :desc "Outline" "O" #'org-ol-tree)

(use-package! copilot
  :hook (prog-mode . copilot-mode)
  :bind (:map copilot-completion-map
              ("<tab>" . 'copilot-accept-completion)
              ("TAB" . 'copilot-accept-completion)
              ("C-TAB" . 'copilot-accept-completion-by-word)
              ("C-<tab>" . 'copilot-accept-completion-by-word)))
