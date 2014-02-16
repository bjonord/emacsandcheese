(require 'cask "~/.cask/cask.el")
(cask-initialize)

(defvar custom-load-path (expand-file-name "~/.emacs.d/custom"))
(add-to-list 'load-path "~/.emacs.d/custom")

(when (file-exists-p custom-load-path)
  (message "Loading personal configuration files in %s..." custom-load-path)
  (mapc 'load (directory-files custom-load-path 't "^[^#].*el$")))
