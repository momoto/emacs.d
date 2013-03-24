
(setq-default c-basic-offset 2      ;;基本インデント量
              tab-width 2           ;;タブ幅
              indent-tabs-mode nil) ;;インデントをタブでするかスペースでするか

(setq c-auto-newline nil) ;; 全自動インデントを無効

;; read uim.el with LEIM initializing
;; (require 'uim-leim)

(require 'mozc)
(setq default-input-method "japanese-mozc")

;; set default IM. Uncomment the one of the followings.
;(setq default-input-method "japanese-anthy-utf8-uim")	; Anthy (UTF-8)
;(setq default-input-method "japanese-mozc-uim")	; Mozc
(setq mozc-candidate-style 'overlay)
