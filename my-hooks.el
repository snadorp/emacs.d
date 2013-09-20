;; hook to load the required ruby version
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))
