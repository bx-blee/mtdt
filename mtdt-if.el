;;; mtdt-if.el --- Mail Templating, Distribution and Tracking -*- lexical-binding: t; -*-

;;; Commentary:
;;; MTDT (Mail Templating, Distribution and Tracking) FKA:  MTDT (Mail Composition, Distribution and Tracking)
;;; Libre-Halaal Constant Contact For Everyone
;;;
;;; Blee Panel Documentation Is At:
;;; /bisos/panels/blee-core/mail/mailings/emacs-mtdt/mtdt-conceptAndDesign/_nodeBase_/fullUsagePanel-en.org
;;;
;;; Given a self-contained mailingFile (usually called content.mail) or within a mailingFile-buffer, using macros, mtdt creates
;;; a series of commands that allow for customized-compostion, sending and distribution of those
;;; messages.
;;;
;;; The mailingFile should be in correct RFC-822 format. For example, you can not have an empty To: field.
;;;
;;; MTDT consists of:
;;;    mtdt-lib.el    --- General purpose libraries
;;;    mtdt-newMail.el   --- Initial outgoing email
;;;    mtdt-contextedMail.el  --- Replies and Forwards
;;;
;;; Customized-compostion of mailings, takes of two forms.
;;;  - direct editing -- :extSrcBase nil
;;;  - external source editing -- :extSrcBase "."  -- The result is then
;;;    included in the mailingFile through a dblock.
;;;
;;; Primary command usage interfaces are:
;;; - mtdt:setup-and-compose/with-curBuffer -- Used the mailing buffer -- Uses /with-file  in turn.
;;; - mtdt:setup-and-compose/with-file  -- Used in Blee Panels
;;; - mtdt:setup/with-curBuffer -- Just create the mailing ffunction as mtdt:compose/mailingName.
;;;
;;; Compose results into a new frame and a ready buffer in a /tmp ephemera base.
;;;
;;;
;;;----------------------------------------------------------------------------
;;; OLD AND OBSOLETE COMMENTS BELOW KEPT TILL FULLY ABSORBED:
;;; This used to be Machine Generated File through: mailingProc.sh vis_basic_method_prep
;;; based on: /libre/ByStar/InitialTemplates/mailing/templates/msend-mailing-template.el
;;;
;;;    ======== bxms-compose-MailingName           -- Originate A Fresh Message -- Or Augment An Existing Message
;;;    ======== bxms-batch-MailingName          -- = bx-msend-MailingName + (msend-mail-and-exit)
;;;    ========
;;;    ======== bxms-web-url-MailingName            -- BROWSER ORIGINATION -- (Send Link)
;;;    ======== bxms-web-mailto-MailingName         -- BROWSER ORIGINATION -- (Click On A mailto: URL)
;;;    ========
;;;    ======== x bxms-compose-MailingName         -- BBDB ORIGINATION  -- Interactive on One or on Each one-by-one
;;;    ======== x bxms-batch-MailingName        -- BBDB ORIGINATION  -- Batch on One or on Each one-by-one
;;;    ======== x bxms-toall-MailingName          -- BBDB ORIGINATION  -- Interactive on ALL
;;;    ========
;;;    ======== bxms-bbdb-compose-MailingName  -- BBDB USAGE        -- Interactive on One
;;;    ======== bxms-bbdb-batch-MailingName    -- BBDB USAGE        -- Batch on One
;;;    ======== bxms-bbdb-toall-MailingName    -- BBDB USAGE        -- Interactive on ALL in To:
;;;----------------------------------------------------------------------------
;;
;;; Code:

