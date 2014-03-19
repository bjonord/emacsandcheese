(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/.dict")

(ac-config-default)
(setq ac-ignore-case nil)

(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'javascript-mode)
(add-to-list 'ac-modes 'coffee-mode)
