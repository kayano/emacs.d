;; tn-ui.el

(defcustom tn-frame-font "Monaco:pixelsize=18" "Default font")

(defun tn-frame-init (frame)
  "Custom behaviours for new frames."
  ;; Mode
  (set-frame-parameter frame 'background-mode 'dark)
  (set-terminal-parameter frame 'background-mode 'dark)
  ;; Fonts
  (set-frame-font tn-frame-font)
  (add-to-list 'default-frame-alist
               (cons 'font tn-frame-font))
  ;; UI
  (tooltip-mode -1)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (set-fringe-mode '(1 . 1))
  (blink-cursor-mode -1)
  (mouse-wheel-mode t))

;; run now
(tn-frame-init (selected-frame))

;; and later
(add-hook 'after-make-frame-functions 'tn-frame-init)


;; Add themes to load path
(add-subfolders-to-theme-load-path themes-dir)

;; Use solarized as default theme
(load-theme 'solarized t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'tn-ui)
