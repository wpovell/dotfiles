;;; theme.el --- Custom emacs theme

;;; Commentary:
;;; Autogenerated theme from base16

;;; Code:

(deftheme base16
  "Theme generated from base16.")

(defvar base16-colors-alist
  (let* ((256color  (eq (display-color-cells (selected-frame)) 256))
         (colors `(("base16-accent"   . "#{{base0D-hex}}")
                   ("base16-fg"       . "#{{base05-hex}}")
                   ("base16-bg"       . "#{{base00-hex}}")
                   ("base16-bg-1"     . "#{{base01-hex}}")
                   ("base16-bg-hl"    . "#{{base03-hex}}")
                   ("base16-gutter"   . "#{{base04-hex}}")
                   ("base16-mono-1"   . "#{{base05-hex}}")
                   ("base16-mono-2"   . "#{{base06-hex}}")
                   ("base16-mono-3"   . "#{{base07-hex}}")
                   ("base16-cyan"     . "#{{base0C-hex}}")
                   ("base16-blue"     . "#{{base0D-hex}}")
                   ("base16-purple"   . "#{{base0E-hex}}")
                   ("base16-green"    . "#{{base0B-hex}}")
                   ("base16-red-1"    . "#{{base08-hex}}")
                   ("base16-red-2"    . "#{{base0F-hex}}")
                   ("base16-orange-1" . "#{{base09-hex}}")
                   ("base16-orange-2" . "#{{base0A-hex}}")
                   ("base16-gray"     .  "#{{base02-hex}}")
                   ("base16-silver"   .  "#{{base05-hex}}")
                   ("base16-black"    .  "#{{base01-hex}}")
                   ("base16-border"   .  "#{{base00-hex}}"))))
    colors)
  "List of Base16 colors.")

(defmacro base16-with-color-variables (&rest body)
  "Bind the colors list around BODY."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@ (mapcar (lambda (cons)
                      (list (intern (car cons)) (cdr cons)))
                    base16-colors-alist))
     ,@body))

(base16-with-color-variables
  (custom-theme-set-faces
   'base16

   `(default ((t (:foreground ,base16-fg :background ,base16-bg))))
   `(success ((t (:foreground ,base16-green))))
   `(warning ((t (:foreground ,base16-orange-2))))
   `(error ((t (:foreground ,base16-red-1 :weight bold))))
   `(link ((t (:foreground ,base16-blue :underline t :weight bold))))
   `(link-visited ((t (:foreground ,base16-blue :underline t :weight normal))))
   `(cursor ((t (:background ,base16-accent))))
   `(fringe ((t (:background ,base16-bg))))
   `(region ((t (:background ,base16-gray))))
   `(highlight ((t (:background ,base16-gray))))
   `(hl-line ((t (:background ,base16-bg-hl))))
   `(vertical-border ((t (:background ,base16-border :foreground ,base16-border))))
   `(secondary-selection ((t (:background ,base16-bg-1))))
   `(query-replace ((t (:inherit (isearch)))))
   `(minibuffer-prompt ((t (:foreground ,base16-silver))))

   `(font-lock-builtin-face ((t (:foreground ,base16-cyan))))
   `(font-lock-comment-face ((t (:foreground ,base16-mono-3))))
   `(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
   `(font-lock-doc-face ((t (:inherit (font-lock-string-face)))))
   `(font-lock-function-name-face ((t (:foreground ,base16-blue))))
   `(font-lock-keyword-face ((t (:foreground ,base16-purple :weight normal))))
   `(font-lock-preprocessor-face ((t (:foreground ,base16-mono-2))))
   `(font-lock-string-face ((t (:foreground ,base16-green))))
   `(font-lock-type-face ((t (:foreground ,base16-orange-2))))
   `(font-lock-constant-face ((t (:foreground ,base16-cyan))))
   `(font-lock-variable-name-face ((t (:foreground ,base16-red-1))))
   `(font-lock-warning-face ((t (:foreground ,base16-mono-3 :bold t))))

   ;; mode-line
   `(mode-line ((t (:background ,base16-black :foreground ,base16-silver :box (:color ,base16-border :line-width 1)))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis ((t (:weight bold))))
   `(mode-line-inactive ((t (:background ,base16-border :foreground ,base16-gray :box (:color ,base16-border :line-width 1)))))

   ;; window-divider
   `(window-divider ((t (:foreground ,base16-border))))
   `(window-divider-first-pixel ((t (:foreground ,base16-border))))
   `(window-divider-last-pixel ((t (:foreground ,base16-border))))

   ;; ido
   `(ido-first-match ((t (:foreground ,base16-purple :weight bold))))
   `(ido-only-match ((t (:foreground ,base16-red-1 :weight bold))))
   `(ido-subdir ((t (:foreground ,base16-blue))))
   `(ido-virtual ((t (:foreground ,base16-mono-3))))

   ;; ace-jump
   `(ace-jump-face-background ((t (:foreground ,base16-mono-3 :background ,base16-bg-1 :inverse-video nil))))
   `(ace-jump-face-foreground ((t (:foreground ,base16-red-1 :background ,base16-bg-1 :inverse-video nil))))

   ;; company-mode
   `(company-tooltip ((t (:foreground ,base16-fg :background ,base16-bg-1))))
   `(company-tooltip-annotation ((t (:foreground ,base16-mono-2 :background ,base16-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,base16-fg :background ,base16-gray))))
   `(company-tooltip-mouse ((t (:background ,base16-gray))))
   `(company-tooltip-common ((t (:foreground ,base16-orange-2 :background ,base16-bg-1))))
   `(company-tooltip-common-selection ((t (:foreground ,base16-orange-2 :background ,base16-gray))))
   `(company-preview ((t (:background ,base16-bg))))
   `(company-preview-common ((t (:foreground ,base16-orange-2 :background ,base16-bg))))
   `(company-scrollbar-fg ((t (:background ,base16-mono-1))))
   `(company-scrollbar-bg ((t (:background ,base16-bg-1))))

   ;; flymake
   `(flymake-error ((t (:underline (:color ,base16-red-1 :style wave)))))
   `(flymake-note ((t (:underline (:color ,base16-green :style wave)))))
   `(flymake-warning ((t (:underline (:color ,base16-orange-1 :style wave)))))

   ;; flycheck
   `(flycheck-error ((t (:underline (:color ,base16-red-1 :style wave)))))
   `(flycheck-info ((t (:underline (:color ,base16-green :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,base16-orange-1 :style wave)))))

   ;; compilation
   `(compilation-face ((t (:foreground ,base16-fg))))
   `(compilation-line-number ((t (:foreground ,base16-mono-2))))
   `(compilation-column-number ((t (:foreground ,base16-mono-2))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info :weight bold))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error :weight bold))))

   ;; isearch
   `(isearch ((t (:foreground ,base16-bg :background ,base16-purple))))
   `(isearch-fail ((t (:foreground ,base16-red-2 :background nil))))
   `(lazy-highlight ((t (:foreground ,base16-purple :background ,base16-bg-1 :underline ,base16-purple))))

   ;; diff-hl (https://github.com/dgutov/diff-hl)
   '(diff-hl-change ((t (:foreground "#E9C062" :background "#8b733a"))))
   '(diff-hl-delete ((t (:foreground "#CC6666" :background "#7a3d3d"))))
   '(diff-hl-insert ((t (:foreground "#A8FF60" :background "#547f30"))))

   ;; dired-mode
   '(dired-directory ((t (:inherit (font-lock-keyword-face)))))
   '(dired-flagged ((t (:inherit (diff-hl-delete)))))
   '(dired-symlink ((t (:foreground "#FD5FF1"))))

   ;; helm
   `(helm-header ((t (:foreground ,base16-mono-2
                      :background ,base16-bg
                      :underline nil
                      :box (:line-width 6 :color ,base16-bg)))))
   `(helm-source-header ((t (:foreground ,base16-orange-2
                             :background ,base16-bg
                             :underline nil
                             :weight bold
                             :box (:line-width 6 :color ,base16-bg)))))
   `(helm-selection ((t (:background ,base16-gray))))
   `(helm-selection-line ((t (:background ,base16-gray))))
   `(helm-visible-mark ((t (:foreground ,base16-bg :foreground ,base16-orange-2))))
   `(helm-candidate-number ((t (:foreground ,base16-green :background ,base16-bg-1))))
   `(helm-separator ((t (:background ,base16-bg :foreground ,base16-red-1))))
   `(helm-M-x-key ((t (:foreground ,base16-orange-1))))
   `(helm-bookmark-addressbook ((t (:foreground ,base16-orange-1))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,base16-purple))))
   `(helm-bookmark-info ((t (:foreground ,base16-green))))
   `(helm-bookmark-man ((t (:foreground ,base16-orange-2))))
   `(helm-bookmark-w3m ((t (:foreground ,base16-purple))))
   `(helm-match ((t (:foreground ,base16-orange-2))))
   `(helm-ff-directory ((t (:foreground ,base16-cyan :background ,base16-bg :weight bold))))
   `(helm-ff-file ((t (:foreground ,base16-fg :background ,base16-bg :weight normal))))
   `(helm-ff-executable ((t (:foreground ,base16-green :background ,base16-bg :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,base16-red-1 :background ,base16-bg :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,base16-orange-2 :background ,base16-bg :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,base16-bg :background ,base16-orange-2 :weight normal))))
   `(helm-buffer-not-saved ((t (:foreground ,base16-red-1))))
   `(helm-buffer-process ((t (:foreground ,base16-mono-2))))
   `(helm-buffer-saved-out ((t (:foreground ,base16-fg))))
   `(helm-buffer-size ((t (:foreground ,base16-mono-2))))
   `(helm-buffer-directory ((t (:foreground ,base16-purple))))
   `(helm-grep-cmd-line ((t (:foreground ,base16-cyan))))
   `(helm-grep-file ((t (:foreground ,base16-fg))))
   `(helm-grep-finish ((t (:foreground ,base16-green))))
   `(helm-grep-lineno ((t (:foreground ,base16-mono-2))))
   `(helm-grep-finish ((t (:foreground ,base16-red-1))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-swoop-target-line-block-face ((t (:background ,base16-mono-3 :foreground "#222222"))))
   `(helm-swoop-target-line-face ((t (:background ,base16-mono-3 :foreground "#222222"))))
   `(helm-swoop-target-word-face ((t (:background ,base16-purple :foreground "#ffffff"))))
   `(helm-locate-finish ((t (:foreground ,base16-green))))
   `(info-menu-star ((t (:foreground ,base16-red-1))))

   ;; ivy
   `(ivy-confirm-face ((t (:inherit minibuffer-prompt :foreground ,base16-green))))
   `(ivy-current-match ((t (:background ,base16-gray :weight normal))))
   `(ivy-highlight-face ((t (:inherit font-lock-builtin-face))))
   `(ivy-match-required-face ((t (:inherit minibuffer-prompt :foreground ,base16-red-1))))
   `(ivy-minibuffer-match-face-1 ((t (:background ,base16-bg-hl))))
   `(ivy-minibuffer-match-face-2 ((t (:inherit ivy-minibuffer-match-face-1 :background ,base16-black :foreground ,base16-purple :weight semi-bold))))
   `(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-2 :background ,base16-black :foreground ,base16-green :weight semi-bold))))
   `(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-2 :background ,base16-black :foreground ,base16-orange-2 :weight semi-bold))))
   `(ivy-minibuffer-match-highlight ((t (:foreground ,base16-blue))))
   `(ivy-modified-buffer ((t (:inherit default :foreground ,base16-orange-1))))
   `(ivy-virtual ((t (:inherit font-lock-builtin-face :slant italic))))

   ;; counsel
   `(counsel-key-binding ((t (:foreground ,base16-orange-2 :weight bold))))

   ;; swiper
   `(swiper-match-face-1 ((t (:inherit ivy-minibuffer-match-face-1))))
   `(swiper-match-face-2 ((t (:inherit ivy-minibuffer-match-face-2))))
   `(swiper-match-face-3 ((t (:inherit ivy-minibuffer-match-face-3))))
   `(swiper-match-face-4 ((t (:inherit ivy-minibuffer-match-face-4))))

   ;; git-commit
   `(git-commit-comment-action  ((t (:foreground ,base16-green :weight bold))))
   `(git-commit-comment-branch  ((t (:foreground ,base16-blue :weight bold))))
   `(git-commit-comment-heading ((t (:foreground ,base16-orange-2 :weight bold))))

   ;; git-gutter
   `(git-gutter:added ((t (:foreground ,base16-green :weight bold))))
   `(git-gutter:deleted ((t (:foreground ,base16-red-1 :weight bold))))
   `(git-gutter:modified ((t (:foreground ,base16-orange-1 :weight bold))))

   ;; man
   `(Man-overstrike ((t (:inherit font-lock-type-face :weight bold))))
   `(Man-underline ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))

   ;; woman
   `(woman-bold ((t (:inherit font-lock-type-face :weight bold))))
   `(woman-italic ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))

   ;; dictionary
   `(dictionary-button-face ((t (:inherit widget-button))))
   `(dictionary-reference-face ((t (:inherit font-lock-type-face :weight bold))))
   `(dictionary-word-entry-face ((t (:inherit font-lock-keyword-face :slant italic :weight bold))))

   ;; jabber
   `(jabber-roster-user-online ((t (:foreground ,base16-green))))
   `(jabber-roster-user-away ((t (:foreground ,base16-red-1))))
   `(jabber-roster-user-xa ((t (:foreground ,base16-red-2))))
   `(jabber-roster-user-dnd ((t (:foreground ,base16-purple))))
   `(jabber-roster-user-chatty ((t (:foreground ,base16-orange-2))))
   `(jabber-roster-user-error ((t (:foreground ,base16-red-1 :bold t))))
   `(jabber-roster-user-offline ((t (:foreground ,base16-mono-3))))
   `(jabber-chat-prompt-local ((t (:foreground ,base16-blue))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,base16-orange-2))))
   `(jabber-chat-prompt-system ((t (:foreground ,base16-mono-3))))
   `(jabber-chat-error ((t (:inherit jabber-roster-user-error))))
   `(jabber-rare-time-face ((t (:foreground ,base16-cyan))))
   `(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
   `(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local))))

   ;; eww
   `(eww-form-checkbox ((t (:inherit eww-form-submit))))
   `(eww-form-file ((t (:inherit eww-form-submit))))
   `(eww-form-select ((t (:inherit eww-form-submit))))
   `(eww-form-submit ((t (:background ,base16-gray :foreground ,base16-fg :box (:line-width 2 :color ,base16-border :style released-button)))))
   `(eww-form-text ((t (:inherit widget-field :box (:line-width 1 :color ,base16-border)))))
   `(eww-form-textarea ((t (:inherit eww-form-text))))
   `(eww-invalid-certificate ((t (:foreground ,base16-red-1))))
   `(eww-valid-certificate ((t (:foreground ,base16-green))))

   ;; js2-mode
   `(js2-error ((t (:underline (:color ,base16-red-1 :style wave)))))
   `(js2-external-variable ((t (:foreground ,base16-cyan))))
   `(js2-warning ((t (:underline (:color ,base16-orange-1 :style wave)))))
   `(js2-function-call ((t (:inherit (font-lock-function-name-face)))))
   `(js2-function-param ((t (:foreground ,base16-mono-1))))
   `(js2-jsdoc-tag ((t (:foreground ,base16-purple))))
   `(js2-jsdoc-type ((t (:foreground ,base16-orange-2))))
   `(js2-jsdoc-value((t (:foreground ,base16-red-1))))
   `(js2-object-property ((t (:foreground ,base16-red-1))))

   ;; magit
   `(magit-section-highlight ((t (:background ,base16-bg-hl))))
   `(magit-section-heading ((t (:foreground ,base16-orange-2 :weight bold))))
   `(magit-section-heading-selection ((t (:foreground ,base16-fg :weight bold))))
   `(magit-diff-file-heading ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,base16-gray :weight bold))))
   `(magit-diff-file-heading-selection ((t (:foreground ,base16-orange-2 :background ,base16-bg-hl :weight bold))))
   `(magit-diff-hunk-heading ((t (:foreground ,base16-mono-2 :background ,base16-gray))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,base16-mono-1 :background ,base16-mono-3))))
   `(magit-diff-hunk-heading-selection ((t (:foreground ,base16-purple :background ,base16-mono-3))))
   `(magit-diff-context ((t (:foreground ,base16-fg))))
   `(magit-diff-context-highlight ((t (:background ,base16-bg-1 :foreground ,base16-fg))))
   `(magit-diffstat-added ((t (:foreground ,base16-green))))
   `(magit-diffstat-removed ((t (:foreground ,base16-red-1))))
   `(magit-process-ok ((t (:foreground ,base16-green))))
   `(magit-process-ng ((t (:foreground ,base16-red-1))))
   `(magit-log-author ((t (:foreground ,base16-orange-2))))
   `(magit-log-date ((t (:foreground ,base16-mono-2))))
   `(magit-log-graph ((t (:foreground ,base16-silver))))
   `(magit-sequence-pick ((t (:foreground ,base16-orange-2))))
   `(magit-sequence-stop ((t (:foreground ,base16-green))))
   `(magit-sequence-part ((t (:foreground ,base16-orange-1))))
   `(magit-sequence-head ((t (:foreground ,base16-blue))))
   `(magit-sequence-drop ((t (:foreground ,base16-red-1))))
   `(magit-sequence-done ((t (:foreground ,base16-mono-2))))
   `(magit-sequence-onto ((t (:foreground ,base16-mono-2))))
   `(magit-bisect-good ((t (:foreground ,base16-green))))
   `(magit-bisect-skip ((t (:foreground ,base16-orange-1))))
   `(magit-bisect-bad ((t (:foreground ,base16-red-1))))
   `(magit-blame-heading ((t (:background ,base16-bg-1 :foreground ,base16-mono-2))))
   `(magit-blame-hash ((t (:background ,base16-bg-1 :foreground ,base16-purple))))
   `(magit-blame-name ((t (:background ,base16-bg-1 :foreground ,base16-orange-2))))
   `(magit-blame-date ((t (:background ,base16-bg-1 :foreground ,base16-mono-3))))
   `(magit-blame-summary ((t (:background ,base16-bg-1 :foreground ,base16-mono-2))))
   `(magit-dimmed ((t (:foreground ,base16-mono-2))))
   `(magit-hash ((t (:foreground ,base16-purple))))
   `(magit-tag  ((t (:foreground ,base16-orange-1 :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,base16-green :weight bold))))
   `(magit-branch-local   ((t (:foreground ,base16-blue :weight bold))))
   `(magit-branch-current ((t (:foreground ,base16-blue :weight bold :box t))))
   `(magit-head           ((t (:foreground ,base16-blue :weight bold))))
   `(magit-refname        ((t (:background ,base16-bg :foreground ,base16-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,base16-bg :foreground ,base16-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,base16-bg :foreground ,base16-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,base16-green))))
   `(magit-signature-bad       ((t (:foreground ,base16-red-1))))
   `(magit-signature-untrusted ((t (:foreground ,base16-orange-1))))
   `(magit-cherry-unmatched    ((t (:foreground ,base16-cyan))))
   `(magit-cherry-equivalent   ((t (:foreground ,base16-purple))))
   `(magit-reflog-commit       ((t (:foreground ,base16-green))))
   `(magit-reflog-amend        ((t (:foreground ,base16-purple))))
   `(magit-reflog-merge        ((t (:foreground ,base16-green))))
   `(magit-reflog-checkout     ((t (:foreground ,base16-blue))))
   `(magit-reflog-reset        ((t (:foreground ,base16-red-1))))
   `(magit-reflog-rebase       ((t (:foreground ,base16-purple))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,base16-green))))
   `(magit-reflog-remote       ((t (:foreground ,base16-cyan))))
   `(magit-reflog-other        ((t (:foreground ,base16-cyan))))

   ;; message
   `(message-cited-text ((t (:foreground ,base16-green))))
   `(message-header-cc ((t (:foreground ,base16-orange-1 :weight bold))))
   `(message-header-name ((t (:foreground ,base16-purple))))
   `(message-header-newsgroups ((t (:foreground ,base16-orange-2 :weight bold :slant italic))))
   `(message-header-other ((t (:foreground ,base16-red-1))))
   `(message-header-subject ((t (:foreground ,base16-blue))))
   `(message-header-to ((t (:foreground ,base16-orange-2 :weight bold))))
   `(message-header-xheader ((t (:foreground ,base16-silver))))
   `(message-mml ((t (:foreground ,base16-purple))))
   `(message-separator ((t (:foreground ,base16-mono-3 :slant italic))))

   ;; notmuch
   `(notmuch-crypto-decryption ((t (:foreground ,base16-purple :background ,base16-black))))
   `(notmuch-crypto-signature-bad ((t (:foreground ,base16-red-1 :background ,base16-black))))
   `(notmuch-crypto-signature-good ((t (:foreground ,base16-green :background ,base16-black))))
   `(notmuch-crypto-signature-good-key ((t (:foreground ,base16-green :background ,base16-black))))
   `(notmuch-crypto-signature-unknown ((t (:foreground ,base16-orange-1 :background ,base16-black))))
   `(notmuch-hello-logo-background ((t (:inherit default))))
   `(notmuch-message-summary-face ((t (:background ,base16-black))))
   `(notmuch-search-count ((t (:inherit default :foreground ,base16-silver))))
   `(notmuch-search-date ((t (:inherit default :foreground ,base16-purple))))
   `(notmuch-search-matching-authors ((t (:inherit default :foreground ,base16-orange-2))))
   `(notmuch-search-non-matching-authors ((t (:inherit font-lock-comment-face :slant italic))))
   `(notmuch-tag-added ((t (:underline ,base16-green))))
   `(notmuch-tag-deleted ((t (:strike-through ,base16-red-2))))
   `(notmuch-tag-face ((t (:foreground ,base16-green))))
   `(notmuch-tag-unread ((t (:foreground ,base16-red-1))))
   `(notmuch-tree-match-author-face ((t (:inherit notmuch-search-matching-authors))))
   `(notmuch-tree-match-date-face ((t (:inherit notmuch-search-date))))
   `(notmuch-tree-match-face ((t (:weight semi-bold))))
   `(notmuch-tree-match-tag-face ((t (:inherit notmuch-tag-face))))
   `(notmuch-tree-no-match-face ((t (:slant italic :weight light :inherit font-lock-comment-face))))

   ;; elfeed
   `(elfeed-log-debug-level-face ((t (:background ,base16-black :foreground ,base16-green))))
   `(elfeed-log-error-level-face ((t (:background ,base16-black :foreground ,base16-red-1))))
   `(elfeed-log-info-level-face ((t (:background ,base16-black :foreground ,base16-blue))))
   `(elfeed-log-warn-level-face ((t (:background ,base16-black :foreground ,base16-orange-1))))
   `(elfeed-search-date-face ((t (:foreground ,base16-purple))))
   `(elfeed-search-feed-face ((t (:foreground ,base16-orange-2))))
   `(elfeed-search-tag-face ((t (:foreground ,base16-green))))
   `(elfeed-search-title-face ((t (:foreground ,base16-mono-1))))
   `(elfeed-search-unread-count-face ((t (:foreground ,base16-silver))))

   ;; perspective
   `(persp-selected-face ((t (:foreground ,base16-blue))))

   ;; powerline
   `(powerline-active1 ((,class (:background ,base16-bg-hl :foreground ,base16-purple))))
   `(powerline-active2 ((,class (:background ,base16-bg-hl :foreground ,base16-purple))))
   `(powerline-inactive1 ((,class (:background ,base16-bg :foreground ,base16-fg))))
   `(powerline-inactive2 ((,class (:background ,base16-bg :foreground ,base16-fg))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,base16-blue))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,base16-green))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,base16-orange-1))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,base16-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,base16-purple))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,base16-orange-2))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,base16-blue))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,base16-green))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,base16-orange-1))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,base16-cyan))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,base16-purple))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,base16-orange-2))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground ,base16-red-1 :weight bold))))

   ;; rbenv
   `(rbenv-active-ruby-face ((t (:foreground ,base16-green))))

   ;; elixir
   `(elixir-atom-face ((t (:foreground ,base16-cyan))))
   `(elixir-attribute-face ((t (:foreground ,base16-red-1))))

   ;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,base16-red-1 :background ,base16-gray :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,base16-gray :weight bold))))

   ;; spaceline
   `(spaceline-flycheck-error  ((,class (:foreground ,base16-red-1))))
   `(spaceline-flycheck-info   ((,class (:foreground ,base16-green))))
   `(spaceline-flycheck-warning((,class (:foreground ,base16-orange-1))))
   `(spaceline-python-venv ((,class (:foreground ,base16-purple))))

   ;; web-mode
   `(web-mode-doctype-face ((t (:inherit font-lock-comment-face))))
   `(web-mode-error-face ((t (:background ,base16-black :foreground ,base16-red-1))))
   `(web-mode-html-attr-equal-face ((t (:inherit default))))
   `(web-mode-html-attr-name-face ((t (:foreground ,base16-orange-1))))
   `(web-mode-html-tag-bracket-face ((t (:inherit default))))
   `(web-mode-html-tag-face ((t (:foreground ,base16-red-1))))
   `(web-mode-symbol-face ((t (:foreground ,base16-orange-1))))

   ;; flx-ido
   `(flx-highlight-face ((t (:inherit (link) :weight bold))))

   ;; rpm-spec-mode
   `(rpm-spec-tag-face ((t (:foreground ,base16-blue))))
   `(rpm-spec-obsolete-tag-face ((t (:foreground "#FFFFFF" :background ,base16-red-2))))
   `(rpm-spec-macro-face ((t (:foreground ,base16-orange-2))))
   `(rpm-spec-var-face ((t (:foreground ,base16-red-1))))
   `(rpm-spec-doc-face ((t (:foreground ,base16-purple))))
   `(rpm-spec-dir-face ((t (:foreground ,base16-cyan))))
   `(rpm-spec-package-face ((t (:foreground ,base16-red-2))))
   `(rpm-spec-ghost-face ((t (:foreground ,base16-red-2))))
   `(rpm-spec-section-face ((t (:foreground ,base16-orange-2))))

   ;; guix
   `(guix-true ((t (:foreground ,base16-green :weight bold))))

   ;; gomoku
   `(gomoku-O ((t (:foreground ,base16-red-1 :weight bold))))
   `(gomoku-X ((t (:foreground ,base16-green :weight bold))))

   ;; term
   `(term-color-black ((t :foreground ,base16-mono-1)))
   `(term-color-blue ((t (:foreground ,base16-blue))))
   `(term-color-cyan ((t :foreground ,base16-cyan)))
   `(term-color-green ((t (:foreground ,base16-green))))
   `(term-color-magenta ((t :foreground ,base16-purple)))
   `(term-color-red ((t :foreground ,base16-red-1)))
   `(term-color-white ((t :foreground ,base16-fg)))
   `(term-color-yellow ((t (:foreground ,base16-orange-1))))

   ;; linum
   `(linum ((t (:foreground ,base16-gutter :background ,base16-bg))))
   ;; hlinum
   `(linum-highlight-face ((t (:foreground ,base16-fg :background ,base16-bg))))
   ;; native line numbers (emacs version >=26)
   `(line-number ((t (:foreground ,base16-gutter :background ,base16-bg))))
   `(line-number-current-line ((t (:foreground ,base16-fg :background ,base16-bg))))

   ;; regexp-builder
   `(reb-match-0 ((t (:background ,base16-gray))))
   `(reb-match-1 ((t (:background ,base16-black :foreground ,base16-purple :weight semi-bold))))
   `(reb-match-2 ((t (:background ,base16-black :foreground ,base16-green :weight semi-bold))))
   `(reb-match-3 ((t (:background ,base16-black :foreground ,base16-orange-2 :weight semi-bold))))

   ;; desktop-entry
   `(desktop-entry-deprecated-keyword-face ((t (:inherit font-lock-warning-face))))
   `(desktop-entry-group-header-face ((t (:inherit font-lock-type-face))))
   `(desktop-entry-locale-face ((t (:inherit font-lock-string-face))))
   `(desktop-entry-unknown-keyword-face ((t (:underline (:color ,base16-red-1 :style wave) :inherit font-lock-keyword-face))))
   `(desktop-entry-value-face ((t (:inherit default))))

   ;; latex-mode
   `(font-latex-sectioning-0-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-sectioning-1-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-sectioning-2-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-sectioning-3-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-sectioning-4-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-sectioning-5-face ((t (:foreground ,base16-blue :height 1.0))))
   `(font-latex-bold-face ((t (:foreground ,base16-green :weight bold))))
   `(font-latex-italic-face ((t (:foreground ,base16-green))))
   `(font-latex-warning-face ((t (:foreground ,base16-red-1))))
   `(font-latex-doctex-preprocessor-face ((t (:foreground ,base16-cyan))))

   ;; org-mode
   `(org-date ((t (:foreground ,base16-cyan))))
   `(org-footnote ((t (:foreground ,base16-cyan))))
   `(org-sexp-date ((t (:foreground ,base16-cyan))))

   ;; calendar
   `(diary ((t (:inherit warning))))
   `(holiday ((t (:foreground ,base16-green))))

   ;; gud
   `(breakpoint-disabled ((t (:foreground ,base16-orange-1))))
   `(breakpoint-enabled ((t (:foreground ,base16-red-1 :weight bold))))

   ;; realgud
   `(realgud-overlay-arrow1        ((t (:foreground ,base16-green))))
   `(realgud-overlay-arrow3        ((t (:foreground ,base16-orange-1))   `(realgud-overlay-arrow2        ((t (:foreground ,base16-orange-2))))
))
   '(realgud-bp-enabled-face       ((t (:inherit (error)))))
   `(realgud-bp-disabled-face      ((t (:inherit (secondary-selection)))))
   `(realgud-bp-line-enabled-face  ((t (:box (:color ,base16-red-1)))))
   `(realgud-bp-line-disabled-face ((t (:box (:color ,base16-gray)))))
   `(realgud-line-number           ((t (:foreground ,base16-mono-2))))
   `(realgud-backtrace-number      ((t (:inherit (secondary-selection)))))

   ;; undo-tree
   `(undo-tree-visualizer-current-face ((t (:foreground ,base16-red-1))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,base16-orange-1))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,base16-cyan))))
   ))

(base16-with-color-variables
  (custom-theme-set-variables
   'base16
   ;; fill-column-indicator
   `(fci-rule-color ,base16-gray)

   ;; tetris
   ;; | Tetromino | Color                    |
   ;; | O         | `base16-orange-2' |
   ;; | J         | `base16-blue'     |
   ;; | L         | `base16-orange-1' |
   ;; | Z         | `base16-red-1'    |
   ;; | S         | `base16-green'    |
   ;; | T         | `base16-purple'   |
   ;; | I         | `base16-cyan'     |
   '(tetris-x-colors
     [[229 192 123] [97 175 239] [209 154 102] [224 108 117] [152 195 121] [198 120 221] [86 182 194]])

   ;; ansi-color
   `(ansi-color-names-vector
     [,base16-black ,base16-red-1 ,base16-green ,base16-orange-2
      ,base16-blue ,base16-purple ,base16-cyan ,base16-fg])
   ))

