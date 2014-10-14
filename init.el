;; Emacs init file.

;; Enable a backtrace when problems occur
(setq debug-on-error t)

(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get
 'sync
 'ace-jump-mode
 'auto-complete
 'auto-complete-css
 'auto-complete-emacs-lisp
 'auto-complete-etags
 'auto-complete-ruby
 'auto-complete-yasnippet
 'cider
 'clojure-mode
 'color-theme-solarized
 'ctags
 'elixir
 'exec-path-from-shell
 'expand-region
 'find-file-in-project
 'flycheck
 'git-timemachine
 'highlight-indentation
 'idle-highlight-mode
 'js2-mode
 'magit
 'markdown-mode
 'multi-term
 'multiple-cursors
 'nyan-mode
 'paredit
 'protobuf-mode
 'popwin
 'projectile ;; READ DOC
 'rainbow-delimiters
 'rainbow-mode
 'ruby-mode
 'ruby-test-mode
 'rvm
 'sass-mode
 'scala-mode2
 'scss-mode
 'smex
 'smooth-scrolling
 'web-mode
 'yaml-mode
 )

;; Personal customizations
(add-to-list 'load-path "~/.emacs.d/custom")
(load "my-osx")
(load "my-ido")
(load "starter-kit-defuns")
(load "my-functions")
(load "my-generic")
(load "my-x60")
(load "my-hooks")
(load "my-keybindings")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(message "Initialization done, have a nice day!")
(put 'scroll-left 'disabled nil)
