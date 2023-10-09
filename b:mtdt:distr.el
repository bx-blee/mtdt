;;; b:mtdt:distr.el --- Distribute a Mailing to Recepients  -*- lexical-binding: t; -*-

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
** This File: /bisos/git/auth/bxRepos/blee/mtdt/b:mtdt:distr.el
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

;;(require 'b:mtdt:recipients)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defgroup b:mtdt:distr nil
  "Blee MTDT Distributions Abstractions. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:distr:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

(defconst b:mtdt:distr:extent::compose "compose" "Compose but do not submit.")
(defconst b:mtdt:distr:extent::submit "submit" "Send/Submit the mailing.")

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyRecipientsToMailings" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyRecipientsToMailings>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyRecipientsToMailings (
;;;#+END:
                         &key
                         (mailings (list))
                         (to (list))
                         (cc (list))
                         (bcc (list))
                         (extent b:mtdt:distr:extent::compose)
                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailings= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless mailings
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailing named argument")))
     (else-when mailings
       (if-unless to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when to
         (dolist ($eachMailing mailings)
           (mtdt:setup-and-compose/with-file $eachMailing)
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
           (when (eq extent b:mtdt:distr:extent::submit)
             ;; send the email
             (org-ctrl-c-ctrl-c))
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipientsToMailings
    :mailing `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyCurRecipientsToMailings" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyCurRecipientsToMailings>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyCurRecipientsToMailings (
;;;#+END:
                         &key
                         (mailings (list))
                         (extent b:mtdt:distr:extent::compose)
                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailing= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($to (or (plist-get b:mtdt:recipients:cur :to) nil))
          ($cc (or (plist-get b:mtdt:recipients:cur :cc) nil))
          ($bcc (or (plist-get b:mtdt:recipients:cur :bcc) nil))
          )
     (b:mtdt:recipients|curUnSet)
     (if-unless mailings
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailing named argument")))
     (else-when mailings
       (if-unless $to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when $to
         (b:mtdt:distr|applyRecipientsToMailings
          :mailings mailings
          :to $to
          :cc $cc
          :bcc $bcc
          :extent extent
          )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyCurRecipientsToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyRecipientsCurSetListToMailings" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyRecipientsCurSetListToMailings>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyRecipientsCurSetListToMailings (
;;;#+END:
                         &key
                         (mailings (list))
                         (curSetForms (list))
                         (extent b:mtdt:distr:extent::compose)
                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailings= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless mailings
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailing named argument")))
     (else-when mailings
       (if-unless curSetForms
         (b::error $inHere
                   (s-lex-format
                    "Missing :curSetForms named argument")))
       (else-when curSetForms
         (dolist ($eachCurSetForm curSetForms)
           ;;(message (s-lex-format "${$eachCurSetForm}")
           (eval $eachCurSetForm)
           (b:mtdt:distr|applyCurRecipientsToMailings
            :mailings mailings
            :extent extent)
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipientsCurSetListToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :curSetForms exampleRecipientsCurSetList
  )
(b:mtdt:distr|applyRecipientsCurSetListToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :curSetForms b:temp22
  )
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyRecipientsCurSetFilesToMailings" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyRecipientsCurSetFilesToMailings>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyRecipientsCurSetFilesToMailings (
;;;#+END:
                         &key
                         (mailings (list))
                         (curSetFiles (list))
                         (extent b:mtdt:distr:extent::compose)
                        )
   " #+begin_org
** DocStr: Add recepients to each mailing and send it out.
=mailings= and =to= are mandatory. =cc= and =bcc= are optional.
Returns /nothing/.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "")
          ($curSetForms nil)
          )
     (if-unless mailings
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailings named argument")))
     (else-when mailings
       (if-unless curSetFiles
         (b::error $inHere
                   (s-lex-format
                    "Missing :curSetFiles named argument")))
       (else-when curSetFiles
         (dolist ($eachCurSetFile curSetFiles)
           (setq $curSetForms (b:eval-file $eachCurSetFile))
           (b:mtdt:distr|applyRecipientsCurSetListToMailings
            :mailings mailings
            :curSetForms $curSetForms
            :extent extent)
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipientsCurSetFilesToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :curSetFiles `(,(symbol-name './examples/exampleRecipientsList.el))
  )
#+END_SRC
" orgCmntEnd)




;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:distr)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
