;;; imenu+-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (imenup-add-defs-to-menubar imenu--sort-by-name
;;;;;;  imenup-toggle-case-sensitive-sorting imenup-toggle-sort imenup-sort-ignores-case-flag
;;;;;;  Imenu-Plus) "imenu+" "imenu+.el" (21800 23667 734132 54000))
;;; Generated autoloads from imenu+.el

(let ((loads (get 'Imenu-Plus 'custom-loads))) (if (member '"imenu+" loads) nil (put 'Imenu-Plus 'custom-loads (cons '"imenu+" loads))))

(defvar imenup-sort-ignores-case-flag nil "\
*Non-nil means that `imenu--sort-by-name' sorts case-insensitively.")

(custom-autoload 'imenup-sort-ignores-case-flag "imenu+" t)

(autoload 'imenup-toggle-sort "imenu+" "\
Toggle imenu between sorting menus and not.
With a prefix ARG, turn on if ARG is non-negative, off if negative.
See also command `imenup-toggle-case-sensitive-sorting'.

\(fn &optional ARG)" t nil)

(autoload 'imenup-toggle-case-sensitive-sorting "imenu+" "\
Toggle option `imenup-sort-ignores-case-flag'.
This affects menu sorting using `imenu--sort-by-name'.

\(fn)" t nil)

(autoload 'imenu--sort-by-name "imenu+" "\
Return non-nil if ITEM1 comes before ITEM2 alphabetically.
The arguments are menu items, which have form (NAME . POSITION).
Their NAMEs are compared.

Comparison is case-sensitive if `imenup-sort-ignores-case-flag' is
non-nil.  You can toggle that option using `\\[imenup-toggle-sort]'.

\(fn ITEM1 ITEM2)" nil nil)

(autoload 'imenup-add-defs-to-menubar "imenu+" "\
Add \"Defs\" imenu entry to menu bar for current local keymap.
See `imenu' for more information.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("imenu+-pkg.el") (21800 23667 750167 486000))

;;;***

(provide 'imenu+-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; imenu+-autoloads.el ends here
