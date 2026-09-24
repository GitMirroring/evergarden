;;; evergarden-common.el --- Shared engine for the evergarden theme family -*- lexical-binding: t; -*-

;; Author: expansion of the original evergarden theme by @koi.rip
;; Version: 0.2.0
;; Package-Requires: ((emacs "28.1") (modus-themes "5.0.0") (ef-themes "2.0.0"))
;; Keywords: faces, theme

;;; Commentary:
;; This is NOT a theme by itself. it is a shared engine for `whiskers` to use and generate the actual evergarden themes.
;;; Code:

(require 'modus-themes)
(require 'ef-themes)

(defgroup evergarden-theme nil
  "Cozy evergarden theme family built on Modus and Ef."
  :group 'faces
  :group 'ef-themes
  :prefix "evergarden-")

(defconst evergarden-theme-family 'evergarden-theme
  "Shared theme family symbol for every evergarden flavor.")

(defconst evergarden--term-mappings-dark
  '((bg-term-black bg-main)
    (fg-term-black bg-main)
    (bg-term-black-bright overlay0)
    (fg-term-black-bright overlay0)
    (bg-term-white fg-dim)
    (fg-term-white fg-dim)
    (bg-term-white-bright fg-main)
    (fg-term-white-bright fg-main))
  "ANSI black/white terminal mapping for dark-background flavors.
Anchors \"black\" to the darkest neutrals and \"white\" to the lightest.")

(defconst evergarden--term-mappings-light
  '((bg-term-black fg-main)
    (fg-term-black fg-main)
    (bg-term-black-bright fg-dim)
    (fg-term-black-bright fg-dim)
    (bg-term-white border)
    (fg-term-white border)
    (bg-term-white-bright bg-main)
    (fg-term-white-bright bg-main))
  "ANSI black/white terminal mapping for the light background flavor (summer).")

(defconst evergarden--term-mappings-color
  '((bg-term-red red) (fg-term-red red)
    (bg-term-red-bright red-warmer) (fg-term-red-bright red-warmer)
    (bg-term-green green) (fg-term-green green)
    (bg-term-green-bright green-warmer) (fg-term-green-bright green-warmer)
    (bg-term-yellow yellow) (fg-term-yellow yellow)
    (bg-term-yellow-bright yellow-warmer) (fg-term-yellow-bright yellow-warmer)
    (bg-term-blue blue) (fg-term-blue blue)
    (bg-term-blue-bright blue-warmer) (fg-term-blue-bright blue-warmer)
    (bg-term-magenta magenta) (fg-term-magenta magenta)
    (bg-term-magenta-bright magenta-warmer) (fg-term-magenta-bright magenta-warmer)
    (bg-term-cyan cyan) (fg-term-cyan cyan)
    (bg-term-cyan-bright cyan-warmer) (fg-term-cyan-bright cyan-warmer)))

