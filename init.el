
;; メニューバー非表示
(menu-bar-mode -1)
;; ツールバー非表示
(tool-bar-mode -1)

(setq-default tab-width 2           ;; タブ幅
              indent-tabs-mode nil) ;; t => インデントにタブを使用する nil => スペースを使用する


;; インプットメソッドを指定する
;; (require 'uim-leim)
(require 'mozc)
;(setq default-input-method "japanese-anthy-utf8-uim")	; Anthy (UTF-8)
;(setq default-input-method "japanese-mozc-uim")	; Mozc
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)


;; Auto-savingの無効化
;; (setq make-backup-files nil)
;; 保存が完了した時にAuto-saveファイルを消す
(setq delete-auto-save-files t)
