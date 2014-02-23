(defun scroll-other-window-up ()
  "Scroll other window two lines up."
  (interactive)
  (scroll-other-window -2)
)
(defun scroll-other-window-two ()
  "Scroll other window two lines down."
  (interactive)
  (scroll-other-window 2)
)

(global-set-key (kbd "C-M-v") 'scroll-other-window-up)
(global-set-key (kbd "C-M-m") 'scroll-other-window-two)
