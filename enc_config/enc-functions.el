(defun enc-move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun enc-move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun enc-scroll-other-window-up ()
  "Scroll other window two lines up."
  (interactive)
  (scroll-other-window -2))

(defun enc-scroll-other-window-down ()
  "Scroll other window two lines down."
  (interactive)
  (scroll-other-window 2))

(defun enc-duck-d-g ()
  "DuckDuck the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "https://www.duckduckgo.com/?q="
    (url-hexify-string
     (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "DuckDuckGo: "))))))

(defun enc-omniref ()
  "Omniref the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.omniref.com/?q="
    (url-hexify-string
     (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "omniref: "))))))

(defun enc-indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun enc-indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (enc-indent-buffer)
        (message "Indented buffer.")))))

(defun enc-clean-buffer ()
  "Indent and clean the whole buffer."
  (interactive)
  (delete-trailing-whitespace)
  (enc-indent-buffer)
  (untabify (point-min) (point-max))
  (message "Indented and cleaned the buffer."))
