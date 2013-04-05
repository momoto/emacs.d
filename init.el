
;; メニューバー非表示
(menu-bar-mode -1)
;; ツールバー非表示
(tool-bar-mode -1)

(setq-default tab-width 2           ;; タブ幅
              indent-tabs-mode nil) ;; インデントにスペースを使用する

(setq-default truncate-lines t)     ;; 行を画面端で折り返さない

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

;; Auto-savingの無効化
;; (setq make-backup-files nil)
;; 保存が完了した時にAuto-saveファイルを消す
(setq delete-auto-save-files t)
