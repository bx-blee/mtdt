;;; b:mtdt:send.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defgroup b:mtdt:send nil
  "Blee BBDB3 Library. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:send:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

(defconst b:mtdt:send:extent::doSend "doSend" "Send/Submit the mailing. Does not prompt, just send it.")
(defconst b:mtdt:send:extent::promptSend "promptSend" "Compose but do not submit. Prompt before sending.")

(defvar b:mtdt:send:extent
  b:mtdt:send:extent::promptSend
  "Selected Send Extent.")


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:send:extent|set" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send:extent|set>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:send:extent|set (
;;;#+END:
                               <sendExtent
                               )
  " #+begin_org
** DocStr: Get the first email address for =<nameStr= if it is unique.
Return 'No Records' if =<nameStr=  is not found.
Return 'Nu of Records=' if multiple records are found for =<nameStr=.
#+end_org "
  (interactive)
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result <sendExtent)
          )
     (setq b:mtdt:send:extent <sendExtent)
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send:extent|set b:mtdt:send:extent::promptSend)
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:send|basedOnFrwrk" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|basedOnFrwrk>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:send|basedOnFrwrk (
;;;#+END:
                                 )
  " #+begin_org
** DocStr:
#+end_org "
  (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
    (cond ((string-equal "org-msg-edit-mode" major-mode)
           (org-ctrl-c-ctrl-c)
           )
	((string-equal "mail-mode" major-mode)
         (mail-send-and-exit)
         )
	((string-equal "message-mode" major-mode)
         (message-send-and-exit)
         )
        (t
         (user-error (s-lex-format "${$inHere} -- Unexpected mode"))
         ))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send:extent|set b:mtdt:send:extent::promptSend)
#+END_SRC

#+RESULTS:
: promptSend

" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applyRecipientsToMailingFiles" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applyRecipientsToMailingFiles>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applyRecipientsToMailingFiles (
;;;#+END:
                                                     &key
                                                     (mailingFiles (list))
                                                     (to (list))
                                                     (cc (list))
                                                     (bcc (list))
                                                     (extent b:mtdt:send:extent::promptSend)
                                                     )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailings= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless mailingFiles
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailing named argument")))
     (else-when mailingFiles
       (if-unless to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when to
         (dolist ($eachMailing mailingFiles)
           (b:mtdt:setup-and-compose/with-file $eachMailing)
           (dolist ($eachRecipient to)
             (mail-to)
             (b:email:address|insert $eachRecipient)
             )
           (dolist ($eachRecipient cc)
             (mail-cc)
             (b:email:address|insert $eachRecipient)
             )
           (dolist ($eachRecipient bcc)
             (mail-bcc)
             (b:email:address|insert $eachRecipient)
             )
           (when (eq extent b:mtdt:send:extent::doSend)
             ;; send the email
             (b:mtdt:send|basedOnFrwrk))
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send|applyRecipientsToMailingFiles
    :mailingFiles `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applyRecipientsToMailingFns" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applyRecipientsToMailingFns>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applyRecipientsToMailingFns (
;;;#+END:
                                                     &key
                                                     (mailingFns (list))
                                                     (to (list))
                                                     (cc (list))
                                                     (bcc (list))
                                                     (extent b:mtdt:send:extent::promptSend)
                                                     )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailings= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless mailingFns
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailingFns named argument")))
     (else-when mailingFns
       (if-unless to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when to
         (dolist ($eachMailing mailingFns)
           (when (eq extent b:mtdt:send:extent::doSend)
             (call-interactively  $eachMailing))
           (when (eq extent b:mtdt:send:extent::promptSend)
             (b:mtdt:mailings|framedComposeWithFn $eachMailing))
           (dolist ($eachRecipient to)
             (mail-to)
             (b:email:address|insert $eachRecipient)
             )
           (dolist ($eachRecipient cc)
             (mail-cc)
             (b:email:address|insert $eachRecipient)
             )
           (dolist ($eachRecipient bcc)
             (mail-bcc)
             (b:email:address|insert $eachRecipient)
             )
           (when (eq extent b:mtdt:send:extent::doSend)
             ;; send the email
             (b:mtdt:send|basedOnFrwrk)
           ))))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipientsToMailings
    :mailing `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applySelRecipientsToMailingFilesDeSel" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applySelRecipientsToMailingFilesDeSel>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applySelRecipientsToMailingFilesDeSel (
;;;#+END:
                                                        &key
                                                        (mailingFiles (list))
                                                        (extent b:mtdt:send:extent::promptSend)
                                                        )
   " #+begin_org
** DocStr: DeSelect and b:mtdt:send|applySelRecipientsToMailingFiles
#+end_org "
   (b:mtdt:recipients|deSelect)
   (b:mtdt:send|applySelRecipientsToMailingFiles
    :mailingFiles mailingFiles
    :extent extent))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send|applySelRecipientsToMailingFiles
    :mailingFiles `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
  )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applySelRecipientsToMailingFiles" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applySelRecipientsToMailingFiles>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applySelRecipientsToMailingFiles (
;;;#+END:
                                                        &key
                                                        (mailingFiles (list))
                                                        (extent b:mtdt:send:extent::promptSend)
                                                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailing= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($to (or (plist-get b:mtdt:recipients:selected :to) nil))
          ($cc (or (plist-get b:mtdt:recipients:selected :cc) nil))
          ($bcc (or (plist-get b:mtdt:recipients:selected :bcc) nil))
          )
     (if-unless mailingFiles
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailingFiles named argument")))
     (else-when mailingFiles
       (if-unless $to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when $to
         (b:mtdt:send|applyRecipientsToMailingFiles
          :mailingFiles mailingFiles
          :to $to
          :cc $cc
          :bcc $bcc
          :extent extent
          )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send|applySelRecipientsToMailingFiles
    :mailingFiles `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applySelRecipientsToMailingFnsDeSel" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applySelRecipientsToMailingFnsDeSel>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applySelRecipientsToMailingFnsDeSel (
;;;#+END:
                                                        &key
                                                        (mailingFns (list))
                                                        (extent b:mtdt:send:extent::promptSend)
                                                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailing= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (b:mtdt:recipients|deSelect)
   (b:mtdt:send|applySelRecipientsToMailingFns
    :mailingFns mailingFns
    :extent extent))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send|applySelRecipientsToMailingFiles
    :mailingFiles `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:send|applySelRecipientsToMailingFns" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send|applySelRecipientsToMailingFns>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:send|applySelRecipientsToMailingFns (
;;;#+END:
                                                        &key
                                                        (mailingFns (list))
                                                        (extent b:mtdt:send:extent::promptSend)
                                                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailing= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($to (or (plist-get b:mtdt:recipients:selected :to) nil))
          ($cc (or (plist-get b:mtdt:recipients:selected :cc) nil))
          ($bcc (or (plist-get b:mtdt:recipients:selected :bcc) nil))
          )
     (if-unless mailingFns
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailingFns named argument")))
     (else-when mailingFns
       (if-unless $to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when $to
         (b:mtdt:send|applyRecipientsToMailingFns
          :mailingFns mailingFns
          :to $to
          :cc $cc
          :bcc $bcc
          :extent extent
          )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applySelRecipientsToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:send/selMailingToSelRecips" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:send/selMailingToSelRecips>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:send/selMailingToSelRecips (
;;;#+END:
                                          )
  " #+begin_org
** DocStr:
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless b:mtdt:mailings:selected
       (b::error $inHere
                 (s-lex-format
                  "Bad Usage: b:mtdt:mailings:selected is nil")))
     (if-when b:mtdt:mailings:selected
        (if-unless b:mtdt:recipients:selected
          (b::error $inHere
                    (s-lex-format
                     "Bad Usage: b:mtdt:recipients:selected is nil")))
        (if-when b:mtdt:mailings:selected
          (b:mtdt:send|applySelRecipientsToMailingFns
           :mailingFns b:mtdt:mailings:selected
           :extent b:mtdt:send:extent
          )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:send/selMailingToSelRecips)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:send)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
