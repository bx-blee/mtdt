;;;-*- mode: Emacs-Lisp; lexical-binding: t ; -*-
;;;
;;;

(require 'easymenu)
(require 'mtdt-if)

;; (mtdt:menu:plugin|install modes:menu:global (s-- 2))
(defun mtdt:menu:plugin|install (<menuLabel <menuDelimiter)
  "Adds this as a submenu to menu labeled <menuLabel at specified delimited <menuDelimiter."

  ;; Determine starting value of mtdt:compose:fashion
  (setq  mtdt:compose:fashion mtdt:compose:fashion::basic)
  (when org-msg-mode
    (setq  mtdt:compose:fashion mtdt:compose:fashion::orgMsg))
  (mtdt:compose:fashion/setup mtdt:compose:fashion)

  (easy-menu-add-item
   <menuLabel
   nil
   (mtdt:menu:select|define :active t)
   <menuDelimiter
   )
  )

;;
;;
(defun mtdt:menuItem:selected|define ()
  "Return a menuItem vector. Requires dynamic update."
  (car
   `(
     [,(format "Compose with fashion :  %s"
	       mtdt:compose:fashion)
      (mtdt:compose-mail/selected)
      :help "With Selected Fashion, compose-mail"
      :active t
      :visible t
      ]
     )))

(defun mtdt:menuItem:setup-withCurBuffer|define ()
  "Return a menuItem vector."
  (car
   `(
     [,(format "MTDT Setup With Current Buffer")
      (mtdt:setup/with-curBuffer)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      :active t
      :visible t
      ]
     )))


;;
;; [[elisp:(popup-menu (symbol-value (browsers:menu:help|define)))][This Menu]]
;; (popup-menu (symbol-value (mtdt:menu:select|define)))
;;
(defun mtdt:menu:select|define (&rest <namedArgs)
  "Return mtdt:menu:select
:active and :visible can be specified as <namedArgs.
"
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    ;; (setq $:browsers:menu:browse-url:at-point:active <active)
    ;; (setq $:browsers:menu:browse-url:at-point:visible <visible)

    (easy-menu-define
      mtdt:menu:select
      nil
      "Menu For Configuration Of browse-url-browser-function"
      `(,(format "Select Outmailer:: %s" mtdt:compose:fashion)
	:help "Show And Set Relevant Parameters"
	:visible ,<visible
	:active ,<active
	,(s-- 3)
	[
	,(format "**selected fashion = %s**" mtdt:compose:fashion)
	  (describe-variable 'mtdt:compose:fashion)
	  :help "Describe current value of browse-url-browser-function"
	  :active t
	  :visible t
	  ]
	,(s-- 4)
	 [
	  "Basic"
	  (mtdt:compose:fashion/setup mtdt:compose:fashion::basic)
	  :help "Select basic composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  mtdt:compose:fashion mtdt:compose:fashion::basic)
	  ]
	 [
	  "OrgMsg"
	  (mtdt:compose:fashion/setup mtdt:compose:fashion::orgMsg)
	  :help "Select orgMsg composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq mtdt:compose:fashion mtdt:compose:fashion::orgMsg)
	  ]
	 [
	  "LaTeX"
	  (mtdt:compose:fashion/setup  mtdt:compose:fashion::latex)
	  :help "Select latex composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq mtdt:compose:fashion mtdt:compose:fashion::latex)
	  ]
	 ,(s-- 5)
	 ,(s-- 6)
	 ,(s-- 7)
	 ,(s-- 8)
	 ))

    (easy-menu-add-item
     mtdt:menu:select
     nil
     (mtdt:menuItem:selected|define)
     (s-- 6))

    (easy-menu-add-item
     mtdt:menu:select
     nil
     (mtdt:menuItem:setup-withCurBuffer|define)
     (s-- 7))

    (easy-menu-add-item
     mtdt:menu:select
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/git/auth/bxRepos/blee-binders/bisos-core/sync/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 8))

    'mtdt:menu:select
    ))


(provide 'mtdt-menu)
