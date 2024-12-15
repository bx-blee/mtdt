;;; b:mtdt:names.el --- FILE DESCRIPTION COMES HERE  -*- lexical-binding: t; -*-

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

(require 'f)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defgroup b:mtdt:names nil
  "Blee MTDT Names Abstractions. Used by b:mtdt:distr."
  :group 'blee
  :prefix "b:mtdt:names:"
  :link '(file-link "/bisos/panels/blee-core/mail/_nodeBase_/fullUsagePanel-en.org")
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Input: Read and Process Names" :extraInfo "File, Buffer and Lines"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Input: Read and Process Names_: |]]  File, Buffer and Lines  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|recipsAddrConvertFileAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|recipsAddrConvertFileAndSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|recipsAddrConvertFileAndSelect (
;;;#+END:
                                                       &key
                                                       (inFile nil)
                                                       (outFile nil)
                                                       )
   " #+begin_org
** DocStr: invoke b:mtdt:names|recipsAddrConvertFile and select the converted file.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
         )
     (b:mtdt:distr|recipsFormsFileSelect
      (b:mtdt:names|recipsAddrConvertFile
       :inFile inFile
       :outFile outFile
       ))))


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|recipsAddrConvertFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|recipsAddrConvertFile>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|recipsAddrConvertFile (
;;;#+END:
                         &key
                         (inFile nil)
                         (outFile nil)
                        )
   " #+begin_org
** DocStr:
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result)
         )
     (if-unless inFile
       (b::error $inHere
                 (s-lex-format
                  "Bad usage: Missing inFile")))
     (else-when inFile
       (with-current-buffer
         (find-file-read-only inFile)
         (setq $result (b:mtdt:names/processBufferForAddrRecip
            :recipsFile outFile))
         ))
     $result))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(message (symbol-name 'NOTYET-AddAnExampleForThis))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|recipsBbdbConvertFileAndSelect" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|recipsBbdbConvertFileAndSelect>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|recipsBbdbConvertFileAndSelect (
;;;#+END:
                                                       &key
                                                       (inFile nil)
                                                       (outFile nil)
                                                       )
   " #+begin_org
** DocStr: invoke b:mtdt:names|recipsBbdbConvertFile and select the converted file.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
         )
     (b:mtdt:distr|recipsFormsFileSelect
      (b:mtdt:names|recipsBbdbConvertFile
       :inFile inFile
       :outFile outFile
       ))))

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|recipsBbdbConvertFile" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|recipsBbdbConvertFile>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|recipsBbdbConvertFile (
;;;#+END:
                         &key
                         (inFile nil)
                         (outFile nil)
                        )
   " #+begin_org
