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

;; global
(global-set-key (kbd "C-x f") 'find-file-in-repository)
(global-set-key (kbd "C-x h") 'mark-whole-buffer)
