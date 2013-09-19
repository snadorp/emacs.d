;; only run this stuff when using osx
(if
    (eq system-type 'darwin)
    ((defun set-exec-path-from-shell-PATH
       "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.
       This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
       (interactive)
       (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
         (setenv "PATH" path-from-shell)
         (setq exec-path (split-string path-from-shell path-separator))))

     (set-exec-path-from-shell-PATH)

     ;; This variable describes the behavior of the command key.
     (setq mac-option-key-is-meta t)
     (setq mac-right-option-modifier nil)
     (setq mac-allow-anti-aliasing t)))
