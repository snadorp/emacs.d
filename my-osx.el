;; only run this stuff when using osx
(when (eq system-type 'darwin)
    ;; http://www.emacswiki.org/emacs/EmacsApp

  ;; This variable describes the behavior of the command key.
  (setq mac-option-key-is-meta t)
  (setq mac-right-option-modifier nil)
  (setq mac-allow-anti-aliasing t))
