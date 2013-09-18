;;; Generic emacs settings

;; Set environment
(setenv "LANG" "en_US.UTF-8")

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight regions and add special behaviors to regions.
;; "C-h d transient" for more info
(setq transient-mark-mode t)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Emacs gurus don't need no stinking scroll bars
(toggle-scroll-bar -1)

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Enable windmove to quickly change switch buffers.
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; Line-wrapping
;;(set-default 'fill-column 80)

;; Prevent the annoying beep on errors
(setq visible-bell t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Make backups for files under version control as well.
(setq vc-make-backup-files t)

;; If t, delete excess backup versions silently.
(setq delete-old-versions t)

;; Number of newest versions to keep when a new numbered backup is made.
(setq kept-new-versions 6)

;; Number of oldest versions to keep when a new numbered backup is made.
(setq kept-old-versions 2)

;; Make numeric backup versions unconditionally.
(setq version-control t)

;; Gotta see matching parens
(show-paren-mode t)

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; If non-nil, `next-line' inserts newline to avoid `end of buffer' error.
(setq next-line-add-newlines nil)

;; Whether to add a newline automatically at the end of the file.
(setq require-final-newline t)

;; Highlight trailing whitespace
(setq show-trailing-whitespace t)

;; Controls the operation of the TAB key.
(setq tab-always-indent 'complete)

;; The maximum size in lines for term buffers.
(setq term-buffer-maximum-size (* 10 2048))
