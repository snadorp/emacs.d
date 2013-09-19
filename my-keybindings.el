;; smex
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "M-x") 'smex)

;; ace jump
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)

;; ido
(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; clojure
(global-set-key (kbd "C-c C-.") 'clojure-test-run-test)

;; ruby
(global-set-key (kbd "C-c ,") 'ruby-test-run)
(global-set-key (kbd "C-c M-,") 'ruby-test-run-at-point)

;; magit
(global-set-key (kbd "C-c g") 'magit-status)


;; global
(global-set-key (kbd "C-x f") 'find-file-in-repository)
(global-set-key (kbd "C-x h") 'mark-whole-buffer)
(global-set-key (kbd "C-c n") 'esk-cleanup-buffer)   ;; Perform general cleanup.
(global-set-key (kbd "C-c q") 'join-line)
(global-set-key (kbd "RET") 'reindent-then-newline-and-indent)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)

;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)