(defconst evergarden-palette-mappings-partial
  (append
   '(
     (err red)
     (warning orange)
     (info cyan)
     (underline-err red)
     (underline-warning orange)
     (underline-note cyan)
     (modeline-err red)
     (modeline-warning yellow)
     (modeline-info cyan)
     (bg-prominent-warning bg-warning)
     (fg-prominent-warning fg-main)
     (bg-prominent-note bg-info)
     (fg-prominent-note fg-main)

     (fg-link blue)
     (fg-link-visited magenta)
     (fg-link-symbolic cyan)
     (bg-link unspecified)
     (bg-link-symbolic unspecified)
     (bg-link-visited unspecified)
     (underline-link blue)
     (underline-link-visited magenta)
     (underline-link-symbolic cyan)

     (name cyan)
     (keybind green)
     (identifier fg-main)
     (fg-prompt green)
     (bg-prompt unspecified)

     (builtin cyan-cooler)
     (comment overlay2)
     (constant pink)
     (fnname green)
     (fnname-call green-warmer)
     (keyword red)
     (preprocessor cherry)
     (property cyan-cooler)
     (docstring cyan-cooler)
     (docmarkup cyan)
     (string lime)
     (type yellow)
     (variable fg-main)
     (variable-use fg-main)
     (rx-backslash yellow)
     (rx-construct cyan)

     (accent-0 green)
     (accent-1 cyan)
     (accent-2 magenta-warmer)
     (accent-3 orange)

     (fg-button-active fg-main)
     (fg-button-inactive fg-dim)
     (bg-button-active bg-main)
     (bg-button-inactive bg-dim)
     (fg-region fg-main)
     (bg-mark-delete bg-red-subtle)
     (fg-mark-delete red)
     (bg-mark-select bg-green-subtle)
     (fg-mark-select green)
     (bg-mark-other bg-cyan-subtle)
     (fg-mark-other cyan)

     (date-common cyan)
     (date-deadline red)
     (date-deadline-subtle red-faint)
     (date-event fg-alt)
     (date-holiday red-warmer)
     (date-holiday-other magenta-warmer)
     (date-now fg-main)
     (date-range fg-alt)
     (date-scheduled green)
     (date-scheduled-subtle green-faint)
     (date-weekday blue)
     (date-weekend red-faint)

     (fg-prose-code green-cooler)
     (prose-done green)
     (fg-prose-macro green)
     (prose-metadata fg-dim)
     (prose-metadata-value fg-alt)
     (prose-table fg-alt)
     (prose-table-formula cyan)
     (prose-tag yellow-faint)
     (prose-todo red)
     (fg-prose-verbatim magenta-warmer)

     (mail-cite-0 green)
     (mail-cite-1 cyan)
     (mail-cite-2 magenta-warmer)
     (mail-cite-3 red-warmer)
     (mail-part cyan)
     (mail-recipient blue)
     (mail-subject green)
     (mail-other fg-alt)

     (bg-search-static bg-cyan-subtle)
     (bg-search-current bg-green-intense)
     (bg-search-lazy bg-green-subtle)
     (bg-search-replace bg-red-intense)

     (bg-search-rx-group-0 bg-green-intense)
     (bg-search-rx-group-1 bg-magenta-intense)
     (bg-search-rx-group-2 bg-cyan-intense)
     (bg-search-rx-group-3 bg-red-intense)

     (bg-space-err bg-red-intense)
     (bg-space bg-main)
     (fg-space border)

     (fringe bg-main)
     (fg-line-number-active green)
     (fg-line-number-inactive overlay1)
     (bg-line-number-active bg-hl-line)
     (bg-line-number-inactive bg-main)

     (bg-tab-current bg-main)
     (bg-tab-other bg-dim)

     (bg-prominent-err bg-err)
     (fg-prominent-err err)
     (fg-paren-match fg-main)
     (underline-paren-match unspecified)
     (bg-active-argument bg-active)
     (fg-active-argument green)
     (bg-active-value bg-green-subtle)
     (fg-active-value green)

     (bg-prose-block-delimiter bg-prose-block)
     (fg-prose-block-delimiter fg-dim)
     (bg-prose-block-contents bg-prose-block)
     (bg-prose-code unspecified)
     (bg-prose-macro unspecified)
     (bg-prose-verbatim unspecified)

     (fg-completion-match-0 green)
     (fg-completion-match-1 cyan)
     (fg-completion-match-2 magenta-warmer)
     (fg-completion-match-3 orange)
     (bg-completion-match-0 unspecified)
     (bg-completion-match-1 unspecified)
     (bg-completion-match-2 unspecified)
     (bg-completion-match-3 unspecified)
     (bg-completion bg-dim)
     (fg-search-current fg-main)

     (rainbow-0 green)
     (rainbow-1 cyan)
     (rainbow-2 magenta)
     (rainbow-3 blue)
     (rainbow-4 orange)
     (rainbow-5 red)
     (rainbow-6 yellow)
     (rainbow-7 fg-alt)
     (rainbow-8 fg-dim)

     (fg-heading-0 green)
     (fg-heading-1 green)
     (fg-heading-2 cyan)
     (fg-heading-3 magenta)
     (fg-heading-4 blue)
     (fg-heading-5 orange)
     (fg-heading-6 red)
     (fg-heading-7 fg-alt)
     (fg-heading-8 fg-dim)
     (bg-heading-0 unspecified)
     (bg-heading-1 bg-green-nuanced)
     (bg-heading-2 unspecified)
     (bg-heading-3 bg-magenta-nuanced)
     (bg-heading-4 bg-blue-nuanced)
     (bg-heading-5 unspecified)
     (bg-heading-6 bg-red-nuanced)
     (bg-heading-7 unspecified)
     (bg-heading-8 unspecified)
     (overline-heading-0 green)
     (overline-heading-1 green)
     (overline-heading-2 cyan)
     (overline-heading-3 magenta)
     (overline-heading-4 blue)
     (overline-heading-5 orange)
     (overline-heading-6 red)
     (overline-heading-7 unspecified)
     (overline-heading-8 unspecified))
   evergarden--term-mappings-color))

