;; Custom init file splitting it all up into split config files.

;; Enable a backtrace when problems occur
(setq debug-on-error t)

;; Set the package sources.
(setq package-archives
      '(("elpa" . "http://tromey.com/elpa/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ))

;; EL-GET

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
 ;; 'ac-nrepl
 'ace-jump-mode
 'ack-and-a-half
 'auto-complete
 'auto-complete-css
 'auto-complete-emacs-lisp
 'auto-complete-etags
 'auto-complete-ruby
 'auto-complete-yasnippet
 'clojure-mode
 'dired-toggle-sudo
 'elisp-slime-nav
 'elnode
 'emacs-request
 'emacs-color-theme-solarized-r0man
 'expand-region
 'find-file-in-project
 ;; 'haskell-mode
 ;; 'haskell-mode-exts
 'gnus-notify
 'highlight-cl
 'hive
 'inflect
 'js2-mode
 'jss
 'macrostep
 'magit
 'multi-term
 'multiple-cursors
 'nrepl
 'paredit
 'popwin
 'projectile
 'pretty-lambdada
 'ruby-mode
 'ruby-test-mode
 'rvm
 'sass-mode
 'scss-mode
 'smex
 'smooth-scrolling
 'vertica
 'websocket
 'yasnippet)






;; Personal customizations

(load "my-generic")
