;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Luís Spengler"
      user-mail-address "luispengler@protonmail.com")

;; Font configuration:
(setq doom-font (font-spec :family "JetBrains Mono" :size 15)
      doom-big-font (font-spec :family "JetBrains Mono" :size 24))

(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))
;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

(setq neo-window-fixed-size nil)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Org-publish
;; Spc -m -P -f
(setq org-publish-use-timestamps-flag nil)
(setq org-publish-with-broken-links t)
(setq org-publish-project-alist
      '(("site"
         :base-directory "~/code/www/site"
         :base-extension "org"
         :publishing-directory "~/code/www/site/html/"
         :recursive t
         :exclude "org-html-themes/.*"
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-premble t)
        ("telegram-desktop-themes"
         :base-directory "~/code/projects/telegram-desktop-themes/"
         :base-extension "org"
         :publishing-directory "~/code/projects/telegram-desktop-themes/html/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-premble t)
        ("org-static"
         :base-directory "~/Org"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/code/www/"
         :recursive t
         :exclude ".*/org-html-themes/.*"
         :publishing-function org-publish-attachment)
        ))

(after! org
  (setq org-directory "~/code/org-mode/")
  (setq org-agenda-files '("~/code/org-mode/to-do.org"))
  (setq org-log-done 'time)
)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; Reveal.js + Org mode
(require 'ox-reveal)
