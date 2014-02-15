(setq debug-on-error t)
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(menu-bar-mode 0)
(setq inhibit-startup-message t)
(global-auto-revert-mode t)
(global-linum-mode 1)
(global-set-key (kbd "M-ö") 'comment-dwim)
(load-theme 'sanityinc-tomorrow-eighties t)

(defvar custom-load-path (expand-file-name "~/.emacs.d/custom"))
(add-to-list 'load-path "~/.emacs.d/custom")

(when (file-exists-p custom-load-path)
  (message "Loading personal configuration files in %s..." custom-load-path)
  (mapc 'load (directory-files custom-load-path 't "^[^#].*el$")))