(defconst evergarden-custom-faces
  '(`(corfu-default ((,c :inherit modus-themes-fixed-pitch
                      :background ,bg-dim
                      :foreground ,fg-main)))
    `(corfu-current ((,c :background ,bg-green-intense
                      :foreground ,fg-main
                      :extend t
                      :box (:line-width -1 :color ,green)
                      :weight semi-bold)))
    `(corfu-border ((,c :background ,border
                     :foreground ,border)))
    `(corfu-bar ((,c :background ,green)))
    `(corfu-popupinfo ((,c :background ,bg-dim
                        :foreground ,fg-main))))
  "Additional face overrides shared by every evergarden flavor.")

(defun evergarden--ensure-modus-theme-metadata (name family description mode palette-sym overrides-sym)
  (unless (plist-get (get name 'theme-properties) :modus-core-palette)
    (modus-themes-declare name family description mode palette-sym nil overrides-sym)
    (modus-themes-register name)))

(defun evergarden-build-theme (flavor-name palette-partial mode)
  "Register and define one evergarden flavor."
  (let* ((flavor-str (symbol-name flavor-name))
         (description (format "Cozy evergarden dark theme, %s flavor."
                              (capitalize (substring flavor-str (length "evergarden-")))))
         (palette-sym (intern (concat flavor-str "-palette")))
         (overrides-sym (intern (concat flavor-str "-palette-overrides")))
         (term-mappings (if (eq mode 'dark)
                            evergarden--term-mappings-dark
                          evergarden--term-mappings-light)))
    (eval
     `(progn
        (defcustom ,overrides-sym nil
          ,(format "Overrides for `%s'.

Each element should have the form (NAME VALUE), where NAME is a palette
entry from `%s' and VALUE is either another palette symbol or a color
string."
                   palette-sym palette-sym)
          :group 'evergarden-theme
          :package-version '(evergarden-theme . "0.2.0")
          :type '(repeat (list symbol (choice symbol string))))

        (defconst ,palette-sym
          (modus-themes-generate-palette
           ',palette-partial
           ',(if (eq mode 'dark) 'cool 'warm)
           nil
           (append evergarden-palette-mappings-partial
                   ',term-mappings
                   ef-themes-palette-common))
          ,(format "Full palette for `%s'." flavor-name))

        (evergarden--ensure-modus-theme-metadata
         ',flavor-name 'evergarden-theme ,description ',mode ',palette-sym ',overrides-sym)

        (modus-themes-theme
         ',flavor-name 'evergarden-theme ,description ',mode
         ',palette-sym nil ',overrides-sym 'evergarden-custom-faces))
     t)))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide 'evergarden-common)

;;; evergarden-common.el ends here
