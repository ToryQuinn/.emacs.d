(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'helm)
(helm-mode 1)

(straight-use-package 'dracula-theme)
(load-theme 'dracula t)
(straight-use-package 'typescript-mode)


(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

(straight-use-package 'undo-tree)
(global-undo-tree-mode)

(straight-use-package 'rainbow-delimiters)

(straight-use-package 'clipmon)
(add-to-list 'after-init-hook 'clipmon-mode-start)



(global-set-key (kbd "M-y") #'helm-show-kill-ring)

(straight-use-package 'evil-nerd-commenter)
(global-set-key (kbd "C-c l") #'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c ;") #'evilnc-comment-or-uncomment-lines)

(straight-use-package 'indent-guide)
(indent-guide-global-mode)

(straight-use-package 'restclient)

(straight-use-package 'tide)
(straight-use-package 'psci)
(straight-use-package 'purescript-mode)
(straight-use-package 'haskell-mode)
(straight-use-package 'markdown-mode)
(straight-use-package 'nyan-mode)
(nyan-mode 1)
