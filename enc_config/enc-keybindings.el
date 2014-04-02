;; Scroll other window up and down
(global-set-key (kbd "C-M-v") 'enc-scroll-other-window-up)
(global-set-key (kbd "C-M-m") 'enc-scroll-other-window-down)

;; Moving lines up and down.
(global-set-key [(meta shift up)]  'enc-move-line-up)
(global-set-key [(meta shift down)]  'enc-move-line-down)

;; In place to prevent me from closing emacs.
(global-unset-key (kbd "C-x C-c"))
(global-unset-key (kbd "C-x C-z"))
(global-set-key (kbd "C-c C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-c C-e") 'suspend-frame)

;; Query the current selection in Duck Duck Go
(global-set-key (kbd "C-c C-s") 'enc-duck-d-g)

;; Quick commands to indent and clean.
(global-set-key (kbd "C-c C-i") 'enc-indent-region-or-buffer)
(global-set-key (kbd "C-c C-n") 'enc-clean-buffer)

;; Keybinding for query-replace-regexp
;; got tired of mashing the keyboard with `C-M %'
(global-set-key (kbd "C-c C-r") 'query-replace-regexp)
