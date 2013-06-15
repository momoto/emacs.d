;; (message "(init.el) user-emacs-directory => %s" user-emacs-directory)
;; (message "(init.el) user-login-name => %s" user-login-name)
;; (message "(init.el) system-type => %s" system-type)
;; (message "(init.el) window-system => %s" window-system)
;; (defconst is-cocoa-emacs (and is-a-mac (eq window-system 'ns)))

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(setq-default tab-width 2           ;; タブ幅
              indent-tabs-mode nil) ;; インデントにスペースを使用する
(setq-default truncate-lines t)     ;; 行を画面端で折り返さない

(menu-bar-mode -1)   ;; メニューバー非表示
(tool-bar-mode -1)   ;; ツールバー非表示
(scroll-bar-mode -1) ;; スクロールバー非表示

(setq make-backup-files nil)    ;; Auto-savingの無効化
(setq delete-auto-save-files t) ;; 保存が完了した時にAuto-saveファイルを消す

;; markdown-mode
(when (file-exists-p (concat user-emacs-directory "markdown-mode/markdown-mode.el"))
  (autoload 'markdown-mode "markdown-mode/markdown-mode.el"
    "Major mode for editing Markdown files" t)
  (setq auto-mode-alist
    (cons '("\.md" . markdown-mode) auto-mode-alist))
  (setq auto-mode-alist
    (cons '("\.markdown" . markdown-mode) auto-mode-alist)))

;; php-mode
(when (file-exists-p (concat user-emacs-directory "php-mode/php-mode.el"))
  (load "php-mode/php-mode")
  (add-to-list 'auto-mode-alist '("\\.php$" . php-mode)))

;; インプットメソッドを指定する
(if (file-exists-p (expand-file-name "mozc.el")) (
  (require 'mozc)
  (setq default-input-method "japanese-mozc")
  (setq mozc-candidate-style 'overlay))
)
;(require 'uim-leim)
;(setq default-input-method "japanese-anthy-utf8-uim")	; Anthy (UTF-8)
;(setq default-input-method "japanese-mozc-uim")	; Mozc

(global-set-key [zenkaku-hankaku] 'toggle-input-method)
