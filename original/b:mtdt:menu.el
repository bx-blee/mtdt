;;; b:mtdt:menu.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary:
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/proclamations :outLevel 1
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/git/auth/bxRepos/blee/mtdt/b:email.el
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* /[[elisp:(org-cycle)][| Description |]]/ :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/COMEEGA/_nodeBase_/fullUsagePanel-en.org][BISOS COMEEGA Panel]]
Module description comes here.
** Relevant Pointers and Panels:
** Status: In use with blee3
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO improvement comes here.
" orgCmntEnd)

;;;#+BEGIN: b:prog:file/orgTopControls :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/workbench :outLevel 1
(orgCmntBegin "
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(setq debug t)][debug-on-err]]  [[elisp:(setq  debug nil)][dont debug-on-err]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'easymenu)
;;(require 'mtdt-if)


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defgroup b:mtdt:menu nil
  "Blee mtdt menu Library. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:menu:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:plugin|install" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:plugin|install>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:plugin|install (
;;;#+END:
                                   <menuLabel
                                   <menuDelimiter
                                   )
  " #+begin_org
** DocStr: Adds this as a submenu to menu labeled =<menuLabel= at specified delimited =<menuDelimiter=.
#+end_org "

  ;; Determine starting value of b:mtdt:compose:fashion
  ;;(setq  b:mtdt:compose:fashion b:mtdt:compose:fashion::basic)
  (setq  b:mtdt:compose:fashion b:mtdt:compose:fashion::orgMsg)

  (when org-msg-mode
    (setq  b:mtdt:compose:fashion b:mtdt:compose:fashion::orgMsg))
  (b:mtdt:compose:fashion/setup b:mtdt:compose:fashion)

  (easy-menu-add-item
   <menuLabel
   nil
   (b:mtdt:menu:main|define :active t)
   <menuDelimiter
   )
  )

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:menu:plugin|install modes:menu:global (s-- 2))
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|setup-withCurBuffer" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|setup-withCurBuffer>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|setup-withCurBuffer (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(format "MTDT Setup/Derive With Current Buffer")
      (mtdt:setup/with-curBuffer)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|bbdb3" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|bbdb3>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|bbdb3 (
;;;#+END:
                                 )
  " #+begin_org
