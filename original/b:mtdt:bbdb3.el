;;; b:mtdt:bbdb3.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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


(defgroup b:mtdt:bbdb3 nil
  "Blee BBDB3 Library. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:bbdb3:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

(defvar b:mtdt:bbdb3:namesCaptureBuf
  "*bbdb3NamesCapture*"
  "Name of buffer in which bbdb names are kept.")

(defvar b:mtdt:bbdb3:namesCaptureRecipsFile
  "/tmp/bbdb3NamesCaptureRecips.el"
  "Name of file in which bbdb names and addresses are kept as Recips.")

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:bbdb3|addrForNameGet" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:bbdb3|addrForNameGet>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:bbdb3|addrForNameGet (
;;;#+END:
                                    <nameStr
                                    )
  " #+begin_org
** DocStr: Get the first email address for =<nameStr= if it is unique.
Return 'No Records' if =<nameStr=  is not found.
Return 'Nu of Records=' if multiple records are found for =<nameStr=.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result "No Records")
          ($records)
          ($emailAddrs)
          ($firstEmailAddr)
          ($nuOfRecords)
          )
     (setq $records (bbdb-search (bbdb-records) :name <nameStr))
     (setq $nuOfRecords (length $records))
     (cond
      ((equal $nuOfRecords 0)
       (setq $result "No Records")
       )
      ((equal $nuOfRecords 1)
       (loop-for-each eachRecord $records
         (setq $emailAddrs (bbdb-record-field eachRecord 'mail))
         (setq $result (nth 0 $emailAddrs)))
       )
      (t
       (setq $result (s-lex-format "Nu of Records=${$nuOfRecords} for ${<nameStr}"))
       ))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:bbdb3|addrForNameGet (symbol-name 'BadName))
;;(b:mtdt:bbdb3|addrForNameGet (symbol-name 'Other))
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:bbdb3/namesCapture" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:bbdb3/namesCapture>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:bbdb3/namesCapture (
;;;#+END:
                                     &key
                                     (clear nil)
                                     )
  " #+begin_org
** DocStr:
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($records)
          ($nameField)
          )
     (setq $records (b:bbdb3|subjectRecords))
     (get-buffer-create b:mtdt:bbdb3:namesCaptureBuf)
     (switch-to-buffer-other-window b:mtdt:bbdb3:namesCaptureBuf)
     (when clear
       (erase-buffer))
     (loop-for-each eachRecord $records
       (setq $nameField (bbdb-record-field (nth 0 eachRecord) 'name))
       (insert (s-lex-format "${$nameField}\n"))
       )
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:bbdb3/namesCapture)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:bbdb3/recipsFileSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:bbdb3/recipsFileSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:bbdb3/recipsFileSelect (
;;;#+END:
                                      )
  " #+begin_org
** DocStr: Clear b:mtdt:bbdb3:namesCaptureBuf, b:mtdt:bbdb3/namesCapture, convert to Recips, Save and Select.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (b:mtdt:bbdb3/namesCapture :clear t)
     (b:mtdt:distr|recipsFormsFileSelect
      (b:mtdt:names/processBufferForAddrRecip :recipsFile  b:mtdt:bbdb3:namesCaptureRecipsFile)
      )
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:bbdb3/namesCapture)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bbdb3|subjectRecords" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bbdb3|subjectRecords>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bbdb3|subjectRecords (
;;;#+END:
                               )
  " #+begin_org
** DocStr: All the records in *BBDB* buffer.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (with-current-buffer bbdb-buffer-name
       bbdb-records)))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:bbdb3|subjectRecords)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bbdb3|subjectRecordsCurrent" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bbdb3|subjectRecordsCurrent>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bbdb3|subjectRecordsCurrent (
;;;#+END:
                               )
  " #+begin_org
** DocStr: The selected record in *BBDB*
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (with-current-buffer bbdb-buffer-name
       (bbdb-current-record))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:bbdb3|subjectRecordsCurrent)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:bbdb3/popUpOtherWin" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:bbdb3/popUpOtherWin>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:bbdb3/popUpOtherWin (
;;;#+END:
                               )
  " #+begin_org
** DocStr: The selected records in *BBDB*
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          )
     (switch-to-buffer-other-window bbdb-buffer-name)))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:bbdb3/popUpOtherWin)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:bbdb3/selRecordAsSelRecipients" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:bbdb3/selRecordAsSelRecipients>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:bbdb3/selRecordAsSelRecipients (
;;;#+END:
                                              )
  " #+begin_org
** DocStr: Set current record as b:mtdt:recipients|selectForce.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($selRecord (b:bbdb3|subjectRecordsCurrent))
          ($emailAddrs)
          ($bbdbName)
          )
     (setq $emailAddrs (nth 0 (bbdb-record-field $selRecord 'mail)))
     (setq $bbdbName (bbdb-record-field $selRecord 'name))
     (b:mtdt:recipients|selectForce
      :to (list (s-lex-format "${$bbdbName} <${$emailAddrs}>"))
      )
     (message (s-lex-format "Selected Recips -- To: ${$bbdbName} <${$emailAddrs}>"))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:bbdb3/selRecordAsSelRecipients)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/defun :defName "b:mtdt:bbdb3/allRecordsAsSelRecipients" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  defun      [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:bbdb3/allRecordsAsSelRecipients>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(defun b:mtdt:bbdb3/allRecordsAsSelRecipients (
;;;#+END:
                                              )
  " #+begin_org
** DocStr: Set current record as b:mtdt:recipients|selectForce.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($records (b:bbdb3|subjectRecords))
          ($emailAddrs)
          ($emailAddr)
          ($bbdbName)
          ($tosList (list))
          )
     (loop-for-each $eachRecord $records
       (setq $emailAddrs (bbdb-record-field (nth 0 $eachRecord) 'mail))
       (when $emailAddrs
         (setq $emailAddr (nth 0 $emailAddrs))
         (setq $bbdbName (bbdb-record-field (nth 0 $eachRecord) 'name))
         (setq $tosList (append
                         $tosList
                         (list (s-lex-format "${$bbdbName} <${$emailAddr}>"))))))
     (b:mtdt:recipients|selectForce :to $tosList)
     ))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:bbdb3/allRecordsAsSelRecipients)
#+END_SRC

#+RESULTS:
: No Records

" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:bbdb3)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
