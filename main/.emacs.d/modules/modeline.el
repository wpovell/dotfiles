;; Modeline Config ;;

(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-width) (length left) 2)))
    (format (format " %%s %%%ds " available-width) left right)))


(setq-default mode-line-format
      '((:eval (simple-mode-line-render
                (format-mode-line
                 '((:eval (if (projectile-project-p)
                              (concat
                               (projectile-project-name)
                               " | ")))
                   "%b"
                   (:eval (if (and (buffer-modified-p) (not buffer-read-only)) "*" ""))
                   (:eval (if buffer-read-only " " " (%l:%C)"))))
                (format-mode-line
                 '((vc-mode (
                    " ["
                    (:eval
                     (replace-regexp-in-string
                      (format "^ %s."
                              (vc-backend buffer-file-name))
                      "" vc-mode))
                    "] "))
                   mode-name))))))

;; Flash modeline for ding
(setq ring-bell-function
      (lambda ()
        (let ((orig-fg (face-foreground 'mode-line)))
          (set-face-foreground 'mode-line "#F2804F")
          (run-with-idle-timer 0.1 nil
                               (lambda (fg) (set-face-foreground 'mode-line fg))
                               orig-fg))))