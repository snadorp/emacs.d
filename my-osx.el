;; only run this stuff when using osx
(when (eq system-type 'darwin)

    ;; set the PATH to shell execution path
    ;; http://www.emacswiki.org/emacs/EmacsApp
    (defun set-exec-path-from-shell-PATH ()
      (interactive)
      (if (not (getenv "TERM_PROGRAM"))
          (let ((path
		 (shell-command-to-string "source $HOME/.bashrc && printf $PATH")
;;		 (shell-command-to- "$SHELL -cl \"printf %s \\\"\\\$PATH\\\"\"")
		 ))
            (setenv "PATH" path)))
      (message "Path set."))

  (set-exec-path-from-shell-PATH)

  ;; This variable describes the behavior of the command key.
  (setq mac-option-key-is-meta t)
  (setq mac-right-option-modifier nil)
  (setq mac-allow-anti-aliasing t))
