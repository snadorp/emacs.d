;; hook to load the required ruby version
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

;; globally enable flycheck.
(add-hook 'after-init-hook #'global-flycheck-mode)

;; highlight-indentation-mode hooks
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)
(add-hook 'js-mode-hook 'highlight-indentation-mode)
(add-hook 'js2-mode-hook 'highlight-indentation-mode)

(add-hook 'java-mode-hook (lambda () (setq c-basic-offset 4)))
