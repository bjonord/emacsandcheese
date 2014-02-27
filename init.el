(require 'cask "~/.cask/cask.el")
(cask-initialize)

(defvar custom-load-path (expand-file-name "enc_config" user-emacs-directory))
(defvar local-load-path (expand-file-name "local_config" user-emacs-directory))
(add-to-list 'load-path custom-load-path)
(add-to-list 'load-path local-load-path)

(when (file-exists-p custom-load-path)
  (message "Loading Emacs and Cheese configuration files in %s..." custom-load-path)
  (mapc 'load (directory-files custom-load-path 't "^[^#].*el$")))

(when (file-exists-p local-load-path)
  (message "Loading local configuration files in %s..." local-load-path)
  (mapc 'load (directory-files local-load-path 't "^[^#].*el$")))
