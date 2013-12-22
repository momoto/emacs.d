;; (message (getenv "HOME"))
;; (message user-emacs-directory)
;; (message default-directory)
;; (message user-login-name)
;; (message system-type)
;; (message window-system)
;; (message buffer-file-name)

;; General
;; =======

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

(setq-default tab-width 2           ;; タブ幅
              indent-tabs-mode nil) ;; インデントにスペースを使用する
(setq-default truncate-lines 1)     ;; 行を画面端で折り返さない
(setq visible-bell 1) ;; Visible Bell有効
(tool-bar-mode 0)     ;; ツールバー非表示
(menu-bar-mode 0)     ;; メニューバー非表示
(scroll-bar-mode 0)   ;; スクロールバー非表示

;; Auto-savingの無効化
(setq make-backup-files nil)
;; 保存が完了した時にAuto-saveファイルを消す
(setq delete-auto-save-files t)
;; 行間を調節
(setq-default line-spacing t)
;; 行末のスペースを強調表示．ただし，バッファローカル
(setq-default show-trailing-whitespace t)

;; 初期フレームの設定
(setq default-frame-alist
      (append
       (list '(foreground-color . "white")
             '(background-color . "#000033")
             '(border-color . "white")
             '(mouse-color . "pink")
             '(cursor-color . "#ffffcc")
             '(width . 80)
             '(height . 40)
             '(top . 10)
             '(alpha . 80)
             '(left . 10))
       default-frame-alist))

;; Libraries
;; =========

(add-to-list 'load-path (expand-file-name default-directory))

(defmacro add-hook-fn (name &rest body)
  `(add-hook ,name #'(lambda () ,@body)))

(defmacro require-if-exists (lib &rest body)
  `(when (locate-library ,(symbol-name lib))
     (require ',lib) ,@body t))

(defmacro delay-load (func lib &rest body)
  `(when (locate-library ,lib)
     ,@(mapcar (lambda (f) `(autoload ',f ,lib nil t)) func)
     (eval-after-load ,lib '(progn ,@body))))

(when (file-exists-p "lisp/syntax.el")
  (load "lisp/syntax"))

;;;
;;; end of file
;;;