** DocStr: Return b:mtdt:menu:sendExtentSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $menuItem|selRecordAsSelRecipients ()
      (nth 0
       `(
         [,(s-lex-format "Set Selected BBDB Record As Selected Recipients")
          (b:mtdt:bbdb3/selRecordAsSelRecipients)
          :help "Set Selected BBDB Record As Selected Recipients"
          ])))

    (defun $menuItem|allRecordsAsSelRecipients ()
      (nth 0
       `(
         [,(s-lex-format "Set All BBDB Records As Selected To: Recipients")
          (b:mtdt:bbdb3/allRecordsAsSelRecipients)
          :help "Set All BBDB Records As Selected To: Recipients"
          ])))

    (defun $menuItem|bbdbPopUpOtherWin ()
      (nth 0
       `(
         [,(s-lex-format "Pop Up *BDBD* buffer other window")
          (b:bbdb3/popUpOtherWin)
          :help "Pop Up *BDBD* buffer other window"
          ])))

    (defun $menuItem|namesCapture ()
      (nth 0
       `(
         [,(s-lex-format "Capture Names of *BBDB* in a temp buffer")
          (b:mtdt:bbdb3/namesCapture)
          :help "Capture names of *BBDB* in a temp buffer"
          ])))

    (defun $menuItem|visitNamesCaptureBuf ()
      (nth 0
       `(
         [,(s-lex-format "Visit Names Capture Buffer")
          (switch-to-buffer-other-window b:mtdt:bbdb3:namesCaptureBuf)
          :help "Visit Names Capture Buffer"
          ])))

    (defun $menuItem|recipsCapture ()
      (nth 0
       `(
         [,(s-lex-format "Capture Names of *BBDB* as Recips and select file")
          (b:mtdt:bbdb3/recipsFileSelect)
          :help "Capture Names of *BBDB* as Recips and select file"
          ])))

    (defun $menuItem|visitRecipsCaptureFile ()
      (nth 0
       `(
         [,(s-lex-format "Visit Recips Capture File")
          (find-file b:mtdt:bbdb3:namesCaptureRecipsFile)
          :help "Visit Recips Capture File"
          ])))

    (easy-menu-define
      b:mtdt:menu:bbdb3
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "With BBDB Select MTDT Recipients"))
	:help "With BBDB Select MTDT Recipients"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|selRecordAsSelRecipients) (s-- 3))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|allRecordsAsSelRecipients) (s-- 3))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|bbdbPopUpOtherWin) (s-- 4))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|namesCapture) (s-- 5))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|visitNamesCaptureBuf) (s-- 5))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|recipsCapture) (s-- 6))
    (easy-menu-add-item b:mtdt:menu:bbdb3 nil ($menuItem|visitRecipsCaptureFile) (s-- 6))

    (easy-menu-add-item
     b:mtdt:menu:bbdb3
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 9))

    'b:mtdt:menu:bbdb3
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|bbdb3)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|bbdb3)))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|names" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|names>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|names (
;;;#+END:
                                 )
  " #+begin_org
** DocStr: Return b:mtdt:menu:sendExtentSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $menuItem|processBufferForBbdbRecip ()
      (nth 0
       `(
         [,(s-lex-format "processBufferForBbdbRecip")
          (b:mtdt:names/processBufferForBbdbRecip)
          :help "processBufferForBbdbRecip"
          :active t
          :visible t
          ]
         )))

    (defun $menuItem|processBufferForAddrRecip ()
      (nth 0
       `(
         [,(s-lex-format "processBufferForAddrRecip")
          (b:mtdt:names/processBufferForAddrRecip)
          :help "processBufferForAddrRecip"
          :active t
          :visible t
          ]
         )))

    (defun $menuItem|setBufferToRecipsFormsFile ()
      (nth 0
       `(
         [,(s-lex-format "setBufferToRecipsFormsFile")
          (b:mtdt:distr|curBufAsRecipsFormsFileSelected)
          :help "setBufferToRecipsFormsFile"
          :active t
          :visible t
          ]
         )))

    (easy-menu-define
      b:mtdt:menu:names
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Names And RecipsForms Buffer Commands"))
	:help "With BBDB Select MTDT Recipients"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    (easy-menu-add-item b:mtdt:menu:names nil ($menuItem|processBufferForAddrRecip) (s-- 3))
    (easy-menu-add-item b:mtdt:menu:names nil ($menuItem|processBufferForBbdbRecip) (s-- 4))
    (easy-menu-add-item b:mtdt:menu:names nil ($menuItem|setBufferToRecipsFormsFile) (s-- 5))

    (easy-menu-add-item
     b:mtdt:menu:names
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:names
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|names)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|names)))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|distr" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|distr>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|distr (
;;;#+END:
                                 )
  " #+begin_org
** DocStr:
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $menuItem|selMailingDistribute ()
      (nth 0
           `(
             [,(s-lex-format "Distribute SelectedMailing to SelRecipsFormsFile with ${b:mtdt:send:extent}")
              (b:mtdt:distr/selMailingToSelRecipsFormsFile)
              :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
              ])))

    (easy-menu-define
      b:mtdt:menu:distr
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "Distribution of Selected Mailing and RecipsForms with ${b:mtdt:send:extent}"))
	:help "Distribution of Selected Mailing and RecipsForms with"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    (easy-menu-add-item b:mtdt:menu:distr nil ($menuItem|selMailingDistribute) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:distr
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:distr
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|names)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|distr)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|logs" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|logs>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|logs (
;;;#+END:
                                 )
  " #+begin_org
** DocStr:
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun $menuItem|visitSentLogsFile ()
      (nth 0
           `(
             [,(s-lex-format "View and Process MTDT Log Files")
              (find-file-read-only "/bxo/usg/bystar/bpos/usageEnvs/fullUse/blee/mailings/logs/mailings.sent")
              :help "View and Process MTDT Log Files"
              ])))

    (easy-menu-define
      b:mtdt:menu:logs
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "View and Process MTDT Log Files"))
	:help "View and Process MTDT Log Files"
	,(s-- 3)
	,(s-- 4)
	,(s-- 5)
	,(s-- 6)
	,(s-- 7)
	,(s-- 8)
	,(s-- 9)
	))

    (easy-menu-add-item b:mtdt:menu:logs nil ($menuItem|visitSentLogsFile) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:logs
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:logs
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|logs)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|logs)))
#+END_SRC
" orgCmntEnd)


