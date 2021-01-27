;; Load xah-fly-keys
(require 'xah-fly-keys)

;; Set the layout to QWERTY
(xah-fly-keys-set-layout "qwerty")

;; Enable fly keys
(xah-fly-keys 1)

;; Setup custom command mode keys
(defun am-xah-command-mode-keys () 
  (interactive)
  (define-key xah-fly-key-map (kbd "SPC i k") 'am-insert-doc-comment)
  (define-key xah-fly-key-map (kbd "SPC i j") 'am-insert-section-comment)
  (define-key xah-fly-key-map (kbd "/") 'xah-forward-right-bracket)
  (define-key xah-fly-key-map (kbd ".") 'other-window)
  (define-key xah-fly-key-map (kbd ",") 'am-back-window)
  (define-key xah-fly-key-map (kbd "g") 'kill-line)
  (define-key xah-fly-key-map (kbd "SPC g") 'xah-delete-current-text-block)
  (define-key xah-fly-key-map (kbd "SPC i d") 'electric-buffer-list)
  (define-key xah-fly-key-map (kbd "SPC k j") 'kill-current-buffer)
  (define-key xah-fly-key-map (kbd "SPC o t") 'kmacro-end-and-call-macro)
  (define-key xah-fly-key-map (kbd "\\") 'next-error)
  (define-key xah-fly-key-map (kbd "h") 'previous-error)
  (define-key key-translation-map (kbd "ESC") (kbd "C-g"))
  (define-key xah-fly-key-map (kbd "SPC o c") 'copy-rectangle-as-kill)
  (define-key xah-fly-key-map (kbd "SPC o v") 'yank-rectangle)
  (define-key xah-fly-key-map (kbd "SPC o x") 'kill-rectangle)
  (define-key xah-fly-key-map (kbd "SPC e f") 'rg)
  (define-key xah-fly-key-map (kbd "k") 'backward-char)
  (define-key xah-fly-key-map (kbd "i") 'backward-word)
  (define-key xah-fly-key-map (kbd "l") 'next-line)
  (define-key xah-fly-key-map (kbd "o") 'previous-line)
  (define-key xah-fly-key-map (kbd ";") 'forward-char)
  (define-key xah-fly-key-map (kbd "p") 'forward-word)
  (define-key xah-fly-key-map (kbd "j") 'xah-beginning-of-line-or-block)
  (define-key xah-fly-key-map (kbd "'") 'xah-end-of-line-or-block)
  (define-key xah-fly-key-map (kbd "SPC '") nil)
  (define-key xah-fly-key-map (kbd "SPC <left>") 'previous-buffer)
  (define-key xah-fly-key-map (kbd "SPC <right>") 'next-buffer)
  (define-key xah-fly-key-map (kbd "u") 'recenter-top-bottom)
  (define-key key-translation-map (kbd "SPC p") (kbd "M-C-p")))
(add-hook 'xah-fly-command-mode-activate-hook 'am-xah-command-mode-keys)
(am-xah-command-mode-keys)
