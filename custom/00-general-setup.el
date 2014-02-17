;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

(windmove-default-keybindings)
(prefer-coding-system 'utf-8)
(menu-bar-mode 0)
(tool-bar-mode -1)
(setq x-select-enable-clipboard t)
(setq inhibit-startup-message t)
(global-auto-revert-mode t)
(global-linum-mode 1)
(global-set-key (kbd "M-ö") 'comment-dwim)
(global-set-key (kbd "<escape>") 'hippie-expand)

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
