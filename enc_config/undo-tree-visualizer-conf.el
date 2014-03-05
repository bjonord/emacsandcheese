(add-hook 'undo-tree-visualizer-mode-hook
          (lambda ()
            (local-set-key (kbd "RET") 'undo-tree-visualizer-quit)
            ))
