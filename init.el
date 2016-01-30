;; (message "User home directory: %s" (getenv "HOME"))
;; (message "Emacs configuration: %s" default-directory)
;; (message "buffer-file-name: %s" buffer-file-name)
(message "User: %s" user-login-name)
(message "System: %s" system-type)
(message "Window System: %s" window-system)
(message "Emacs Major Version: %s" emacs-major-version)

;; General
;; =======

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

(setq-default tab-width 2              ;; タブ幅
              indent-tabs-mode nil)    ;; インデントにスペースを使用する
(setq-default truncate-lines 1)        ;; 行を画面端で折り返さない
(setq visible-bell 1)                  ;; Visible Bell有効
(menu-bar-mode 0)                      ;; メニューバー非表示

(setq make-backup-files nil)              ;; Auto-savingの無効化
(setq delete-auto-save-files t)           ;; 保存が完了した時にAuto-saveファイルを消す
(setq-default line-spacing t)             ;; 行間を調節
(setq-default show-trailing-whitespace t) ;; 行末のスペースを強調表示

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

;; ウィンドウシステムの設定
(if window-system
    (progn
      (tool-bar-mode nil)                  ; ツールバー非表示
      (set-scroll-bar-mode nil)            ; スクロールバー非表示
      (setq line-spacing 0.2)              ; 行間
      (setq ns-pop-up-frames nil)))

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
