;; hook to load the required ruby version
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

;; highlight-indentation-mode hooks
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
(add-hook 'js-mode-hook 'highlight-indentation-mode)
(add-hook 'js2-mode-hook 'highlight-indentation-mode)