** DocStr: Set =b:mtdt:recipients:selected= as specified.
=to= is mandatory. =cc= and =bcc= are optional.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result)
         )
     (if-unless inFile
       (b::error $inHere
                 (s-lex-format
                  "Bad usage: Missing inFile")))
     (else-when inFile
       (with-current-buffer
         (find-file-read-only inFile)
         (b:mtdt:names/processBufferForBbdbRecip
            :recipsFile outFile)
         ))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(message (symbol-name 'NOTYET-AddAnExampleForThis))
#+END_SRC
" orgCmntEnd)

;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names/processBufferForBbdbRecip" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names/processBufferForBbdbRecip>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names/processBufferForBbdbRecip (
;;;#+END:
                                        &key
                                        (recipsFile nil)
                                        )
   " #+begin_org
** DocStr: Given current buffer of names, process each line
#+end_org "
   (interactive)
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($outFile)
         )

     (defun recipsFileName ()
       (let* (
              ($result recipsFile)
              ($noExt (f-no-ext buffer-file-name))
              )
         (unless $result
           (setq $result (s-lex-format "${$noExt}-bbdbRecips.el")))
         $result))

     (defun appendToDest (<text)
       (f-append-text <text 'utf-8 (recipsFileName))
       )

     (setq $outFile (recipsFileName))
     (f-write-text "" 'utf-8 $outFile)
     (appendToDest "`(")
     (goto-char (point-min))
     (while (not (eobp))
       (beginning-of-line)
       (appendToDest
        (b:mtdt:names|inProcessLineWith  'b:mtdt:names|processLineForBbdbRecip))
       (forward-line 1))
     (appendToDest "\n )")
     (find-file-read-only $outFile)
     (message (s-lex-format "${$outFile} -- ${$inHere}"))
     $outFile))


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names/processBufferForAddrRecip" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names/processBufferForAddrRecip>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names/processBufferForAddrRecip (
;;;#+END:
                                        &key
                                        (recipsFile nil)
                                        )
   " #+begin_org
** DocStr: Given current buffer of names, process each line
#+end_org "
   (interactive)
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($outFile)
         )

     (message (s-lex-format "${recipsFile}"))

     (defun recipsFileName ()
       (let* (
              ($result recipsFile)
              ($noExt)
              )
         (unless $result
           (setq $noExt (f-no-ext buffer-file-name))
           (setq $result (s-lex-format "${$noExt}-addrRecips.el")))
         $result))

     (defun appendToDest (<text)
       (f-append-text <text 'utf-8 (recipsFileName))
       )

     (setq $outFile (recipsFileName))

     (defun writeHeader ()
       (let* (($now (current-time-string)))
         (appendToDest (s-lex-format "\
;;;   -*- lexical-binding: t; -*-
;;;
;;; This file was auto generated as ${$outFile}
;;; by ${$inHere}
;;; on ${$now}.
;;;
")
       )))

     (when (f-exists? $outFile)
       (save-current-buffer
         (find-file $outFile)
         (delete-file $outFile)
         (kill-buffer)
         ))
     (f-write-text "" 'utf-8 $outFile)
     (writeHeader)
     (appendToDest "`(")
     (goto-char (point-min))
     (while (not (eobp))
       (beginning-of-line)
       (appendToDest
        (b:mtdt:names|inProcessLineWith  'b:mtdt:names|processLineForAddrRecip))
       (forward-line 1))
     (appendToDest "\n )")
     (find-file-read-only $outFile)
     (message (s-lex-format "${$outFile} -- ${$inHere}"))
     $outFile))


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|inProcessLineWith" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|inProcessLineWith>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|inProcessLineWith (
;;;#+END:
                                          <lineProcessor
                                          )
   " #+begin_org
** DocStr: Abstract line processor. Invoke =<lineProcessor= with current line as argument.
Returns
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($curLine)
          ($result nil)
          ($continue t)
         )
     (while $continue
       (beginning-of-line)
       (setq $curLine (buffer-substring (point)
				     (progn (end-of-line) (point))))

       (message (s-lex-format "Processing curLine: ${$curLine}"))

       (cond
        ((string= "" $curLine)
	 (message "Skipping Empty Line")
         (forward-line 1)
         )
        ((string-match "^\\#" $curLine)
	 (message "Skipping #Line")
         (forward-line 1)
         )
        ((string-match "^\\;;" $curLine)
         ;; Comment Line
	 (message "Skipping #Line")
         (forward-line 1)
         )
        (t
         (setq $result (apply `(,<lineProcessor ,$curLine)))
         (setq $continue nil)  ;; Break
         )))
     $result))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:names|inProcessLine 'b:mtdt:names|processLineForBbdbRecip)
#+END_SRC
" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|processLineForBbdbRecip" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|processLineForBbdbRecip>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|processLineForBbdbRecip (
;;;#+END:
                                             <line
                                             )
   " #+begin_org
** DocStr: With =<line= produce an entry for :to recipient.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($result nil)
         )
     (setq $result
           (s-lex-format "
  (b:mtdt:recipients|select
   :to `(,(b:email|oorr :bbdb \"${<line}\"))
   )"
     ))))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:names|processLineForBbdbRecips (symbol-name 'contentOfLine))
#+END_SRC

" orgCmntEnd)


;;;#+BEGIN:  b:elisp:defs/cl-defun :defName "b:mtdt:names|processLineForAddrRecip" :advice ()
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  cl-defun   [[elisp:(outline-show-subtree+toggle)][||]]  <<b:mtdt:names|processLineForAddrRecip>>  --   [[elisp:(org-cycle)][| ]]
" orgCmntEnd)
(cl-defun b:mtdt:names|processLineForAddrRecip (
;;;#+END:
                                             <line
                                             )
   " #+begin_org
** DocStr: With =<line= produce an entry for :to recipient.
#+end_org "
   (let* (
          ($inHere (b:log|entry (b:func$entry)))
          ($address (b:mtdt:bbdb3|addrForNameGet <line))
          ($result)
         )
     (cond
      ((string= "No Records" $address)
       (setq $result (s-lex-format "\n  ;; ${<line} has ${$address}"))
       )
      ((string-match "^Nu of Records" $address)
       (setq $result (s-lex-format "\n  ;; ${$address}"))
       )
      (t
       (setq $result
           (s-lex-format "
  (b:mtdt:recipients|select
   :to `(,(b:email|oorr :addr \"${<line} <${$address}>\"))
   )"
                         ))))
     $result))

(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:mtdt:names|processLineForAddrRecip (symbol-name 'contentOfLine))
#+END_SRC

" orgCmntEnd)




;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Output: Write and Record Names" :extraInfo "BBDB2 -- Obsolete Code"
(orgCmntBegin "
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Output: Write and Record Names_: |]]  BBDB2 -- Obsolete Code  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:


(defun bbdb2-a-namesOutGen (records)
  ""
  (setq bbdb-names-dirname (concat bbdb-a-public-dir-name "/Names/"))
  (setq bbdb-names-new-filename (concat bbdb-names-dirname "freshFolks.names"))


  (if bbdb-action-isFirstRecord
      (let ((file-name
	     (expand-file-name
	      (read-file-name "Write To File: "
			      bbdb-names-new-filename)))
	    (completion-ignore-case t))
	(setq bbdb-a-namesGen-output-buffer (find-file file-name))
	(if (if (> (buffer-size) 0)
		(not (yes-or-no-p "File is not empty; delete contents "))
	      nil)
	    nil
	  (delete-region (point-min) (point-max))
	  ;(setq bbdb-action-isFirstRecord nil)
	  )))

   (let* (
	  ;;(first-letter (substring (concat (bbdb-record-sortkey record) "?") 0 1))
	  ;; raw fields
	  (name (bbdb-record-name (car records)))
	  (net (bbdb-record-net (car records)))
	  (primary-net (car net))
	  )
     (save-excursion
       (set-buffer bbdb-a-namesGen-output-buffer)
       (if (null primary-net)
	   (progn
	     (insert (format "#%s\n" name))
	     (message "Skiped name"))
	 (insert (format "%s\n" name))))
     ))


;; (setq bbdb-action-alist nil)

;; (setq bbdb2-action-alist
;;   (append
;;    bbdb-action-alist
;;    '(("names-out-gen"
;;       ;;
;;       (setq bbdb-action-hook nil)
;;       (add-hook 'bbdb-action-hook 'bbdb-a-namesOutGen)
;;       ;(setq bbdb-action-isFirstRecord t)
;;       ))))

(defun bbdb2-a-namesOutAppend (records)
  ""
  ;(interactive (list (if (bbdb-do-all-records-p)
  ;			 (mapcar 'car bbdb-records)
  ;		       (bbdb-current-record))))

  ;;(ding)

  (setq bbdb-names-dirname (concat bbdb-a-public-dir-name "/Names/"))
  (setq bbdb-names-new-filename (concat bbdb-names-dirname "newFolks.names"))

  (if bbdb-action-isFirstRecord
      (let ((file-name
	     (expand-file-name
	      (read-file-name "Write To File: "
			      bbdb-names-new-filename
			      )))
	    (completion-ignore-case t))
	(setq bbdb-a-namesGen-output-buffer (find-file file-name))
	))

   (let* (
	  ;;(first-letter (substring (concat (bbdb-record-sortkey record) "?") 0 1))
	  ;; raw fields
	  (name (bbdb-record-name (car records)))
	  (net (bbdb-record-net (car records)))
	  (primary-net (car net))
	  )
     (save-excursion
       (set-buffer bbdb-a-namesGen-output-buffer)
       (goto-char (point-max))
       (if (null primary-net)
	   (progn
	     (insert (format "#%s\n" name))
	     (message "Skiped name"))
	 (insert (format "%s\n" name)))
       (save-buffer)
       (kill-buffer bbdb-a-namesGen-output-buffer))
     ))


;; (setq bbdb-action-alist nil)

;; (setq bbdb2-action-alist
;;   (append
;;    bbdb-action-alist
;;    '(("names-out-append"
;;       ;;
;;       (setq bbdb-action-hook nil)
;;       (add-hook 'bbdb-action-hook 'bbdb-a-namesOutAppend)
;;       ;(setq bbdb-action-isFirstRecord t)
;;       ))))


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