(defvar base16-theme-force-faces-for-mode t
  "If t, base16-theme will use Face Remapping to alter the theme faces for
the current buffer based on its mode in an attempt to mimick the Atom One Dark
Theme from Atom.io as best as possible.
The reason this is required is because some modes (html-mode, jyaml-mode, ...)
do not provide the necessary faces to do theming without conflicting with other
modes.
Current modes, and their faces, impacted by this variable:
* js2-mode: font-lock-constant-face, font-lock-doc-face, font-lock-variable-name-face
")

;; Many modes in Emacs do not define their own faces and instead use standard Emacs faces when it comes to theming.
;; That being said, to have a real "Atom One Dark Theme" for Emacs, we need to work around this so that these themes look
;; as much like "Atom One Dark Theme" as possible.  This means using per-buffer faces via "Face Remapping":
;;
;;   http://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Remapping.html
;;
;; Of course, this might be confusing to some when in one mode they see keywords highlighted in one face and in another
;; mode they see a different face.  That being said, you can set the `base16-theme-force-faces-for-mode` variable to
;; `nil` to disable this feature.
(defun base16-theme-change-faces-for-mode ()
  (interactive)
  (and (eq base16-theme-force-faces-for-mode t)
       (cond
        ((member major-mode '(js2-mode))
         ;; base16-orange-1
         (face-remap-add-relative 'font-lock-constant-face :foreground "#D19A66")
         (face-remap-add-relative 'font-lock-doc-face '(:inherit (font-lock-comment-face)))
         ;; base16-mono-1
         (face-remap-add-relative 'font-lock-variable-name-face :foreground "#ABB2BF"))
        )))

(add-hook 'after-change-major-mode-hook 'base16-theme-change-faces-for-mode)

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'base16)
(provide 'base16)
;;; base16.el ends here