(require 'f)
(require 'loop)
(require 'message)
(require 'mailing-from-base)
(require 'msend-lib)
(require 'org-msg)

(defconst mtdt:compose:fashion::basic "Basic" "Basic Plain Text Mail Composition.")
(defconst mtdt:compose:fashion::orgMsg "OrgMsg" "OrgMsg Mail Composition.")
(defconst mtdt:compose:fashion::latex "LaTeX" "LaTeX Mail Composition.")

(defvar mtdt:compose:fashion
  mtdt:compose:fashion::basic
  "Selected and Effective compose fashion.")

(defvar mtdt:reply:templates:base
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply")
  "Basedir of where LaTeX templates are.")

(defvar mtdt:reply:templates:leftToRight
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/ltr-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar mtdt:reply:templates:rightToLeft
  (expand-file-name "~/bpos/usageEnvs/fullUse/mailings/reply/rtl-basicLaTeX")
  "Basedir of where leftToRight LaTeX languages templates are.")

(defvar mtdt:compose:ephemera:base "/bisos/tmp"
  "Basedir of where ephemera compositions go.")

(defun mtdt:compose:fashion/setup (<fashion)
  "Based on <fashion, set things up for composition."
  (cond
   ((eq <fashion  mtdt:compose:fashion::basic)
    (setq mtdt:compose:fashion <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   ((eq <fashion  mtdt:compose:fashion::orgMsg)
    (setq mtdt:compose:fashion <fashion)
    (when (not org-msg-mode)
      (org-msg-mode)))
   ((eq <fashion  mtdt:compose:fashion::latex)
    (setq mtdt:compose:fashion <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   (t
    (error "Bad input"))
   ))


;;
;; (mtdt:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (mtdt:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro mtdt:compose$mailing-defun (<mailingFilePath)
  "The macro defines a function to be invoked to compose a msg from a template.
<MAILINGFILEPATH is expected to be a static path.
interactive p is needed so that there are some params.
With compose can edit content and headers, with originate only headers."
  `(fset (intern (concat "mtdt:compose/" (mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   (mtdt:compose|with-file ,<mailingFilePath args)
	   )
	 ))

;;
;; (mtdt:oriiginate$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (mtdt:originate$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro mtdt:originate$mailing-defun (<mailingFilePath)
  "<MAILINGFILEPATH is expected to be a static path.
The macro defines a function to be invoked to originate a msg from template.
interactive p is needed so that there are some params.
With compose can edit content and headers, with originate only headers."
  `(fset (intern (concat "mtdt:originate/" (mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   (mtdt:originate|with-file ,<mailingFilePath args)
	   )
	 ))

;;
;; (mtdt:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (mtdt:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro mtdt:batch$mailing-defun (<mailingFilePath)
  "Macro defines a function to be invoked to batch send a msg with a template in <MAILINGFILEPATH.
NOTYET, instead of fset intern, try defun -- would be simpler."
  `(fset (intern (concat "mtdt:batch/"  (mtdt:mailing:getName|with-file ,<mailingFilePath)))
	 (lambda (args)
	   (interactive "p")
	   ($:mtdt:batch|with-file ,<mailingFilePath args)
	   )
	 ))

(defun $:mtdt:batch|with-file (<mailingFilePath args)
  "Out of macro work of mtdt:batch$mailing-defun.
ModuleLocal."
    (funcall (intern (concat "mtdt:compose/" (mtdt:mailing:getName|with-file <mailingFilePath))) args)
    (msend-mail-and-exit)
    )

;;
;; (mtdt:setup$with-filePath "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
;; (macroexpand-all (mtdt:setup$with-filePath "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"))
;;
(defmacro mtdt:setup$with-filePath (<mailingFilePath)
  "Create/Define all mtdt:xx commands based on <mailingFilePath.
Base function for other mtdt:setup:s map to this.
Needs to be a macro, so that ,<mailingFilePath is captured.
Is expected to be invoked once for each <mailingFilePath.
For use by elisp applications."
  `(progn
     (mtdt:compose$mailing-defun ,<mailingFilePath)
     (mtdt:originate$mailing-defun ,<mailingFilePath)
     (mtdt:batch$mailing-defun ,<mailingFilePath)
     )
  )

;;
;; (macroexpand-all '(mtdt:setup$with-curBuffer))
;;
;; Example  "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
;;
(defmacro $:mtdt:setup$with-curBuffer ()
  "Create/Define all mtdt:xx commands based on current buffer file-name.
$: indicates it is private to this module. Is not expected to be invoked by any external user.
NOTYET, try 'make-symbol'
interactive P is necessary.
gensym did not work, ended up using mtdt:cur:buffer which works but is obviously not the right way.
NOTYET, we need a wrapper around mtdt:setup/with-curBuffer.
Is not expected to be invoked by any external user. $: indicates it is local to this module.
External user uses mtdt:setup/with-curBuffer which then invoke macros based on current buffer.
"
  `(fset (intern "mtdt:setup:gened/with-curBuffer")
	 (lambda (params)
	   (interactive "p")
	   (setq mtdt:cur:buffer (buffer-file-name))
	   (mtdt:compose$mailing-defun mtdt:cur:buffer)
  	   (mtdt:batch$mailing-defun  mtdt:cur:buffer)
	   )
	 )
  )

;;;
;;; The expansion is needed
;;;
($:mtdt:setup$with-curBuffer)

;;
;; (mtdt:bbdb-compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb-compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb-compose$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:bbdb-compose/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:compose ,<mailingPath params)
	     ))
    ))

;;
;; (mtdt:bbdb-batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb-batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb-batch$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template."
  (let* (
	($baseFuncName "mtdt:bbdb-batch/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:batch ,<mailingPath params)
	     ))
    ))

;;
;; (mtdt:bbdb-toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb-toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb-toall$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:bbdb-toall/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (params)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (params)
	     (interactive "p")
	     (bx:mailing:bbdb:toall ,<mailingPath params)
	     ))
    ))

;;
;; (mtdt:bbdb:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb:compose$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb:compose$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:bbdb:compose/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bxms-bbdb-compose-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (mtdt:bbdb:toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb:toall$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb:toall$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:bbdb:toall/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bbdb-mall-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (mtdt:bbdb:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:bbdb:batch$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:bbdb:batch$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:bbdb:batch/")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda (records)
	     (interactive "p")
	     (bxms-bbdb-batch-from-base ,<mailingPath records)
	     ))
    ))

;;
;; (mtdt:web:mailto-pre$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:web:mailto-pre$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:web:mailto-pre$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:web:mailto|")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-pre"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (bx-mmailto-from-base-pre ,<mailingPath)
	     ))
    ))

;;
;; (mtdt:web:mailto-post$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:web:mailto-post$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:web:mailto-post$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:web:mailto|")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-post"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (bx-mmailto-from-base-post ,<mailingPath)
	     ))
    ))

;;
;; (mtdt:web:mailto$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;; (macroexpand-all (mtdt:web:mailto$mailing-defun "~/BUE/mailings/start/family.fa/blank/basicText.fa"))
;;
(defmacro mtdt:web:mailto$mailing-defun (<mailingPath)
  "The macro defines a function to be invoked to batch send a message based on a template"
  (let* (
	($baseFuncName "mtdt:web:mailto|")
	($mailingName (mtdt:mailing:getName|with-file <mailingPath))
	($fullFuncName (concat $baseFuncName $mailingName "-post"))
	)
    ;;;
    ;;; Equivalent of (defun ,fullFuncName (records)
    ;;;
    `(fset (intern ,$fullFuncName)
	   (lambda ()
	     (interactive)

	     (setq  a-murl-pre-hook nil)
	     ;; NOTYET
	     (add-hook 'a-murl-pre-hook 'bxms:web:mailto:start-family.fa-blank-basicText.fa-pre)

	     (setq  a-murl-post-hook nil)
	     (add-hook 'a-murl-post-hook 'bxms:web:mailto:start-family.fa-blank-basicText.fa-post)

	     ))
    ))

;; (defun bxms:web:url:start-family.fa-blank-basicText.fa-pre ()
;;   ""
;;   (bx-murl-from-base-pre "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;;   )

;; (defun bxms:web:url:start-family.fa-blank-basicText.fa-post ()
;;   ""
;;   (bx-murl-from-base-post "~/BUE/mailings/start/family.fa/blank/basicText.fa")
;;   )

;; (defun bxms-web-url-start-family.fa-blank-basicText.fa ()
;;   ""
;;   (interactive)

;;   (setq  a-murl-pre-hook nil)
;;   (add-hook 'a-murl-pre-hook 'bxms:web:url:start-family.fa-blank-basicText.fa-pre)

;;   (setq  a-murl-post-hook nil)
;;   (add-hook 'a-murl-post-hook 'bxms:web:url:start-family.fa-blank-basicText.fa-post)
;;   )




;; Example  "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
(defun mtdt:setup/with-curBuffer (args)  "
** For use by external users. Primary Buffer Based User Interface.
"
  (interactive "p")
  (let* (
	 ($mailingFilePath (buffer-file-name))
	)
    (when $mailingFilePath
      (with-selected-window (frame-selected-window)
	(save-excursion
	  (mtdt:setup:gened/with-curBuffer args) ;; gened by macro
	  ))
      )
    (when (not $mailingFilePath)
      (message "Buffer Does Not Have A File -- Skipped")
      )
    )
  )


;;
;; (mtdt:mailing:getName|with-file "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail")
(defun mtdt:mailing:getName|with-file (<mailingFilePath)
  "Return the value of x-mailingname field of header of <mailingFilePath.
May be called from within macros with <mailingFilePath and not the mailingBuf being available.
x-mailingname should be all lower case.
Kills the mailingBuf."
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($result)
	 )
    (save-excursion
      (setq $result (mtdt:mailing:getName/with-buffer $mailingBuf))
      (kill-buffer $mailingBuf)
      )
    $result
    ))


;;
;; "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail"
;; (mtdt:mailing:getName/with-curBuffer)
;;
(defun mtdt:mailing:getName/with-buffer (<mailingBuf)
  "Return the value of x-mailingname field of header. x-mailingname should be all lower case."
  (interactive)
  (let* (
	 (result nil)
	)
    (setq result (bx:mail:header:field:get-from-buffer 'x-mailingname <mailingBuf))
    result
    )
  )

;;
;; (mtdt:mailing:getName/with-curBuffer)
;;
(defun mtdt:mailing:getComposeFwrk|with-buffer (<mailingBuf)
  "Return the value of x-composefwrk field of header. It should be all lower case.
Valid values are 'msgOrg or 'message. If field does not exist, message is assumed.
"
  (let* (
	 (result nil)
	)
    (setq result (bx:mail:header:field:get-from-buffer 'x-composefwrk <mailingBuf))
    (unless result
      (setq result "message"))
    result
    )
  )

;;
;; (bx:mail:header:field:get-from-buffer 'x-mailingparams (find-file "~/BUE/mailings/start/family.fa/blank/basicLatex.fa/basicLatex/mailingStatic/content.mail"))
;; (message "%s" (mtdt:mailing:params|from-buf )
;;
(defun mtdt:mailing:params|from-buf (<mailingBuf)
  "Return params as a list based on the string of X-MailingParams:.
x-mailingparams should be all lower-case.
params can be retrieved with plist."
  (let* (
	 ($paramsAsStr (bx:mail:header:field:get-from-buffer 'x-mailingparams <mailingBuf))
	 (params (append (list :name 'someName)
			 (read (concat "(" $paramsAsStr ")"))))
	 )
    (message "mtdt:mailing:params|from-buf: paramsAsStr=%s" $paramsAsStr)
    params))

;;; (message (buffer-name (mtdt:mailing|latest-unsent-mail-buf)))
(defun mtdt:mailing|latest-unsent-mail-buf ()
  "Return most recently created unsent mail buffer."
  (let ((found nil))
    (loop-for-each each (buffer-list)
                   (message (buffer-name each))
                   (when (s-contains? "unsent mail" (buffer-name each))
                     (setq found each)
                     (loop-break)))
    found))


(defun mtdt:mailing:compose|get-function-name (<mailingName)
  "Given <mailingName, return name of compose function"
  (concat "mtdt:compose/" <mailingName))

(defun mtdt:mailing:originate|get-function-name (<mailingName)
  "Given <mailingName, return name of originate function"
  (concat "mtdt:originate/" <mailingName))


(defun mtdt:setup-and-compose/with-file (<mailingFilePath)
  "Given a mailing file, initiate an outgoing message.
Used for example, in dblocks such as bxPanel:mailing/compose.
  - visit the file
  - setup  mtdt:compose/mailingName if needed
  - invoke mtdt:compose/mailingName go to the to field
 "
  (interactive)
  (let (
	($mailingName nil)
	($mailingBuf nil)
	($funcSymbol nil)
	)
    (find-file-read-only-other-frame <mailingFilePath)
    (setq $mailingBuf (current-buffer))
    (setq $mailingName (mtdt:mailing:getName/with-buffer $mailingBuf))
    (setq $funcSymbol (intern (mtdt:mailing:compose|get-function-name $mailingName)))
    (when (commandp $funcSymbol)
      ;;(switch-to-buffer $mailingBuf)
      (call-interactively $funcSymbol)
      )
    (when (not (commandp $funcSymbol))
      (mtdt:setup$with-filePath <mailingFilePath)
      (call-interactively $funcSymbol)
      )
    ;;; Most recent buffer should now be the "*unsent mail<n>*"
    (switch-to-buffer (mtdt:mailing|latest-unsent-mail-buf))
    )
  )

(defun mtdt:setup-and-compose/with-curBuffer () "\
** Convert buffer to filePath and call mtdt:setup-and-compose/with-file then."
  (interactive)
  (mtdt:setup-and-compose/with-file (buffer-file-name))
  )

;;
;;
;;
(defun mtdt:compose|with-file (<mailingFilePath args)
  "Out of macro work of mtdt:compose$mailing-defun.
ModuleLocal.
"
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (mtdt:mailing:params|from-buf $mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase}"))

    (unless <extSrcBase
      (mtdt:compose|basedOnMailingTemplateFile  <mailingFilePath)
      )
    (when <extSrcBase
      (setq $ephemeraMailingFilePath
	    (mtdt:compose:ephemera|copyToBase <mailingFilePath <extSrcBase))
      (mtdt:compose|basedOnMailingTemplateFile $ephemeraMailingFilePath)
      (mtdt:compose:ephemera|mailBufRecord
       (file-name-directory $ephemeraMailingFilePath)
       (buffer-name (mtdt:mailing|latest-unsent-mail-buf))
       )
      (display-buffer
       (switch-to-buffer (mtdt:mailing|latest-unsent-mail-buf)))
      )
    ))

;;;
;;; (mtdt:compose|basedOnMailingTemplateFile "/bxo/r3/iso/piu_mbFullUsage/mailings/compose/family/from/org-tex/content.orgMsg")
;;;
(defun mtdt:compose|basedOnMailingTemplateFile (<mailingFilePath)
  "Visits file and calls TemplateBuf version."
  (interactive)
  (save-excursion
  (mtdt:compose|basedOnMailingTemplateBuf (find-file <mailingFilePath))))


(defun mtdt:compose|basedOnMailingTemplateBuf (<mailingBuf)
  "Given a mailingBuf, run compose-mail and replace its content with template.
When composeFwrk is message, stay in message mode,
When composeFwrk is msgOrg, switch to org-msg-edit-mode."
  (let* (
	 ($mailingParams (mtdt:mailing:params|from-buf <mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 ($composeFwrk (mtdt:mailing:getComposeFwrk|with-buffer <mailingBuf))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase} $composeFwrk=${$composeFwrk}"))

    (compose-mail)
    (erase-buffer)
    (insert-buffer-substring <mailingBuf)
    (message-goto-to)

    (cond
     ((string-equal $composeFwrk "message")
      (message-mode)
      )
     ((string-equal $composeFwrk "msgOrg")
      (org-msg-edit-mode)
      )
     (t
      (message (s-lex-format "Unknown $composeFwrk=${$composeFwrk}"))))
    ))


(defun mtdt:setup-and-originate/with-file (<mailingFilePath)
  "Given a mailing file, initiate an outgoing message.
Used for example, in dblocks such as bxPanel:mailing/originate.
  - visit the file
  - setup  mtdt:originate/mailingName if needed
  - invoke mtdt:originate/mailingName go to the to field
NOTYET, delete the BCC field, if there is one.
 "
  (interactive)
  (let (
	($mailingName nil)
	($mailingBuf nil)
	($funcSymbol nil)
	)
    (find-file-read-only <mailingFilePath)
    (setq $mailingBuf (current-buffer))
    (setq $mailingName (mtdt:mailing:getName/with-buffer $mailingBuf))
    (setq $funcSymbol (intern (mtdt:mailing:originate|get-function-name $mailingName)))
    (when (commandp $funcSymbol)
      ;;(switch-to-buffer $mailingBuf)
      (call-interactively $funcSymbol)
      )
    (when (not (commandp $funcSymbol))
      (mtdt:setup$with-filePath <mailingFilePath)
      (call-interactively $funcSymbol)
      )
    ;;; Most recent buffer should now be the "*unsent mail<n>*"
    (switch-to-buffer (mtdt:mailing|latest-unsent-mail-buf))
    (message-goto-bcc)
    (beginning-of-line 1)
    (kill-whole-line)
    (message-goto-to)
    )
  )

(defun mtdt:setup-and-originate/with-curBuffer () "
** Converts buffer to filePath and calls mtdt:setup-and-compose/with-file then.
  "
  (interactive)
  (mtdt:setup-and-originate/with-file (buffer-file-name))
  )


;;
;;
;;
(defun mtdt:originate|with-file (<mailingFilePath args)
  "Out of macro work of mtdt:originate$mailing-defun.
ModuleLocal.
"
  (let* (
	 ($mailingBuf (switch-to-buffer (find-file <mailingFilePath)))
	 ($mailingParams (mtdt:mailing:params|from-buf $mailingBuf))
         ($ephemeraMailingFilePath nil)
	 (<extSrcBase (or (plist-get $mailingParams :extSrcBase) nil))
	 )
    (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase}"))
    (text-mode) ;; bxms-compose-from-base checks for major-mode
    (bxms-compose-from-base (expand-file-name (file-name-directory <mailingFilePath)) args)
    (display-buffer
     (switch-to-buffer (mtdt:mailing|latest-unsent-mail-buf)))
    ))


;;
;; (bx:ephemera:dated|pathName-in "/tmp")
;;
(defun bx:ephemera:dated|pathName-in (<baseDir)
  "Return (format-time-string \"%Y-%m-%d-%H-%M-%S\") plus a counter.
Which makes for a uniq file name.
If that date to a second exists, do a plus counter.
NOTYET, counter has not been implemented yet."
  (let* (
	 ($ephemeraUniqe (format-time-string "%Y-%m-%d-%H-%M-%S"))
	 ($result (f-join <baseDir $ephemeraUniqe))
	 )
    $result))

;;
;; (mtdt:compose:ephemera|copyToBase "~/BUE/mailings/start/family.fa/blank/basicText.fa/content.mail" ".")
;;
(defun mtdt:compose:ephemera|copyToBase (<mailingFilePath <extSrcBase)
  "Copy recursively <extSrcBase to mtdt:compose:ephemera:base."
  (let* (
	 ($mailingBaseDir (expand-file-name (file-name-directory <mailingFilePath)))
	 ($srcBase (f-join $mailingBaseDir <extSrcBase))
	 ($destBase (bx:ephemera:dated|pathName-in mtdt:compose:ephemera:base))
	 ($mailingRelativeToExtSrcBase (f-relative <mailingFilePath $srcBase))
	 ($ephemeraMailingFilePath (f-join $destBase $mailingRelativeToExtSrcBase))
	 ($shellCmndResult)
	 )
    (setq $shellCmndResult
	  (shell-command-to-string
	   (format "cp -r %s %s" $srcBase $destBase)))
    (message $shellCmndResult)
    $ephemeraMailingFilePath
    ))

(defun mtdt:compose:ephemera|mailBufRecord (<ephemeraMailingBaseDir <bufName)
  "Record name of <buf at <ephemeraMailingFilePath as mail.buf. It can then be obtained."
    (with-temp-file (concat (file-name-as-directory <ephemeraMailingBaseDir) "mail.buf")
      (insert (s-lex-format "${<bufName}"))))

(defun mtdt:compose:ephemera|mailBufObtain (<ephemeraMailingFilePath)
  "Record name of <buf at <ephemeraMailingFilePath as mail.buf. It can then be obtained."
  (let* (
         ($fileName (concat (file-name-directory <ephemeraMailingFilePath) "mail.buf"))
         )
    (if (file-readable-p $fileName)
        (f-read (concat (file-name-directory <ephemeraMailingFilePath) "mail.buf"))
      nil)))

;;;
;;; (mtdt:mailing:content|filePath)
;;;
(defun mtdt:mailing:content|findFile ()
  "Return nil if file does not exist. Based on existence, determine name of mailing content file.
NOTYET: mode could come from ($composeFwrk (mtdt:mailing:getComposeFwrk|with-buffer <mailingBuf))
We first look for content.msgOrg.
"
  (let* (
         ($filePath nil)
         )
    (cond
     ((file-readable-p (setq $filePath (f-join default-directory "content.orgMsg")))
      (find-file $filePath)
      (org-msg-edit-mode)
      )
     ((file-readable-p (setq $filePath (f-join default-directory "content.mail")))
      (find-file $filePath)
      (message-mode)
      )
     (t
      $filePath
      ))))

;;;
;;;
(defun mtdt/gotoMailBuf ()
  "Go to the unsent buffer or to mailing's content.mail buffer. Primarily used in mailing.mastex."
  (interactive)
  (let* (
         ($ephemeraMailBufName (mtdt:compose:ephemera|mailBufObtain default-directory))
         )
    (when $ephemeraMailBufName
      (display-buffer
       (switch-to-buffer $ephemeraMailBufName)))
    (unless $ephemeraMailBufName
      (mtdt:mailing:content|findFile)
      )
    ))


(defun mtdt:content:update/mailBufAndVisit ()
  "Goto mailBuf, update it, raise it. preview it.
Called when content has been edited and is ready."
  (mtdt/gotoMailBuf)
  (org-dblock-update-buffer-bx)
  (mml-preview)
  )

(defun mtdt:content:tex/buildSentinel (<proc <event)
  "This is triggered after build is complete. We go back to the mail buffer.
dblock update it and perview."
  (message (s-lex-format "mtdt:content:tex/buildSentinel triggered for proc=${<proc} event=${<event}"))
  (mtdt:content:update/mailBufAndVisit)
  )

(defun mtdt:content:tex/buildReleaseAndMailBuf ()
  "LaTeX build+release + display build continue in sentinel when build is complete."
  (interactive)
  (message "From buildReleaseAndMailBuf -- Running: lcntProc.sh -v -n showRun -i buildResultsRelease")
  (let* (
         ($tmpName (make-temp-name "-output"))
         ($bufName (format "*%s*" $tmpName))
         ($process nil))
    (save-buffer)
    (setq $process (start-process "lcntProc.sh" $bufName
                                  "/bin/sh" "-c" "lcntProc.sh -v -n showRun -i buildResultsRelease"))
    (set-process-sentinel $process 'mtdt:content:tex/buildSentinel)
    (display-buffer (switch-to-buffer $bufName))))

(defun mtdt:gnus:reply|ephemeraSetup ()
  "Triggered when replying with Gnus, after the article has been setup"
  (message "mtdt:gnus:reply|ephemeraSetup was triggered, likely from gnus-message-setup-hook")
  (let* (
	 ($point)
         ($ephemeraMailingFilePath:ltr nil)
         ($ephemeraMailingFilePath:rtl nil)
	 )
    (setq $point (search-forward "--citation follows this line (read-only)--" nil t))
    (when $point
      (forward-line -1)
      (insert "\n")
      (insert "\n#+BEGIN: bx:mtdt:content/actions")
      (insert "\n#+END:")
      (insert "\n")

      (setq $ephemeraMailingFilePath:ltr
	    (mtdt:compose:ephemera|copyToBase
             mtdt:reply:templates:leftToRight
             "."))

      (setq $ephemeraMailingFilePath:rtl
	    (mtdt:compose:ephemera|copyToBase
             mtdt:reply:templates:rightToLeft
             "."))

      (save-excursion
        (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath-ltr $ephemeraMailingFilePath:ltr)))
        (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath-rtl $ephemeraMailingFilePath:rtl)))
        (message-sort-headers)
        )

      (org-dblock-update-buffer-bx)
      )

    $point
    ))

(defun mtdt:originate:orgMsg|plusSetup ()
  "Addition originate features.

"
  (message "mtdt:originate:orgMsg|plusSetup was triggered, likely from gnus-message-setup-hook")
  (when org-msg-mode
    (let* (
	   ($point)
	   )
      (setq $point (search-forward "--citation follows this line (read-only)--" nil t))
      (when $point
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:mtdt:content/actions")
        (insert "\n#+END:")
        (insert "\n"))

      (when (not $point)
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:mtdt:content/actions")
        (insert "\n#+END:")
        (insert "\n"))

      (org-dblock-update-buffer-bx)
    $point
    )))



(defun mtdt:mailing:baseDir|set (<baseDir)
  "Setup the specified ephemeraBaseDir for current unsent mailBuf."
  (setq default-directory <baseDir)
  (save-excursion
    (message-carefully-insert-headers (list (cons 'X-tmp-mailingPath <baseDir)))
    (message-sort-headers)
    )
  (mtdt:gnus:reply|orgHtmlDblockSetup)
  (mtdt:compose:ephemera|mailBufRecord <baseDir (current-buffer))
  )

(defun mtdt:gnus:reply|orgHtmlDblockSetup ()
  "Called ephermaBase has been selected.
Is idempotent."
  (message "mtdt:gnus:reply|orgHtmlDblockSetup Entered")
  (let* (
	 ($orgHtmlDblockPoint nil)
         ($citationLinePoint nil)
	 )
    (save-excursion
      (goto-char (point-min))
      (setq $orgHtmlDblockPoint
            (search-forward "#+BEGIN: bx:file-insert:org:html :file" nil t))
      )

    (unless $orgHtmlDblockPoint
      (save-excursion
        (goto-char (point-min))
        (setq $citationLinePoint
              (search-forward "--citation follows this line (read-only)--" nil t))
        )

      (when $citationLinePoint
        (goto-char $citationLinePoint)
        (forward-line -1)
        (insert "\n")
        (insert "\n#+BEGIN: bx:file-insert:org:html :file \"./rel/mailing-html/index.html\"")
        (insert "\n#+END:")
        (insert "\n")
        ))))


;;;(add-hook 'message-setup-hook 'mtdt:gnus:reply|ephemeraSetup)
;;;(remove-hook 'message-setup-hook 'mtdt:gnus:reply|ephemeraSetup)

(add-hook 'gnus-message-setup-hook 'mtdt:gnus:reply|ephemeraSetup 91)

;;;
;;; (mtdt:compose-mail/basic)
;;;
(defun mtdt:compose-mail/basic ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    ;;;

    (when org-msg-mode
      (message (s-lex-format "disabling orgMsg:: org-msg-mode was: ${org-msg-mode}"))
      (message (s-lex-format "before:: gnus-message-setup-hook was: ${gnus-message-setup-hook}"))
      (org-msg-mode -1)
      )
    (message (s-lex-format "gnus-message-setup-hook is: ${gnus-message-setup-hook}"))
    (compose-mail)
    ;;(setq gnus-message-setup-hook $gnus-message-setup-hook)
    ))

;;;
;;; (mtdt:compose-mail/orgMsg)
;;;
(defun mtdt:compose-mail/orgMsg ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    ;;; (message (s-lex-format "mailingParams: ${$mailingParams} extSrcBase ${<extSrcBase} $composeFwrk=${$composeFwrk}"))

    (when (not org-msg-mode)
      (message (s-lex-format "enabling orgMsg:: org-msg-mode was: ${org-msg-mode}"))
      (message (s-lex-format "before:: gnus-message-setup-hook was: ${gnus-message-setup-hook}"))
      (org-msg-mode)
      )
    (message (s-lex-format "gnus-message-setup-hook is: ${gnus-message-setup-hook}"))
    (compose-mail)
    ;;(setq gnus-message-setup-hook $gnus-message-setup-hook)
    ))

;;;
;;; (mtdt:compose-mail/selected)
;;;
(defun mtdt:compose-mail/selected ()
  "When org-msg mode is active, invoke compose-mail without it."
  (let* (
	 ($gnus-message-setup-hook gnus-message-setup-hook)
	 )
    (message (s-lex-format "org-msg-mode=${org-msg-mode}"))
    (compose-mail)
    ))


;;;
;;; (process-id (get-buffer-process (lsip-buffer-for-host "localhost")))
;;; (process-buffer (lsip-buffer-for-host "localhost"))
;;;
;; (defun mtdt:content:tex/buildReleaseAndMailBuf%% ()
;;   "Abandoned. Could not get it it to work.
;; Signal was not being seen by Sentinel.
;; Simpler version above works fine.
;; Needs to be revisited."
;;   (interactive)
;;   (message "From buildReleaseAndMailBuf -- Running: lcntProc.sh -v -n showRun -i buildResultsRelease; kill -SIGINT $$")
;;   (lsip-local-run-command-here "lcntProc.sh -v -n showRun -i buildResultsRelease; kill -SIGINT $$")
;;   (let* (
;;          ($shell-buffer (lsip-buffer-for-host "localhost"))
;;          ($shell-process (get-buffer-process $shell-buffer))
;;          )
;;     (message (format "%s" (process-command $shell-process)))
;;     (set-process-sentinel $shell-process 'mtdt:content:tex/buildSentinel)
;;     ;;;
;;     ;;; This is the signal that triggers the sentinel
;;     ;;; Rest happens in there
;;     (message (format "%s From buildReleaseAndMailBuf -- Running: kill -SIGINT $$" $shell-process))
;;     (sleep-for 1)
;;     (lsip-local-run-command-here "kill -SIGINT $$")
;;     (interrupt-process $shell-process)
;;   )))


;; (defun mtdt:bbdb:actions-placeHolder% (mailingName)
;;   "This is a place holder for now, to be sorted out later."
;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-compose-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:compose:start-family.fa-blank-basicText.fa)
;; 	    ))))


;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-toall-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:toall:start-family.fa-blank-basicText.fa)
;; 	    ))))

;;   (setq bbdb-action-alist
;; 	(append
;; 	 bbdb-action-alist
;; 	 '(("bxms-batch-start-family.fa-blank-basicText.fa"
;; 	    ;;
;; 	    (setq bbdb-action-hook nil)
;; 	    (add-hook 'bbdb-action-hook 'bxms:bbdb:batch:start-family.fa-blank-basicText.fa)
;; 	    ))))
;;   )

(provide 'mtdt-if)
