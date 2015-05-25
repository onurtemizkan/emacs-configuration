;;; tool-bar+-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (show-tool-bar-for-one-command tool-bar-pop-up-mode
;;;;;;  tool-bar-here-mode) "tool-bar+" "tool-bar+.el" (21800 17532
;;;;;;  542313 328000))
;;; Generated autoloads from tool-bar+.el

(defvar tool-bar-here-mode nil "\
Non-nil if Tool-Bar-Here mode is enabled.
See the command `tool-bar-here-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tool-bar-here-mode'.")

(custom-autoload 'tool-bar-here-mode "tool-bar+" nil)

(autoload 'tool-bar-here-mode "tool-bar+" "\
Toggle use of the tool bar on this frame only.
With numeric ARG, display the tool bar if and only if ARG is positive.

See `tool-bar-add-item' and `tool-bar-add-item-from-menu' for
conveniently adding tool bar items.

\(fn &optional ARG)" t nil)

(defvar tool-bar-pop-up-mode nil "\
Non-nil if Tool-Bar-Pop-Up mode is enabled.
See the command `tool-bar-pop-up-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tool-bar-pop-up-mode'.")

(custom-autoload 'tool-bar-pop-up-mode "tool-bar+" nil)

(autoload 'tool-bar-pop-up-mode "tool-bar+" "\
Toggle tool-bar pop-up.
With numeric ARG, turn on tool-bar pop-up if and only if ARG is positive.

Note: Command `tool-bar-pop-up-mode' functions as a toggle only
      if neither `tool-bar-mode' nor `tool-bar-here-mode' is on.

      If either of those modes is on, then command
      `tool-bar-pop-up-mode' turns them both off and turns
      `tool-bar-pop-up-mode' on.

\(fn &optional ARG)" t nil)

(autoload 'show-tool-bar-for-one-command "tool-bar+" "\
Pop up the tool bar so you can click a button.
The tool bar stays visible until one command is executed
\(whether or not it was initiated by clicking a button).

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("tool-bar+-pkg.el") (21800 17532 561542
;;;;;;  591000))

;;;***

(provide 'tool-bar+-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; tool-bar+-autoloads.el ends here
