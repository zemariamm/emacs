(setq load-path (cons "~/.emacs.d/" load-path))

;experimentar isto:
;(menu-bar-mode 0)
;(scroll-bar-mode 0)
;(tool-bar-mode 0)

; set keyboard macros
; macro write the following
; (use :reload-all 'c3po.state.machine)
; (use :reload-all 'c3po.state.data)
; (use :reload-all 'c3po.communication.xml)
; (use :reload-all 'c3po.communication.server)
; (use 'clojure.contrib.server-socket)

(fset 'load-c3po
   [?( ?u ?s ?e ?  ?' ?c ?3 ?p ?o backspace backspace backspace backspace backspace ?: ?r ?e ?l ?o ?a ?d ?- ?a ?l ?l ?  ?' ?c ?3 ?p ?o ?. ?s ?t ?a ?t ?e ?. ?m ?a ?c ?h ?i ?n ?e ?) return ?( ?u ?s ?e ?  ?: ?r ?e ?l ?o ?a ?d ?- ?a ?l ?l ?  ?' ?c ?3 ?p ?o ?. ?s ?t ?a ?t ?e ?. ?d ?a ?t ?a ?) return ?( ?u ?s ?e ?  ?: ?r ?e ?l ?o ?a ?d ?- ?a ?l ?l ?  ?' ?c ?3 ?p ?o ?. ?c ?o ?m ?m ?u ?n ?i ?c ?a ?t ?i ?o ?n ?. ?x ?m ?l ?) return ?( ?u ?s ?e ?  ?: ?r ?e ?l ?o ?a ?d ?- ?a ?l ?l ?  ?' ?c ?3 ?p ?o ?. ?c ?o ?m ?m ?u ?n ?i ?c ?a ?t ?i ?o ?n ?. ?s ?e ?r ?v ?e ?r ?) return ?( ?u ?s ?e ?  ?' ?c ?l ?o ?j ?u ?r ?e ?. ?c ?o ?n ?t ?r ?i ?b ?. ?s ?e ?r ?v ?e ?r ?- ?s ?o ?c ?k ?e ?t ?) return])

; load nxhtml
(load "/Users/zemariamm/.emacs.d/nxhtml/autostart.el")

; load haml
(load "/Users/zemariamm/.emacs.d/haml.el")

;load magit
(add-to-list 'load-path "/Users/zemariamm/.emacs.d/mainline")
(require 'magit)
; terminal
(one-buffer-one-frame-mode 0)
(setq mac-option-modifier nil)
(setq mac-function-modifier 'meta)

;load swank

;; (setq swank-clojure-jar-path "/Users/zemariamm/clojure/clojure/clojure-slim.jar")
;; (setq swank-clojure-extra-classpaths
;;        (list "/Users/zemariamm/clojure/clojure-contrib/clojure-contrib-slim.jar" "/Users/zemariamm/workspace/clojure" "/Users/zemariamm/workspace/jars/"))

;; (setq swank-clojure-extra-vm-args (list "-server"
;; 					"-Xdebug"
;; 					"-Xss2048k"
;; 					"-agentlib:jdwp=transport=dt_socket,address=8888,server=y,suspend=n"
;; 					"-Djava.ext.dirs=/Users/zemariamm/workspace/jars:/System/Library/Java/Extensions"))

;; (add-to-list 'load-path "/Users/zemariamm/clojure/swank-clojure")
;; (require 'swank-clojure-autoload)


;; (swank-clojure-config)

; load slime
;; (add-to-list 'load-path "/Users/zemariamm/clojure/slime")
;; ;(setq inferior-lisp-program "java -server -cp /Users/zemariamm/clojure/clojure/clojure.jar clojure.lang.Repl")
;; ;(setq inferior-lisp-program "java clojure.lang.Repl")

;; (require 'slime)
;; (slime-setup)

(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(require 'clojure-mode)

(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))))

(add-to-list 'load-path "~/.emacs.d/slime")
(require 'slime)
(slime-setup)
;(require 'swank-clojure)


;; (load-file "~/.emacs.d/clojure/clojure-mode.el")
;; (autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; (defun slime-clojure ()
;;   "Starts clojure in Slime"
;;   (interactive)
;;   (slime 'clojure))


;run psvn
(load-file "~/.emacs.d/psvn.el") 

;run csharpmode
;(load-file "~/.emacs.d/csharp-mode.el") 
;(require 'csharp-mode)

;comentados para correr no terminak
;(load-file "~/.emacs.d/emacs-rc-color-theme.el")
(load-file "~/.emacs.d/color-theme-twilight.el")

(color-theme-twilight)
 (require 'color-theme)
 (color-theme-initialize)
 (load-file "~/.emacs.d/color-theme-blackboard.el")


; disable backup
(setq backup-inhibited t)
; disable autosave
(setq auto-save-default nil)


(setq color-theme-is-global t)
(tool-bar-mode -1)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(global-font-lock-mode t)
(global-set-key "\M-g" 'goto-line)
(global-set-key (kbd "C-<tab>") 'other-window)

(require 'tramp)

(setq tramp-default-user "cloud45")
(setq tramp-default-host "85.138.67.139")
; /ssh:: will connect you to cloud45 s home directory on our server
; (or /method:user@remotehost:filename)
;;;;Set up ibs- lets you cycle through buffers using C-tab
;;;;http://www.geekware.de/software/emacs/#ibs
;(require 'ibs)

;;;;Make sure eterm is a possibility. Opens up a terminal in a new
;;;;frame. Better than M-x shell, usually.
;(require 'eterm)


;testing
(scroll-bar-mode nil)
; maximize on startup
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)


;add new color theme
(defun color-theme-dark-bliss ()
  ""
  (interactive)
  (color-theme-install
   '(color-theme-dark-bliss
     ((foreground-color . "#eeeeee")
      (background-color . "#001122")
      (background-mode . dark)
      (cursor-color . "#ccffcc"))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (default ((t (nil))))

     (font-lock-builtin-face ((t (:foreground "#f0f0aa"))))
     (font-lock-comment-face ((t (:italic t :foreground "#aaccaa"))))
     (font-lock-delimiter-face ((t (:foreground "#aaccaa"))))
     (font-lock-constant-face ((t (:bold t :foreground "#ffaa88"))))
     (font-lock-doc-string-face ((t (:foreground "#eeccaa"))))
     (font-lock-doc-face ((t (:foreground "#eeccaa"))))
     (font-lock-reference-face ((t (:foreground "#aa99cc"))))
     (font-lock-function-name-face ((t (:foreground "#ffbb66"))))
     (font-lock-keyword-face ((t (:foreground "#ccffaa"))))
     (font-lock-preprocessor-face ((t (:foreground "#aaffee"))))
     (font-lock-string-face ((t (:foreground "#bbbbff")))))))

;erlang options
;(setq load-path (cons "/opt/local/lib/erlang/lib/tools-2.6.2/emacs" load-path))
;(setq erlang-root-dir "/opt/local/var/macports/software/erlang/R12B-4_1/opt/local")
;(setq exec-path (cons "/opt/local/var/macports/software/erlang/R12B-4_1/opt/local/bin" exec-path))
;(require 'erlang-start)

;load xml-rpc and JIRA

;(load-file "~/.emacs.d/xml-rpc.el")
;(load-file "~/.emacs.d/jira.el")

;(load-file "~/.emacs.d/soap-client.el")
;(load-file "~/.emacs.d/jira2.el")