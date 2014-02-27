;; Store away the custom-set-* variables in a file called settings.
;; Creates the file if it doesn't exist.
(defvar custom-set-file (expand-file-name ".custom-set/settings.el" user-emacs-directory))
(if (file-exists-p custom-set-file)
    nil
  (write-region
   ";; DON'T MODIFY THIS FILE UNLESS YOU KNOW THINGS" nil custom-set-file))

(when (file-exists-p custom-set-file)
  (setq custom-file custom-set-file)
  (load custom-file))

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

(windmove-default-keybindings)
(prefer-coding-system 'utf-8)
(menu-bar-mode 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq x-select-enable-clipboard t)
(setq inhibit-startup-message t)
(global-auto-revert-mode t)
(global-linum-mode 1)
(global-set-key (kbd "M-ö") 'comment-dwim)
(global-set-key (kbd "<escape>") 'hippie-expand)
(global-undo-tree-mode)

;; Do not use tabs for indentation.
(setq-default indent-tabs-mode nil)

;; Enable whitespace-mode for all buffers.
(global-whitespace-mode 1)
(setq whitespace-style '(face tabs trailing empty))

(load-theme 'sanityinc-tomorrow-eighties t)

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/.saves"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
