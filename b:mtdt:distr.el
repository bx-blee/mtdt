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

(defvar b:mtdt:distr:recipsFormsSelected
  (list)
  "Selected recipsForms. A list of forms, each of which represents recipients.")

(defvar b:mtdt:distr:recipsFormsFileSelected
  nil
  "Selected recipsFormsFile. A list of forms, each of which represents recipients.")


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyRecipsFormsToMailingFiles" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyRecipsFormsToMailingFiles>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyRecipsFormsToMailingFiles (
;;;#+END:
                                                       &key
                                                       (mailingFiles (list))
                                                       (recipsForms (list))
                                                       (extent b:mtdt:send:extent::promptSend)
                                                       )
   " #+begin_org
** DocStr:
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (if-unless mailingFiles
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailing named argument")))
     (else-when mailingFiles
       (if-unless recipsForms
         (b::error $inHere
                   (s-lex-format
                    "Missing :recipsForms named argument")))
       (else-when recipsForms
         (dolist ($eachRecipsForm recipsForms)
           ;;(message (s-lex-format "${$eachCurSetForm}")
           (eval $eachRecipsForm)
           (b:mtdt:send|applySelRecipientsToMailingFiles
            :mailingFiles mailingFiles
            :extent extent)
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipientsCurSetListToMailings
    :mailingFile `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :recipsForms exampleRecipientsCurSetList
  )
(b:mtdt:distr|applyRecipientsCurSetListToMailings
    :mailings `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :curSetForms b:temp22
  )
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:distr|applyRecipientsRecipsFormsFilesToMailingFiles" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:distr|applyRecipientsRecipsFormsFilesToMailingFiles>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:distr|applyRecipsFormsFilesToMailingFiles (
;;;#+END:
                                                            &key
                                                            (mailingFiles (list))
                                                            (recipsFormsFiles (list))
                                                            (extent b:mtdt:send:extent::promptSend)
                                                            )
   " #+begin_org
** DocStr:
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($recipsForms nil)
          )
     (if-unless mailingFiles
       (b::error $inHere
                 (s-lex-format
                  "Missing :mailingFiles named argument")))
     (else-when mailingFiles
       (if-unless recipsFormsFiles
         (b::error $inHere
                   (s-lex-format
                    "Missing :recipsFormsFiles named argument")))
       (else-when recipsFormsFiles
         (dolist ($eachRecipsFormsFiles recipsFormsFiles)
           (setq $recipsForms (b:eval-file $eachRecipsFormsFiles))
           (b:mtdt:distr|applyRecipsFormsToMailingFiles
            :mailingFiles mailingFiles
            :recipsForms $recipsForms
            :extent extent)
           )))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:distr|applyRecipsFormsFilesToMailingFiles
    :mailingFiles `(,(symbol-name '/bxo/r3/iso/piu_mbFullUsage/mailings/compose/com/gmail/mohsen.banan.byname/from/org/content.msgOrg))
    :recipsFormsFiles `(,(symbol-name './examples/exampleRecipientsList.el))
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
