(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))
