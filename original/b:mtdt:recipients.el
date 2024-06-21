;;; b:mtdt:recipients.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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


(defgroup b:mtdt:recipients nil
  "Blee MTDT Recipients Abstractions. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:recipients:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )

(defvar b:mtdt:recipients:selected
  (list)
  "Selected recipients. Used as a plist. to, cc, bcc.")


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Common Facilities" :extraInfo "Library Candidates"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Common Facilities_: |]]  Library Candidates  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:recipients|selectSafe" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:recipients|selectSafe>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:recipients|selectSafe (
;;;#+END:
                         &key
                         (to nil)
                         (cc nil)
                         (bcc nil)
                        )
   " #+begin_org
** DocStr: Set =b:mtdt:recipients:selected= as specified.
=to= is mandatory. =cc= and =bcc= are optional.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($to (or (plist-get b:mtdt:recipients:selected :to) nil))
          ($cc (or (plist-get b:mtdt:recipients:selected :cc) nil))
          ($bcc (or (plist-get b:mtdt:recipients:selected :bcc) nil))
         )

     (if-when (or $to $cc $bcc)
       (b::error $inHere
                 (s-lex-format
                  "Bad usage: b:mtdt:recipients:selected already set -- (b:mtdt:recipients|deSelect)")))
     (else-unless (or $to $cc $bcc)
       (if-unless to
         (b::error $inHere
                   (s-lex-format
                    "Missing :to named argument")))
       (else-when to
         (setq b:mtdt:recipients:selected (plist-put b:mtdt:recipients:selected ':to to)))
       (setq b:mtdt:recipients:selected (plist-put b:mtdt:recipients:selected ':cc cc))
       (setq b:mtdt:recipients:selected (plist-put b:mtdt:recipients:selected ':bcc bcc)))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:recipients|select
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
    :bcc `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:recipients|select" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:recipients|select>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:recipients|select (
;;;#+END:
                         &key
                         (to nil)
                         (cc nil)
                         (bcc nil)
                        )
   " #+begin_org
** DocStr: Set =b:mtdt:recipients:selected= as specified.
=to= is mandatory. =cc= and =bcc= are optional.
#+end_org "
  (b:mtdt:recipients|deSelect)
  (b:mtdt:recipients|selectSafe :to to :cc cc :bcc bcc))



  (orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:recipients|select
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
    :bcc `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:recipients|deSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:recipients|deSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:recipients|deSelect (
;;;#+END:
                                      )
   " #+begin_org
** DocStr: UnSet =b:mtdt:recipients:selected= by setting it to the empty list.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
         )
     (setq b:mtdt:recipients:selected (list))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:recipients|deSelect)
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:recipients|selectForce" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:recipients|selectForce>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:recipients|selectForce (
;;;#+END:
                         &key
                         (to nil)
                         (cc nil)
                         (bcc nil)
                        )
   " #+begin_org
** DocStr: Set =b:mtdt:recipients:selected= as specified.
=to= is mandatory. =cc= and =bcc= are optional.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
         )
     (b:mtdt:recipients|deSelect)
     (b:mtdt:recipients|select
      :to to
      :cc cc
      :bcc bcc
      )))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:recipients|selectForce
    :to `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
    :bcc `(,(b:email|oorr :addr (symbol-name 'mohsen.banan.byname@gmail.com)))
  )
#+END_SRC
" orgCmntEnd)



;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'b:mtdt:recipients)
;;;#+END:

;;;#+BEGIN: b:prog:file/endOfFile :extraParams nil
(orgCmntBegin "
* *[[elisp:(org-cycle)][| END-OF-FILE |]]* :: emacs and org variables and control parameters
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