(defun b:mtdt:send:extent/setup (<fashion)
  "Based on <fashion, set things up for sending control."
  (cond
   ((eq <fashion  b:mtdt:send:control::basic)
    (setq b:mtdt:compose:fashion <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   ((eq <fashion  b:mtdt:compose:fashion::orgMsg)
    (setq b:mtdt:compose:fashion <fashion)
    (when (not org-msg-mode)
      (org-msg-mode)))
   ((eq <fashion  b:mtdt:compose:fashion::latex)
    (setq b:mtdt:compose:fashion <fashion)
    (when org-msg-mode
      (org-msg-mode -1)))
   (t
    (error "Bad input"))
   ))




;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|sendExtentSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|sendExtentSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|sendExtentSelect (
;;;#+END:
                                            )
  " #+begin_org
** DocStr: Return b:mtdt:menu:sendExtentSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:send:extent -- ${b:mtdt:send:extent}")
          (describe-variable 'b:mtdt:send:extent)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          ])))

    (defun selections ()
      "Static Selections"
      '(
        b:mtdt:send:extent::doSend
        b:mtdt:send:extent::promptSend
        ))

    (easy-menu-define
      b:mtdt:menu:sendExtentSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select/Describe: b:mtdt:send:extent -- ${b:mtdt:send:extent}"))
       (list :help "Send Extent is one of sendIt or promptSend")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Set b:mtdt:send:extent to ${<each}")
			 `(b:mtdt:send:extent|set ,<each)
			   :help (s-lex-format "Set b:mtdt:send:extent to ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:sendExtentSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:sendExtentSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:sendExtentSelect
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|sendExtentSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|sendExtentSelect)))
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|selMailingSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|selMailingSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|selMailingSelect (
;;;#+END:
                                            )
  " #+begin_org
** DocStr: Return b:mtdt:menu:curMailingSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:mailings:selected -- ${b:mtdt:mailings:selected}")
          (describe-variable 'b:mtdt:mailings:selected)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          ])))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:compose/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:curMailingSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select b:mtdt:mailings:selected= ${b:mtdt:mailings:selected}"))
       (list :help "Selected Mailing can be set in a variety of ways.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 `(b:mtdt:mailings|select '(,<each))
			   :help (s-lex-format "Set b:mtdt:mailings:selected to ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:curMailingSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:curMailingSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:curMailingSelect
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|selMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|selMailingSelect)))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:define|derivedMailingInvoke" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:define|derivedMailingInvoke>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:define|derivedMailingInvoke (
;;;#+END:
                                                )
  " #+begin_org
** DocStr: Return b:mtdt:menu:curMailingSelect
#+end_org "
  (let (
	($thisFuncName (compile-time-function-name))
	)

    (defun describeMenuItem ()
      (nth 0
       `(
         [,(s-lex-format "Describe b:mtdt:mailings:selected -- ${b:mtdt:mailings:selected}")
          (describe-variable 'b:mtdt:mailings:selected)
          :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
          :active t
          :visible t
          ]
         )))

    (defun selections ()
      "Dynamic Selections"
      (apropos-internal "b:mtdt:compose/" 'commandp))

    (easy-menu-define
      b:mtdt:menu:curMailingSelect
      nil
      ""
      (append
       `(,(s-lex-format "Select and Invoke Derived Mailing"))
       (list :help "Applies to derived mailings.")
       (list (s-- 3))
       (list (s-- 4))
       (mapcar (lambda (<each)
		 (vector (s-lex-format "Invoke Mailing: ${<each}")
			 `(funcall #'b:mtdt:mailings|framedComposeWithFn ',<each)
			   :help (s-lex-format "Invoke Derived Mailing: ${<each}")
			 ))
	       (selections))
       (list (s-- 5))
       (list (s-- 6))
       ))

    (easy-menu-add-item b:mtdt:menu:curMailingSelect nil (describeMenuItem) (s-- 3))

    (easy-menu-add-item
     b:mtdt:menu:curMailingSelect
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 5))

    'b:mtdt:menu:curMailingSelect
    ))


(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:define|selMailingSelect)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:define|derivedMailingInvoke)))
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selRecipsDescribe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selRecipsDescribe>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selRecipsDescribe (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (let* (
         ($selectedStr (s-right 50 (s-lex-format "${b:mtdt:recipients:selected}")))
         )
    (nth 0
         `(
           [,(s-lex-format "Selected Recips b:mtdt:recipients:selected = ${$selectedStr}")
            (describe-variable 'b:mtdt:recipients:selected)
            :help "There are various different ways of setting b:mtdt:recipients:selected"
            ]))))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selRecipsFormsDescribe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selRecipsFormsDescribe>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selRecipsFormsDescribe (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Selected Dist  Recips b:mtdt:distr:recipsFormsSelected = ${b:mtdt:distr:recipsFormsSelected}")
      (describe-variable 'b:mtdt:distr:recipsFormsSelected)
      :help "There are various different ways of setting b:mtdt:distr:recipsFormsSelected"
      ])))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selRecipsFormsFileDescribe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selRecipsFormsFileDescribe>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selRecipsFormsFileDescribe (
;;;#+END:
                                                   )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (let* (
         ($selectedStr (s-right 50 b:mtdt:distr:recipsFormsFileSelected))
         )
    (nth 0
         `(
           [,(s-lex-format "Selected Dist Recips b:mtdt:distr:recipsFormsFileSelected = ${$selectedStr}")
            (describe-variable 'b:mtdt:distr:recipsFormsFileSelected)
            :help "There are various different ways of setting b:mtdt:distr:recipsFormsFileSelected"
            ]))))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailingCompose" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailingCompose>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailingCompose (
;;;#+END:
                                                 )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Compose ${b:mtdt:mailings:selected}")
      (b:mtdt:mailings|framedComposeWithFn b:mtdt:mailings:selected)
      :help "Compose with selected mailing"
      ])))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailingOriginate" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailingOriginate>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailingOriginate (
;;;#+END:
                                        )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Originate ${b:mtdt:mailings:selected}")
      (b:mtdt:mailings|framedComposeWithFn b:mtdt:mailings:selected)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailingSend" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailingSend>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailingSend (
;;;#+END:
                                              )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Send SelectedMailing to SelectedRecips with ${b:mtdt:send:extent}")
      (b:mtdt:send/selMailingToSelRecips)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menuItem:define|selMailingDistribute" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menuItem:define|selMailingDistribute>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menuItem:define|selMailingDistribute (
;;;#+END:
                                              )
  " #+begin_org
** DocStr: Return a menuItem vector. Requires dynamic update.
#+end_org "
  (nth 0
   `(
     [,(s-lex-format "Distribute SelectedMailing to SelRecipsFormsFile with ${b:mtdt:send:extent}")
      (b:mtdt:distr/selMailingToSelRecipsFormsFile)
      :help "Mail Composition Distribution and Tracking (MTDT) Setup With Current Buffer -- (mtdt:setup/with-curBuffer)"
      ])))


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:menu:main|define" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:menu:main|define>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:menu:main|define (
;;;#+END:
                                &rest <namedArgs
                                      )
  " #+begin_org
** DocStr: Return b:mtdt:menu:main
:active and :visible can be specified as <namedArgs.
#+end_org "
  (let (
	(<visible (get-arg <namedArgs :visible t))
	(<active (get-arg <namedArgs :active t))
	($thisFuncName (compile-time-function-name))
	)

    (easy-menu-define
      b:mtdt:menu:main
      nil
      "DocStr of this menu --"
      `(,(format (s-lex-format "MTDT Menu -- Compose Framework:: ${b:mtdt:compose:fashion}"))
	:help "MTDT (Mail Templating Distribution and Tracking"
	:visible ,<visible
	:active ,<active
	,(s-- 2)
	[
	,(format (s-lex-format "Describe Compose Framework:: ${b:mtdt:compose:fashion}"))
	  (describe-variable 'b:mtdt:compose:fashion)
	  :help "Describe current value of b:mtdt:compose:fashion"
	  :active t
	  :visible t
	  ]
	,(s-- 3)
	 [
	  "Basic"
	  (b:mtdt:compose:fashion/setup b:mtdt:compose:fashion::basic)
	  :help "Select basic composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:mtdt:compose:fashion b:mtdt:compose:fashion::basic)
	  ]
	 [
	  "OrgMsg"
	  (b:mtdt:compose:fashion/setup b:mtdt:compose:fashion::orgMsg)
	  :help "Select orgMsg composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose:fashion b:mtdt:compose:fashion::orgMsg)
	  ]
	 [
	  "LaTeX"
	  (b:mtdt:compose:fashion/setup  b:mtdt:compose:fashion::latex)
	  :help "Select latex composition fashion."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:compose:fashion b:mtdt:compose:fashion::latex)
	  ]
	 ,(s-- 3)
         [
	,(format (s-lex-format "Describe Compose Framework:: ${b:mtdt:compose:fashion}"))
	  (describe-variable 'b:mtdt:compose:fashion)
	  :help "Describe current value of b:mtdt:compose:fashion"
	  :active t
	  :visible t
	  ]
	,(s-- 4)
	 [
	  "unsentBuffer (promptSend)"
	  (b:mtdt:send:extent|set b:mtdt:send:extent::promptSend)
	  :help "Select promptSend."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq  b:mtdt:send:extent b:mtdt:send:extent::promptSend)
	  ]
	 [
	  "send (doSend)"
	  (b:mtdt:send:extent|set b:mtdt:send:extent::doSend)
	  :help "Select doSend."
	  :active t
	  :visible t
	  :style radio
	  :selected ,(eq b:mtdt:send:extent b:mtdt:send:extent::doSend)
	  ]
	 ,(s-- 5)
	 ,(s-- 6)
	 ,(s-- 7)
	 ,(s-- 8)
	 ,(s-- 9)
	 ,(s-- 10)
	 ,(s-- 11)
	 ))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menu:define|derivedMailingInvoke)
                        (s-- 2))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menuItem:define|setup-withCurBuffer)
                        (s-- 5))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menu:define|bbdb3)
                        (s-- 6))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menuItem:define|setup-withCurBuffer)
                        (s-- 6))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menu:define|sendExtentSelect)
                       (s-- 7))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menu:define|selMailingSelect)
                       (s-- 7))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menuItem:define|selRecipsDescribe)
                       (s-- 7))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menuItem:define|selRecipsFormsDescribe)
                       (s-- 7))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menuItem:define|selRecipsFormsFileDescribe)
                       (s-- 7))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menuItem:define|selMailingCompose)
                        (s-- 8))


    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menuItem:define|selMailingOriginate)
                        (s-- 8))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menuItem:define|selMailingSend)
                        (s-- 8))

    (easy-menu-add-item b:mtdt:menu:main nil
                        (b:mtdt:menu:define|distr)
                        (s-- 8))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menu:define|names)
                       (s-- 9))

    (easy-menu-add-item b:mtdt:menu:main nil
                       (b:mtdt:menu:define|logs)
                       (s-- 10))

    (easy-menu-add-item
     b:mtdt:menu:main
     nil
     (bx:menu:panelAndHelp|define
      "/bisos/panels/blee-core/mail/_nodeBase_"
      $thisFuncName
      (intern (symbol-name (gensym))))
     (s-- 11))

    'b:mtdt:menu:main
    ))

(orgCmntBegin "
** Basic Usage:
[[elisp:(popup-menu (symbol-value (b:mtdt:menu:main|define)))][This menu as an org link]]
#+BEGIN_SRC emacs-lisp
(popup-menu (symbol-value (b:mtdt:menu:main|define)))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:menu)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
