#!/bin/env python
# -*- coding: utf-8 -*-

""" #+begin_org
* ~[Summary]~ :: A =CmndSvc= for running CS examples individually or collectively.
#+end_org """

####+BEGIN: b:py3:cs:file/dblockControls :classification "cs-mu"
""" #+begin_org
* [[elisp:(org-cycle)][| /Control Parameters Of This File/ |]] :: dblk ctrls classifications=cs-mu
#+BEGIN_SRC emacs-lisp
(setq-local b:dblockControls t) ; (setq-local b:dblockControls nil)
(put 'b:dblockControls 'py3:cs:Classification "cs-mu") ; one of cs-mu, cs-u, cs-lib, bpf-lib, pyLibPure
#+END_SRC
#+RESULTS:
: cs-mu
#+end_org """
####+END:

####+BEGIN: b:prog:file/proclamations :outLevel 1
""" #+begin_org
* *[[elisp:(org-cycle)][| Proclamations |]]* :: Libre-Halaal Software --- Part Of BISOS ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Neda Communications, Inc. Subject to AGPL.
** It is part of BISOS (ByStar Internet Services OS)
** Best read and edited  with Blee in Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
#+end_org """
####+END:

####+BEGIN: b:prog:file/particulars :authors ("./inserts/authors-mb.org")
""" #+begin_org
* *[[elisp:(org-cycle)][| Particulars |]]* :: Authors, version
** This File: /bisos/core/bpip/examples/pyLiteralToBash.cs
** Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
#+end_org """
####+END:

####+BEGIN: b:py3:file/particulars-csInfo :status "inUse"
""" #+begin_org
* *[[elisp:(org-cycle)][| Particulars-csInfo |]]*
#+end_org """
import typing
csInfo: typing.Dict[str, typing.Any] = { 'moduleName': ['pyLiteralToBash'], }
csInfo['version'] = '202402104344'
csInfo['status']  = 'inUse'
csInfo['panel'] = 'pyLiteralToBash-Panel.org'
csInfo['groupingType'] = 'IcmGroupingType-pkged'
csInfo['cmndParts'] = 'IcmCmndParts[common] IcmCmndParts[param]'
####+END:

""" #+begin_org
* [[elisp:(org-cycle)][| ~Description~ |]] :: [[file:/bisos/git/auth/bxRepos/blee-binders/bisos-core/PyFwrk/bisos-pip/bisos.cs/_nodeBase_/fullUsagePanel-en.org][BISOS CmndSvcs Panel]]   [[elisp:(org-cycle)][| ]]

This a =CmndSvc= for running CS examples individually or collectively.
It can also be used as a regression tester.
It works closely with the bisos.examples package.

** Status: In use with BISOS
** /[[elisp:(org-cycle)][| Planned Improvements |]]/ :
*** TODO pyRoInv examples module should be merged with pyInv and cmnds module.
*** TODO Create an examples panel to which this points.
#+end_org """

####+BEGIN: b:prog:file/orgTopControls :outLevel 1
""" #+begin_org
* [[elisp:(org-cycle)][| Controls |]] :: [[elisp:(delete-other-windows)][(1)]] | [[elisp:(show-all)][Show-All]]  [[elisp:(org-shifttab)][Overview]]  [[elisp:(progn (org-shifttab) (org-content))][Content]] | [[file:Panel.org][Panel]] | [[elisp:(blee:ppmm:org-mode-toggle)][Nat]] | [[elisp:(bx:org:run-me)][Run]] | [[elisp:(bx:org:run-me-eml)][RunEml]] | [[elisp:(progn (save-buffer) (kill-buffer))][S&Q]]  [[elisp:(save-buffer)][Save]]  [[elisp:(kill-buffer)][Quit]] [[elisp:(org-cycle)][| ]]
** /Version Control/ ::  [[elisp:(call-interactively (quote cvs-update))][cvs-update]]  [[elisp:(vc-update)][vc-update]] | [[elisp:(bx:org:agenda:this-file-otherWin)][Agenda-List]]  [[elisp:(bx:org:todo:this-file-otherWin)][ToDo-List]]

#+end_org """
####+END:

####+BEGIN: b:py3:file/workbench :outLevel 1
""" #+begin_org
* [[elisp:(org-cycle)][| Workbench |]] :: [[elisp:(python-check (format "/bisos/venv/py3/bisos3/bin/python -m pyclbr %s" (bx:buf-fname))))][pyclbr]] || [[elisp:(python-check (format "/bisos/venv/py3/bisos3/bin/python -m pydoc ./%s" (bx:buf-fname))))][pydoc]] || [[elisp:(python-check (format "/bisos/pipx/bin/pyflakes %s" (bx:buf-fname)))][pyflakes]] | [[elisp:(python-check (format "/bisos/pipx/bin/pychecker %s" (bx:buf-fname))))][pychecker (executes)]] | [[elisp:(python-check (format "/bisos/pipx/bin/pycodestyle %s" (bx:buf-fname))))][pycodestyle]] | [[elisp:(python-check (format "/bisos/pipx/bin/flake8 %s" (bx:buf-fname))))][flake8]] | [[elisp:(python-check (format "/bisos/pipx/bin/pylint %s" (bx:buf-fname))))][pylint]]  [[elisp:(org-cycle)][| ]]
#+end_org """
####+END:

####+BEGIN: b:py3:cs:orgItem/basic :type "=PyImports= " :title "*Py Library IMPORTS*" :comment "-- with classification based framework/imports"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  =PyImports=  [[elisp:(outline-show-subtree+toggle)][||]] *Py Library IMPORTS* -- with classification based framework/imports  [[elisp:(org-cycle)][| ]]
#+end_org """
####+END:

####+BEGIN: b:py3:cs:framework/imports :basedOn "classification"
""" #+begin_org
** Imports Based On Classification=cs-mu
#+end_org """
from bisos import b
from bisos.b import cs
from bisos.b import b_io
from bisos.common import csParam

import collections
####+END:

import graphviz
import subprocess
import time

####+BEGIN: bx:dblock:python:func :funcName "commonParamsSpecify" :funcType "ParSpec" :retType "" :deco "" :argsList "csParams"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-ParSpec  [[elisp:(outline-show-subtree+toggle)][||]] /commonParamsSpecify/ retType= argsList=(csParams)  [[elisp:(org-cycle)][| ]]
#+end_org """
def commonParamsSpecify(
    csParams,
):
####+END:
    csParams.parDictAdd(
        parName='format',
        parDescription="Output Format",
        parDataType=None,
        parDefault=None,
        parChoices=["any"],
        # parScope=icm.CmndParamScope.TargetParam,
        argparseShortOpt=None,
        argparseLongOpt='--format',
    )


""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CsFrmWrk   [[elisp:(outline-show-subtree+toggle)][||]] ~csuList emacs-list Specifications~  [[elisp:(blee:org:code-block/above-run)][ /Eval Below/ ]] [[elisp:(org-cycle)][| ]]
#+BEGIN_SRC emacs-lisp
(setq  b:py:cs:csuList
  (list
   "bisos.b.cs.ro"
   "blee.csPlayer.bleep"
 ))
#+END_SRC
#+RESULTS:
| bisos.b.cs.ro | blee.csPlayer.bleep |
#+end_org """

####+BEGIN: b:py3:cs:framework/csuListProc :pyImports t :csuImports t :csuParams t :csmuParams t
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CsFrmWrk   [[elisp:(outline-show-subtree+toggle)][||]] =Process CSU List= with /2/ in csuList pyImports=t csuImports=t csuParams=t
#+end_org """

from bisos.b.cs import ro
from blee.csPlayer import bleep


csuList = [ 'bisos.b.cs.ro', 'blee.csPlayer.bleep', ]

g_importedCmndsModules = cs.csuList_importedModules(csuList)

def g_extraParams():
    csParams = cs.param.CmndParamDict()
    commonParamsSpecify(csParams)
    cs.csuList_commonParamsSpecify(csuList, csParams)
    cs.argsparseBasedOnCsParams(csParams)

####+END:

####+BEGIN: b:py3:cs:main/exposedSymbols :classes ()
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CsFrmWrk   [[elisp:(outline-show-subtree+toggle)][||]] ~Exposed Symbols List Specification~ with /0/ in Classes List
#+end_org """
####+END:

cs.invOutcomeReportControl(cmnd=True, ro=True)

####+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :sep nil :title "CmndSvcs" :anchor ""  :extraInfo "Command Services Section"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _CmndSvcs_: |]]  Command Services Section  [[elisp:(org-shifttab)][<)]] E|
#+end_org """
####+END:

####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "examples" :extent "verify" :ro "noCli" :comment "FrameWrk: CS-Main-Examples" :parsMand "" :parsOpt "" :argsMin 0 :argsMax 0 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<examples>>  *FrameWrk: CS-Main-Examples*  =verify= ro=noCli   [[elisp:(org-cycle)][| ]]
#+end_org """
class examples(cs.Cmnd):
    cmndParamsMandatory = [ ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 0, 'Max': 0,}
    rtInvConstraints = cs.rtInvoker.RtInvoker.new_noRo() # NO RO From CLI

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
    ) -> b.op.Outcome:
        """FrameWrk: CS-Main-Examples"""
        failed = b_io.eh.badOutcome
        callParamsDict = {}
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, None).isProblematic():
            return failed(cmndOutcome)
####+END:

        od = collections.OrderedDict
        cmnd = cs.examples.cmndEnter
        literal = cs.examples.execInsert

        fileBaseName='mtdtConcepts'
        formatParPdf = od([('format', 'pdf'),])
        formatParSvg = od([('format', 'svg'),])

        cs.examples.menuChapter('=MTDT Concepts=')

        cmnd('mtdtConcepts', pars=formatParPdf, args="mtdtConcepts")
        cmnd('mtdtConcepts', pars=formatParSvg, args="mtdtConcepts")
        cmnd('mtdtConcepts', pars=od([('format', 'evince'),]), args='mtdtConcepts')

        cmnd('mtdtConcepts_l0', pars=formatParPdf, args="mtdtConcepts_l0")
        cmnd('mtdtConcepts_l0', pars=formatParSvg, args="mtdtConcepts_l0")
        cmnd('mtdtConcepts_l0', pars=od([('format', 'evince'),]), args='mtdtConcepts_l0')

        cmnd('mtdtConcepts_l1', pars=formatParPdf, args="mtdtConcepts_l1")
        cmnd('mtdtConcepts_l1', pars=formatParSvg, args="mtdtConcepts_l1")
        cmnd('mtdtConcepts_l1', pars=od([('format', 'evince'),]), args='mtdtConcepts_l1')

        cmnd('mtdtConcepts_l2', pars=formatParPdf, args="mtdtConcepts_l2")
        cmnd('mtdtConcepts_l2', pars=od([('format', 'evince'),]), args='mtdtConcepts_l2')

        cmnd('mtdtConcepts_l3', pars=formatParPdf, args="mtdtConcepts_l3")
        cmnd('mtdtConcepts_l3', pars=od([('format', 'evince'),]), args='mtdtConcepts_l3')

        cs.examples.menuChapter('=ByStar Monetization=')

        cmnd('bystarMonetization', pars=formatParPdf, args="bystarMonetization")
        cmnd('bystarMonetization', pars=od([('format', 'evince'),]), args='bystarMonetization')

        cs.examples.menuChapter('=View=')

        literal(f"evince ${fileBaseName}.pdf")

        return(cmndOutcome)

####+BEGIN: b:py3:cs:orgItem/section :title "Functions"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  /Section/    [[elisp:(outline-show-subtree+toggle)][||]] *Conversion Functions*   [[elisp:(org-cycle)][| ]]
#+end_org """
####+END:

####+BEGIN: b:py3:cs:func/typing :funcName "mtdtConceptsGraph" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /mtdtConceptsGraph/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def mtdtConceptsGraph(
####+END:
) -> graphviz.Digraph:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    dot = graphviz.Digraph(
        comment='MTDT Concepts',
        graph_attr={'rankdir':'LR'},
    )

    # 1- Gnu-Emacs
    dot.node('MTDT', 'MTDT\nConcepts', shape='circle', style='filled', fillcolor='darkseagreen3')

    # 1.1  1.2 1.3 - Redist Types
    dot.node('SelectedCompositionFwrk', 'Selected Composition Framework', shape='cylinder', style='filled', fillcolor='green')
    dot.node('MailingFile', 'MailingFile', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('Interactive', 'Interactive Invokations', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('SendExtent', 'Send Extent', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('OorR', 'Orig Or Recipients', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('AddressBook', 'Address Book', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('Names', 'Names', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('Distributions', 'Distributions', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('Tracking', 'Tracking', shape='cylinder', style='filled', fillcolor='darksalmon')

    # 1.1.1
    dot.node('PlainText', 'PlainText', style='filled', fillcolor='green')
    dot.node('OrgMsg', 'OrgMsg', style='filled', fillcolor='green')
    dot.node('LaTeX', 'LaTeX', style='filled', fillcolor='green')
    dot.node('Html', 'Html', style='filled', fillcolor='green')
    dot.node('WithSelMailing', 'With Sel Mailing', style='filled', fillcolor='green')

    # 1.2.1
    dot.node('TemplateFile', 'TemplateFile', style='filled', fillcolor='green')
    dot.node('MailingCmnd', 'Mailing Command', style='filled', fillcolor='green')
    dot.node('SelectedMailing', 'Selected Mailing', style='filled', fillcolor='green')

    # 1.3.1  1.3.2
    dot.node('Gnus', 'Gnus', style='filled', fillcolor='green')
    dot.node('MtdtMenu', 'MTDT Menu', style='filled', fillcolor='green')
    dot.node('MailingMenu', 'Mailing Menu', style='filled', fillcolor='green')
    dot.node('DistMenu', 'Distribution Menu', style='filled', fillcolor='green')

    #
    dot.node('CompositionModel', 'Composition Model', style='filled', fillcolor='green')
    dot.node('NativeComposition', 'Native Composition', style='filled', fillcolor='green')
    dot.node('ExternalComposition', 'External Composition', style='filled', fillcolor='green')

    dot.node('ContentCustomization', 'Content Customization', style='filled', fillcolor='green')

    # 1.2.1.1
    dot.node('SendExtent', 'Send Extent', style='filled', fillcolor='green')
    dot.node('doSend', 'doSend', style='filled', fillcolor='green')
    dot.node('unsentBuf', 'unsentBuffer', style='filled', fillcolor='green')

    # 1.3.1.1  1.3.2.1
    dot.node('Recipients', 'Recipients', style='filled', fillcolor='darksalmon')
    dot.node('RecipientsList', 'Recipients List', style='filled', fillcolor='darksalmon')
    dot.node('RecipientsListForm', 'Recipients List Form',  style='filled', fillcolor='darksalmon')
    dot.node('RecipientsListFormFile', 'Recipients List Form File',  style='filled', fillcolor='darksalmon')
    
    # dot.node('bbdb2', 'bbdb2', style='filled', fillcolor='darksalmon')
    dot.node('bbdb3', 'bbdb3', style='filled', fillcolor='darksalmon')

    dot.node('NamesFile', 'namesFile', style='filled', fillcolor='darksalmon')

    dot.node('DistNamesFile', 'distNamesFile', style='filled', fillcolor='darksalmon')

    dot.node('LogFile', 'logFile', style='filled', fillcolor='darksalmon')

    dot.node('sendWithExtent', 'sendWithExtent', style='filled', fillcolor='darksalmon')
    dot.node('unsentBuffer', 'unsentBuffer', style='filled', fillcolor='darksalmon')
    dot.node('sent', 'sent', style='filled', fillcolor='darksalmon')

    dot.node('Reply', 'Reply', style='filled', fillcolor='darksalmon')
    dot.node('Forward', 'Forward', style='filled', fillcolor='darksalmon')
    dot.node('GnusCompose', 'GnusCompose', style='filled', fillcolor='darksalmon')



    #####  Adding edges to define hierarchy
    #####
    # 1.1  -- 1.2 -- 1.3
    dot.edge('MTDT', 'SelectedCompositionFwrk', label='Abstraction')
    dot.edge('MTDT', 'MailingFile', label='Abstraction')
    dot.edge('MTDT', 'Interactive', label='Abstraction')
    dot.edge('MTDT', 'SendExtent', label='Abstraction')
    dot.edge('MTDT', 'OorR', label='Abstraction')
    dot.edge('MTDT', 'AddressBook', label='Abstraction')
    dot.edge('MTDT', 'Names', label='Abstraction')
    dot.edge('MTDT', 'Distributions', label='Abstraction')
    dot.edge('MTDT', 'Tracking', label='Abstraction')
    dot.edge('MTDT', 'CompositionModel', label='Abstraction')
    dot.edge('MTDT', 'ContentCustomization', label='Abstraction')


    dot.edge('SelectedCompositionFwrk', 'PlainText', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'OrgMsg', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'LaTeX', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'Html', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'WithSelMailing', label='Enum')

    dot.edge('CompositionModel', 'NativeComposition', label='Enum')
    dot.edge('CompositionModel', 'ExternalComposition', label='Enum')

    #
    dot.edge('MailingFile', 'TemplateFile')
    dot.edge('MailingFile', 'MailingCmnd')
    dot.edge('TemplateFile', 'MailingCmnd')
    dot.edge('MailingCmnd', 'SelectedMailing')

    dot.edge('SelectedMailing', 'MailingMenu')
    dot.edge('SelectedMailing', 'DistMenu')

    dot.edge('RecipientsList', 'MailingMenu')

    dot.edge('Interactive', 'Gnus')
    dot.edge('Interactive', 'MtdtMenu')
    dot.edge('MtdtMenu', 'DistMenu')
    dot.edge('MtdtMenu', 'MailingMenu')

    dot.edge('Gnus', 'Reply')
    dot.edge('Gnus', 'Forward')
    dot.edge('Gnus', 'GnusCompose')

    dot.edge('Reply', 'unsentBuffer')
    dot.edge('Forward', 'unsentBuffer')
    dot.edge('GnusCompose', 'unsentBuffer')

    dot.edge('SelectedCompositionFwrk', 'Reply')
    dot.edge('SelectedCompositionFwrk', 'Forward')

    dot.edge('SendExtent', 'doSend')
    dot.edge('SendExtent', 'unsentBuf')

    dot.edge('OorR', 'Recipients')
    dot.edge('Recipients', 'RecipientsList')
    dot.edge('RecipientsList', 'RecipientsListForm')
    dot.edge('RecipientsListForm', 'RecipientsListFormFile')


    # dot.edge('AddressBook', 'bbdb2')
    dot.edge('AddressBook', 'bbdb3')

    dot.edge('Names', 'NamesFile')

    dot.edge('NamesFile', 'bbdb3')
    dot.edge('bbdb3', 'RecipientsListFormFile')

    dot.edge('RecipientsListFormFile', 'DistMenu')

    dot.edge('Distributions', 'DistNamesFile')

    dot.edge('DistNamesFile', 'RecipientsListFormFile')

    dot.edge('Tracking', 'LogFile')


    dot.edge('MailingMenu', 'sendWithExtent')
    dot.edge('DistMenu', 'sendWithExtent')

    dot.edge('sendWithExtent', 'unsentBuffer')
    dot.edge('sendWithExtent', 'sent')

    dot.edge('SendExtent', 'sendWithExtent')

    dot.edge('CompositionModel', 'sendWithExtent')
    dot.edge('ContentCustomization', 'sendWithExtent')


    return dot


####+BEGIN: b:py3:cs:func/typing :funcName "mtdtConceptsGraph_l0" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /mtdtConceptsGraph_l0/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def mtdtConceptsGraph_l0(
####+END:
) -> graphviz.Digraph:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    dot = graphviz.Digraph(
        comment='Mailing File Creation',
        # graph_attr={'rankdir':'LR'},
    )

    #  LCNT
    dot.node('LCNT', 'LCNT:\nLibre\nContent', shape='circle', style='filled', fillcolor='darkseagreen3')
    dot.node('LcntMasFile', 'articleLtr.mastex\narticleRtl.mastex', shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('LcntProcMailing', '\nlcntProc.sh\nMailing\n ',  shape='rarrow', style='filled', fillcolor='salmon3')

    #####
    dot.edge('LCNT', 'LcntMasFile', label='Specification')
    dot.edge('LCNT', 'LcntProcMailing', label='Usage')
    dot.edge('LcntMasFile', 'LcntProcMailing', label='Usage')


    # Layer 0
    dot.node('Start-Mailing', 'LAYER 1:\nCreate\nMailing\nFile', shape='circle', style='filled', fillcolor='darkseagreen3')

    # 1.1  1.2 1.3 - Redist Types

    # dot.node('StartMailingFile', 'Common Mailing\nFile', shape='parallelogram', style='filled', fillcolor='khaki1')

    dot.edge('LcntMasFile', 'MailingFile',  label='Content')
    dot.edge('LcntMasFile', 'TemplateFile',  label='Content')
    dot.edge('LcntMasFile', 'MuaStencil',  label='Content')
    dot.edge('LcntProcMailing', 'LcntMasFile',  dir='back', label='Processing')

    dot.edge('LcntProcMailing', 'MailingFileUsage', label='Usage')


    # Header

    #
    dot.node('PlainText', 'PlainText', shape='rect', style='filled', fillcolor='azure3')
    dot.node('OrgMsg', 'OrgMsg', shape='rect', style='filled', fillcolor='azure3')
    dot.node('LaTeX', 'LaTeX', shape='rect', style='filled', fillcolor='azure3')
    dot.node('Html', 'Html', shape='rect', style='filled', fillcolor='azure3')
    # dot.node('WithSelMailing', 'With\nSelected\nMailing', shape='rect', style='filled', fillcolor='azure3')


    #


    #####  Adding edges to define hierarchy
    #####
    dot.edge('Start-Mailing', 'MailingFile', label='Specification')
    dot.edge('Start-Mailing', 'TemplateFile', label='Specification')
    dot.edge('Start-Mailing', 'MuaStencil', label='Specification')

    dot.node('TemplateFile', 'Template\nFile',  shape='parallelogram', style='filled', fillcolor='khaki1')

    dot.node('MailingFile', 'Mailing\nFile',  shape='parallelogram', style='filled', fillcolor='khaki1')

    dot.node('MuaStencil', 'Mua\nStencil',  shape='parallelogram', style='filled', fillcolor='khaki1')

    dot.node('SelectedCompositionFwrk', 'X-ComposeFwrk', shape='cylinder', style='filled', fillcolor='green')

    dot.edge('SelectedCompositionFwrk', 'PlainText', dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'OrgMsg',  dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'LaTeX',  dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'Html',  dir='back', label='Enum')
    # dot.edge('SelectedCompositionFwrk', 'WithSelMailing',  dir='back', label='Enum')

    dot.edge('MailingFile', 'SelectedCompositionFwrk', dir='back', label='Header')
    dot.edge('TemplateFile', 'SelectedCompositionFwrk', dir='back', label='Header')
    dot.edge('MuaStencil', 'SelectedCompositionFwrk', dir='back', label='Header')

    dot.node('Purpose', 'X-Mailing-Purpose', shape='cylinder', style='filled', fillcolor='green')

    dot.node('PurposeMailing', 'Mailing', shape='rect', style='filled', fillcolor='azure3')
    dot.node('PurposeTemplate', 'Template', shape='rect', style='filled', fillcolor='azure3')
    dot.node('PurposeMua', 'Mua', shape='rect', style='filled', fillcolor='azure3')
    # dot.node('PurposeAny', 'Any', shape='rect', style='filled', fillcolor='azure3')

    dot.edge('Purpose', 'PurposeMailing', dir='back', label='Enum')
    dot.edge('Purpose', 'PurposeTemplate',  dir='back', label='Enum')
    dot.edge('Purpose', 'PurposeMua',  dir='back', label='Enum')
    # dot.edge('Purpose', 'PurposeAny',  dir='back', label='Enum')

    dot.edge('MailingFile', 'Purpose', dir='back', label='Header')
    dot.edge('TemplateFile', 'Purpose', dir='back', label='Header')
    dot.edge('MuaStencil', 'Purpose', dir='back', label='Header')

    dot.node('SelectedCompositionModel', 'X-MailingParams\n:type ext\n(Composition Model)', shape='cylinder', style='filled', fillcolor='green')

    dot.node('ComposeNatModel', 'Native\nCompose\nModel\n', shape='rect', style='filled', fillcolor='azure3')
    dot.node('ComposeExtModel', 'External\nCompose\nModel\n', shape='rect', style='filled', fillcolor='azure3')

    dot.edge('SelectedCompositionModel', 'ComposeNatModel', dir='back', label='Enum')
    dot.edge('SelectedCompositionModel', 'ComposeExtModel', dir='back', label='Enum')

    dot.node('MailingName', 'X-MailingName', shape='cylinder', style='filled', fillcolor='green')

    dot.node('Customize', 'X-MTDT-Customize\n(file path)', shape='cylinder', style='filled', fillcolor='green')


    dot.edge('MailingFile', 'SelectedCompositionModel', dir='back', label='Header')
    dot.edge('TemplateFile', 'SelectedCompositionModel', dir='back', label='Header')
    dot.edge('MuaStencil', 'SelectedCompositionModel', dir='back', label='Header')

    dot.edge('MailingFile', 'MailingName', dir='back', label='Header')
    dot.edge('TemplateFile', 'MailingName', dir='back', label='Header')
    dot.edge('MuaStencil', 'MailingName', dir='back', label='Header')

    dot.edge('MailingFile', 'MailingName', dir='back', label='Header')
    dot.edge('TemplateFile', 'MailingName', dir='back', label='Header')
    dot.edge('MuaStencil', 'MailingName', dir='back', label='Header')

    dot.edge('MailingFile', 'Customize', dir='back', label='Header')
    dot.edge('TemplateFile', 'Customize', dir='back', label='Header')
    dot.edge('MuaStencil', 'Customize', dir='back', label='Header')

    # dot.node('MailingCmnd', 'Mailing\nCommand', shape='oval', style='filled', fillcolor='khaki1')

    dot.node('MailingFileUsage', '\nMailing\nFile\nUsage\n ',  shape='rarrow', style='filled', fillcolor='lightsalmon1')

    dot.edge('MailingFile', 'MailingFileUsage', label='Derive')
    dot.edge('TemplateFile', 'MailingFileUsage', label='Derive')
    dot.edge('MuaStencil', 'MailingFileUsage', label='Derive')

    return dot


####+BEGIN: b:py3:cs:func/typing :funcName "mtdtConceptsGraph_l1" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /mtdtConceptsGraph_l1/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def mtdtConceptsGraph_l1(
####+END:
) -> graphviz.Digraph:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    dot = graphviz.Digraph(
        comment='MTDT-Mailing Concepts',
        # graph_attr={'rankdir':'LR'},
    )

    # 1- Gnu-Emacs
    dot.node('MTDT-Mailing', 'LAYER 2:\nMTDT\nMailing\nConcepts', shape='circle', style='filled', fillcolor='darkseagreen3')

    # 1.1  1.2 1.3 - Redist Types
    dot.node('SelectedCompositionFwrk', 'Selected\nCompositionn\nFramework', shape='cylinder', style='filled', fillcolor='green')
    dot.node('SelectedCompositionModel', 'Selected\nComposition\nModel', shape='cylinder', style='filled', fillcolor='green')
    dot.node('Interactive', 'Interactive\nUsage', shape='circle', style='filled', fillcolor='darksalmon')
    dot.node('MailingFile', 'Mailing\nFile', shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('TemplateFile', 'Template\nFile',  shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('MuaStencil', 'Mua\nStencil',  shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('CustomizeFile', 'Customize.el\nFile', shape='parallelogram', style='filled', fillcolor='khaki1')

    dot.node('PlainText', 'PlainText', shape='rect', style='filled', fillcolor='azure3')
    dot.node('OrgMsg', 'OrgMsg', shape='rect', style='filled', fillcolor='azure3')
    dot.node('LaTeX', 'LaTeX', shape='rect', style='filled', fillcolor='azure3')
    dot.node('Html', 'Html', shape='rect', style='filled', fillcolor='azure3')
    dot.node('WithSelMailing', 'With\nSelected\nMailing', shape='rect', style='filled', fillcolor='azure3')

    # dot.node('Purpose', 'Purpose', shape='cylinder', style='filled', fillcolor='green')

    # dot.node('PurposeMailing', 'Mailing', shape='rect', style='filled', fillcolor='azure3')
    # dot.node('PurposeTemplate', 'Template', shape='rect', style='filled', fillcolor='azure3')
    # dot.node('PurposeMua', 'Mua', shape='rect', style='filled', fillcolor='azure3')
    # dot.node('PurposeAny', 'Any', shape='rect', style='filled', fillcolor='azure3')

    dot.node('MailingCmnd', 'Mailing\nCommand', shape='oval', style='filled', fillcolor='khaki1')
    dot.node('ListOfMailingCmnds', 'List of\nMailing\nCommand',  shape='oval', style='filled', fillcolor='khaki1')
    dot.node('SelectedMailings', 'Selected\nList of\nMailings ', style='filled', fillcolor='green')
    dot.node('SelectedGnusMailing', 'Selected\nGnus\nMailing', style='filled', fillcolor='green')

    # 1.3.1  1.3.2
    dot.node('Gnus', '\nBlee\nGnus\n ', shape='rarrow', style='filled', fillcolor='orange')
    dot.node('Forward', '\nGnus\nForward\n ', shape='rarrow', style='filled', fillcolor='orange')
    dot.node('GnusCompose', '\nGnus\nCompose\n ', shape='rarrow', style='filled', fillcolor='orange')
    dot.node('Reply', '\nGnus\nReply\n ', shape='rarrow', style='filled', fillcolor='orange')

    dot.node('MtdtMailingMenu', '\nMTDT-Mailing\nMenu\n ', shape='rarrow', style='filled', fillcolor='salmon')

    dot.node('MailingOrgInitiator', '\nMailing\nOrg\nInitiator\n ',  shape='rarrow', style='filled', fillcolor='salmon2')
    dot.node('MailingOrgDblock', '\nMailing\nOrg\nDblocks\n ',  shape='rarrow', style='filled', fillcolor='salmon2')

    dot.node('lcntProcMailing', '\nlcntProc.sh\nMailing\n ',  shape='rarrow', style='filled', fillcolor='salmon3')

    dot.node('MailingFileUsage', '\nMailing\nFile\nUsage\n ',  shape='rarrow', style='filled', fillcolor='lightsalmon1')

    dot.node('MailingCompose', '\nMailing\nNative\nCompose\n ',  shape='rarrow', style='filled', fillcolor='magenta')
    dot.node('MailingExtCompose', '\nMailing\nExternal\nCompose\n ',  shape='rarrow', style='filled', fillcolor='magenta')

    dot.node('ComposeNatModel', 'Native\nCompose\nModel\n', shape='rect', style='filled', fillcolor='azure3')
    dot.node('ComposeExtModel', 'External\nCompose\nModel\n', shape='rect', style='filled', fillcolor='azure3')

    dot.node('unsentBuffer', 'Unsent\nMail\nBuffer',  shape='invtrapezium', style='filled', fillcolor='deepskyblue')

    dot.node('ResidentMTA', '\nResident\nMTA\n(MARMEE)\n ',  shape='cds', style='filled', fillcolor='cyan')

    dot.node('MailSnippets', '\nMail\nYasnippets',  shape='polygon', style='filled', fillcolor='gray83')


    #####  Adding edges to define hierarchy
    #####
    #####
    dot.edge('MTDT-Mailing', 'Interactive', label='Usage')
    dot.edge('MTDT-Mailing', 'SelectedCompositionFwrk', label='Configuration')
    dot.edge('MTDT-Mailing', 'SelectedCompositionModel', label='Configuration')
    dot.edge('MTDT-Mailing', 'MailingFile', label='Specification')
    dot.edge('MTDT-Mailing', 'TemplateFile', label='Specification')
    dot.edge('MTDT-Mailing', 'MuaStencil', label='Specification')
    dot.edge('MTDT-Mailing', 'CustomizeFile', label='Specification')



    dot.edge('SelectedCompositionFwrk', 'PlainText', dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'OrgMsg',  dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'LaTeX',  dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'Html',  dir='back', label='Enum')
    dot.edge('SelectedCompositionFwrk', 'WithSelMailing',  dir='back', label='Enum')

    # dot.edge('MailingFile', 'Purpose', dir='back', label='Header')

    # dot.edge('Purpose', 'PurposeMailing', dir='back', label='Enum')
    # dot.edge('Purpose', 'PurposeTemplate',  dir='back', label='Enum')
    # dot.edge('Purpose', 'PurposeMua',  dir='back', label='Enum')
    # dot.edge('Purpose', 'PurposeAny',  dir='back', label='Enum')

    dot.edge('SelectedCompositionFwrk', 'Gnus', label='Inform')
    dot.edge('SelectedCompositionFwrk', 'MtdtMailingMenu', label='Inform')

    dot.edge('MailingFile', 'CustomizeFile', dir='back', label='Execute')
    dot.edge('MailingFile', 'MailingCmnd', label='Derive')
    dot.edge('TemplateFile', 'MailingCmnd', label='Derive')
    dot.edge('MuaStencil', 'MailingCmnd', label='Derive')
    dot.edge('MailingCmnd', 'SelectedGnusMailing')
    dot.edge('MailingCmnd', 'ListOfMailingCmnds')
    dot.edge('ListOfMailingCmnds', 'SelectedMailings')

    dot.edge('SelectedMailings', 'MtdtMailingMenu', label='Inform')
    dot.edge('SelectedGnusMailing', 'Gnus', label='Inform')

    dot.edge('MtdtMailingMenu', 'MailingExtCompose')
    dot.edge('MtdtMailingMenu', 'MailingCompose')

    dot.edge('MailingExtCompose', 'unsentBuffer')
    dot.edge('MailingCompose', 'unsentBuffer')

    dot.edge('Interactive', 'Gnus')
    dot.edge('Interactive', 'MtdtMailingMenu')
    dot.edge('Interactive', 'MailingOrgInitiator')
    dot.edge('Interactive', 'lcntProcMailing')
    dot.edge('Interactive', 'MailingFileUsage')

    dot.edge('MailingOrgInitiator', 'MailingOrgDblock')

    dot.edge('MailingOrgDblock', 'MailingExtCompose')
    dot.edge('MailingOrgDblock', 'MailingCompose')
    dot.edge('MailingOrgDblock', 'SelectedMailings', dir='back', label='Select')

    dot.edge('lcntProcMailing', 'MailingExtCompose')
    dot.edge('lcntProcMailing', 'MailingCompose')
    dot.edge('lcntProcMailing', 'SelectedMailings', label='Select')

    dot.edge('MailingFileUsage', 'MailingExtCompose')
    dot.edge('MailingFileUsage', 'MailingCompose')
    dot.edge('MailingFileUsage', 'SelectedMailings', label='Select')

    dot.edge('Gnus', 'Reply')
    dot.edge('Gnus', 'Forward')
    dot.edge('Gnus', 'GnusCompose')

    dot.edge('Reply', 'unsentBuffer')
    dot.edge('Forward', 'unsentBuffer')
    dot.edge('GnusCompose', 'unsentBuffer')

    dot.edge('unsentBuffer', 'ResidentMTA', label='Inject')

    dot.edge('MailSnippets', 'unsentBuffer')

    dot.edge('SelectedCompositionModel', 'ComposeNatModel', dir='back', label='Enum')
    dot.edge('SelectedCompositionModel', 'ComposeExtModel', dir='back', label='Enum')

    dot.edge('SelectedCompositionModel', 'Gnus')

    return dot


####+BEGIN: b:py3:cs:func/typing :funcName "mtdtConceptsGraph_l2" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /mtdtConceptsGraph_l2/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def mtdtConceptsGraph_l2(
####+END:
) -> graphviz.Digraph:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    dot = graphviz.Digraph(
        comment='MTDT-Distribution Concepts',
        # graph_attr={'rankdir':'LR'},
    )

    #  LAYER-1  Summary
    dot.node('MTDT-Mailing', 'MTDT\nMailing\nConcepts\nLAYER 1', shape='circle', style='filled', fillcolor='darkseagreen3')
    dot.node('MailingFile', 'Mailing\nFile', shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('TemplateFile', 'Template\nFile',  shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('MailingCmnd', 'Mailing\nCommand', shape='oval', style='filled', fillcolor='khaki1')
    dot.node('ListOfMailingCmnds', 'List of\nMailing\nCommand',  shape='oval', style='filled', fillcolor='khaki1')
    dot.node('SelectedMailings', 'Selected\nList of\nMailings ', style='filled', fillcolor='green')

    # LAYER-2  FULL
    #
    dot.node('MTDT-Distribution', 'MTDT\nDistribution\nConcepts\nLAYER 2', shape='circle', style='filled', fillcolor='darkseagreen3')

    dot.node('Interactive', 'Interactive\nUsage', shape='circle', style='filled', fillcolor='darksalmon')
    dot.node('SendExtent', 'Selected\nSend\nExtent', shape='cylinder', style='filled', fillcolor='darksalmon')
    dot.node('OorR', 'Orig Or Recipients', shape='cylinder', style='filled', fillcolor='khaki1')
    dot.node('AddressBook', 'Address Book', shape='cylinder', style='filled', fillcolor='khaki1')
    dot.node('Names', 'Names', shape='cylinder', style='filled', fillcolor='khaki1')
    dot.node('Distributions', 'Distributions', shape='cylinder', style='filled', fillcolor='khaki1')
    dot.node('Tracking', 'Tracking', shape='cylinder', style='filled', fillcolor='khaki1')

    #dot.node('MtdtMenu', 'MTDT Menu', style='filled', fillcolor='green')
    dot.node('MtdtMenu', '\nMTDT-Distribution\nMenu\n ', shape='rarrow', style='filled', fillcolor='salmon')
    #dot.node('DistMenu', 'Distribution Menu', style='filled', fillcolor='green')

    dot.node('lcntProcMailing', '\nlcntProc.sh\nMailing\n ',  shape='rarrow', style='filled', fillcolor='salmon3')

    # 1.2.1.1
    dot.node('SendExtent', 'Selected\nSend\nExtent', style='filled', fillcolor='green')
    dot.node('doSend', 'doSend',  shape='rect', style='filled', fillcolor='azure3')
    dot.node('unsentBuf', 'unsentBuffer',  shape='rect', style='filled', fillcolor='azure3')

    # 1.3.1.1  1.3.2.1
    dot.node('Recipients', 'Recipients', style='filled', fillcolor='khaki1')
    dot.node('RecipientsList', 'Recipients List', style='filled', fillcolor='khaki1')
    dot.node('RecipientsListForm', 'Recipients List Form',  style='filled', fillcolor='khaki1')
    dot.node('RecipientsListFormFile', 'Selected\nRecipients\nList\nForm\n File',  style='filled', fillcolor='green')

    dot.node('bbdb2', 'bbdb2', style='filled', fillcolor='khaki1')
    dot.node('bbdb3', 'bbdb3', style='filled', fillcolor='khaki1')

    dot.node('NamesFile', 'namesFile', style='filled', fillcolor='khaki1')

    dot.node('DistNamesFile', 'distNamesFile', style='filled', fillcolor='khaki1')

    dot.node('LogFile', 'logFile', style='filled', fillcolor='khaki1')

    dot.node('sendWithExtent', 'sendWithExtent', style='filled', fillcolor='darksalmon')
    dot.node('unsentBuffer', 'Unsent\nMail\nBuffer',  shape='invtrapezium', style='filled', fillcolor='deepskyblue')
    dot.node('sent', '\nResident\nMTA\n(MARMEE)\n ',  shape='cds', style='filled', fillcolor='cyan')

    #####  Adding edges to define hierarchy
    #####
    # 1.1  -- 1.2 -- 1.3
    dot.edge('MTDT-Mailing', 'MailingFile', label='Specification')

    #
    dot.edge('MailingFile', 'TemplateFile')
    dot.edge('MailingFile', 'MailingCmnd', label='Derive')
    dot.edge('TemplateFile', 'MailingCmnd', label='Derive')
    dot.edge('MailingCmnd', 'ListOfMailingCmnds')
    dot.edge('ListOfMailingCmnds', 'SelectedMailings')

    #####  Adding edges to define hierarchy
    #####
    # 1.1  -- 1.2 -- 1.3
    dot.edge('MTDT-Distribution', 'Interactive', label='Execution')
    dot.edge('MTDT-Distribution', 'SendExtent', label='Configuration')
    dot.edge('MTDT-Distribution', 'OorR', label='Machinary')
    dot.edge('MTDT-Distribution', 'AddressBook', label='Specification')
    dot.edge('MTDT-Distribution', 'Names', label='Specification')
    dot.edge('MTDT-Distribution', 'Distributions', label='Specification')
    dot.edge('MTDT-Distribution', 'Tracking', label='Machinary')

    #

    # dot.edge('SelectedMailings', 'MailingMenu')
    dot.edge('SelectedMailings', 'MtdtMenu')

    # dot.edge('RecipientsList', 'MailingMenu')

    dot.edge('Interactive', 'MtdtMenu')
    dot.edge('Interactive', 'lcntProcMailing')
    # dot.edge('MtdtMenu', 'DistMenu')

    # dot.edge('MailingMenu', 'sendWithExtent')
    dot.edge('MtdtMenu', 'sendWithExtent')
    dot.edge('lcntProcMailing', 'sendWithExtent')

    dot.edge('sendWithExtent', 'unsentBuffer')
    dot.edge('sendWithExtent', 'sent')
    dot.edge('unsentBuffer', 'sent')


    dot.edge('SendExtent', 'doSend', dir='back', label='Enum')
    dot.edge('SendExtent', 'unsentBuf', dir='back', label='Enum')
    dot.edge('SendExtent', 'sendWithExtent', label='inform')


    dot.edge('OorR', 'Recipients')
    dot.edge('Recipients', 'RecipientsList')
    dot.edge('RecipientsList', 'RecipientsListForm')
    dot.edge('RecipientsListForm', 'RecipientsListFormFile')

    dot.edge('AddressBook', 'bbdb2')
    dot.edge('AddressBook', 'bbdb3')

    dot.edge('Names', 'NamesFile')
    dot.edge('NamesFile', 'bbdb2')
    dot.edge('bbdb2', 'RecipientsListFormFile')
    dot.edge('NamesFile', 'bbdb3')
    dot.edge('bbdb3', 'RecipientsListFormFile')

    dot.edge('RecipientsListFormFile', 'MtdtMenu')

    dot.edge('Distributions', 'DistNamesFile')

    dot.edge('DistNamesFile', 'RecipientsListFormFile')

    dot.edge('Tracking', 'LogFile')
    dot.edge('LogFile', 'Distributions')

    return dot


####+BEGIN: b:py3:cs:func/typing :funcName "mtdtConceptsGraph_l3" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /mtdtConceptsGraph_l3/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def mtdtConceptsGraph_l3(
####+END:
) -> graphviz.Digraph:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    dot = graphviz.Digraph(
        comment='MTDT-Distribution Concepts',
        # graph_attr={'rankdir':'LR'},
    )

    #  LAYER-1  Summary
    dot.node('MTDT-Mailing', 'MTDT\nMailing\nConcepts\nLAYER 1', shape='circle', style='filled', fillcolor='darkseagreen3')
    dot.node('MailingFile', 'Mailing\nFile', shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('TemplateFile', 'Template\nFile',  shape='parallelogram', style='filled', fillcolor='khaki1')
    dot.node('MailingCmnd', 'Mailing\nCommand', shape='oval', style='filled', fillcolor='khaki1')
    dot.node('ListOfMailingCmnds', 'List of\nMailing\nCommand',  shape='oval', style='filled', fillcolor='khaki1')
    dot.node('SelectedMailings', 'Selected\nList of\nMailings ', style='filled', fillcolor='green')


    # LAYER-2  Summary
    #
    dot.node('MTDT-Distribution', 'MTDT\nDistribution\nConcepts\nLAYER 2', shape='circle', style='filled', fillcolor='darkseagreen3')

    dot.node('OorR', 'Orig Or Recipients', shape='cylinder', style='filled', fillcolor='khaki1')

    dot.node('SendExtent', 'Selected\nSend\nExtent', style='filled', fillcolor='green')
    dot.node('doSend', 'doSend',  shape='rect', style='filled', fillcolor='azure3')
    dot.node('unsentBuf', 'unsentBuffer',  shape='rect', style='filled', fillcolor='azure3')

    # 1.3.1.1  1.3.2.1
    dot.node('Recipients', 'Recipients', style='filled', fillcolor='khaki1')
    dot.node('RecipientsList', 'Recipients List', style='filled', fillcolor='khaki1')
    dot.node('RecipientsListForm', 'Recipients List Form',  style='filled', fillcolor='khaki1')
    dot.node('RecipientsListFormFile', 'Selected\nRecipients\nList\nForm\n File',  style='filled', fillcolor='green')

    dot.node('sendWithExtent', 'sendWithExtent', style='filled', fillcolor='darksalmon')
    dot.node('unsentBuffer', 'Unsent\nMail\nBuffer',  shape='invtrapezium', style='filled', fillcolor='deepskyblue')
    dot.node('sent', '\nResident\nMTA\n(MARMEE)\n ',  shape='cds', style='filled', fillcolor='cyan')

    #####  Adding edges to define hierarchy
    #####
    # 1.1  -- 1.2 -- 1.3
    dot.edge('MTDT-Mailing', 'MailingFile', label='Specification')

    #
    dot.edge('MailingFile', 'TemplateFile')
    dot.edge('MailingFile', 'MailingCmnd', label='Derive')
    dot.edge('TemplateFile', 'MailingCmnd', label='Derive')
    dot.edge('MailingCmnd', 'ListOfMailingCmnds')
    dot.edge('ListOfMailingCmnds', 'SelectedMailings')

    #####  Adding edges to define hierarchy
    #####
    # 1.1  -- 1.2 -- 1.3
    dot.edge('MTDT-Distribution', 'SendExtent', label='Configuration')
    dot.edge('MTDT-Distribution', 'OorR', label='Machinary')


    dot.edge('sendWithExtent', 'unsentBuffer')
    dot.edge('sendWithExtent', 'sent')
    dot.edge('unsentBuffer', 'sent')

    dot.edge('SendExtent', 'doSend', dir='back', label='Enum')
    dot.edge('SendExtent', 'unsentBuf', dir='back', label='Enum')
    dot.edge('SendExtent', 'sendWithExtent', label='inform')

    dot.edge('OorR', 'Recipients')
    dot.edge('Recipients', 'RecipientsList')
    dot.edge('RecipientsList', 'RecipientsListForm')
    dot.edge('RecipientsListForm', 'RecipientsListFormFile')


    # LAYER-3  FULL
    #
    dot.node('MTDT-Share', 'MTDT\nShare\nConcepts\nLAYER 3', shape='circle', style='filled', fillcolor='darkseagreen3')
    dot.node('Interactive', 'Interactive\nUsage', shape='circle', style='filled', fillcolor='darksalmon')

    dot.node('BrowserShare', '\nBrowser\nShare\n ', shape='rarrow', style='filled', fillcolor='salmon')
    dot.node('DiredShare', '\nDired\nShare\n ',  shape='rarrow', style='filled', fillcolor='salmon3')

    #####  Adding edges to define hierarchy

    dot.edge('MTDT-Share', 'Interactive', label='Execution')

    dot.edge('SelectedMailings', 'BrowserShare')
    dot.edge('SelectedMailings', 'DiredShare')

    dot.edge('RecipientsListFormFile', 'BrowserShare')
    dot.edge('RecipientsListFormFile', 'DiredShare')

    dot.edge('Interactive', 'BrowserShare')
    dot.edge('Interactive', 'DiredShare')

    dot.edge('BrowserShare', 'sendWithExtent')
    dot.edge('DiredShare', 'sendWithExtent')

    return dot


####+BEGIN: b:py3:cs:func/typing :funcName "graphWrite" :funcType "Typed" :deco "track"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  F-T-Typed  [[elisp:(outline-show-subtree+toggle)][||]] /graphWrite/  deco=track  [[elisp:(org-cycle)][| ]]
#+end_org """
@cs.track(fnLoc=True, fnEntry=True, fnExit=True)
def graphWrite(
####+END:
        graph: graphviz.Digraph,
        fileType: str,
        fileName: str,
) -> str:
    """ #+begin_org
** [[elisp:(org-cycle)][| *DocStr | ]
    #+end_org """

    fileBase = fileName # Incompelete, when extention is there, use it

    effectiveFileType = fileType
    if fileType == "evince":
        effectiveFileType = "pdf"

    fileName = f"{fileBase}.{effectiveFileType}"

    graph.render(fileBase, format=effectiveFileType, cleanup=True)

    if fileType == "evince":
        # time.sleep(0.4)
        print(f"Running:: evince {fileName} &")
        subprocess.call(f"evince {fileName} &", shell=True)

    return fileName


####+BEGIN: b:py3:cs:orgItem/section :title "CS-Commands"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  /Section/    [[elisp:(outline-show-subtree+toggle)][||]] *CS-Commands*   [[elisp:(org-cycle)][| ]]
#+end_org """
####+END:

####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "mtdtConcepts" :comment "" :extent "verify" :ro "cli" :parsMand "format" :parsOpt "" :argsMin 1 :argsMax 1 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<mtdtConcepts>>  =verify= parsMand=format argsMin=1 argsMax=1 ro=cli   [[elisp:(org-cycle)][| ]]
#+end_org """
class mtdtConcepts(cs.Cmnd):
    cmndParamsMandatory = [ 'format', ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 1, 'Max': 1,}

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
             format: typing.Optional[str]=None,  # Cs Mandatory Param
             argsList: typing.Optional[list[str]]=None,  # CsArgs
    ) -> b.op.Outcome:

        failed = b_io.eh.badOutcome
        callParamsDict = {'format': format, }
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, argsList).isProblematic():
            return failed(cmndOutcome)
        cmndArgsSpecDict = self.cmndArgsSpec()
        format = csParam.mappedValue('format', format)
####+END:
        self.cmndDocStr(f""" #+begin_org
** [[elisp:(org-cycle)][| *CmndDesc:* | ]]  arg0 is ~inPypiPkg~.
        #+end_org """)

        outFileName = self.cmndArgsGet("0", cmndArgsSpecDict, argsList)
        if not outFileName: return(b_io.eh.badOutcome(cmndOutcome))

        graph = mtdtConceptsGraph()
        fileName = graphWrite(
            graph,
            format,
            outFileName,
        )

        result = f"Graph saved as '{fileName}'"

        return cmndOutcome.set(opResults=result,)

####+BEGIN: b:py3:cs:method/args :methodName "cmndArgsSpec" :methodType "anyOrNone" :retType "bool" :deco "default" :argsList "self"
    """ #+begin_org
**  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  Mtd-T-anyOrNone [[elisp:(outline-show-subtree+toggle)][||]] /cmndArgsSpec/ deco=default  deco=default  [[elisp:(org-cycle)][| ]]
    #+end_org """
    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmndArgsSpec(self, ):
####+END:
        """  #+begin_org
*** [[elisp:(org-cycle)][| *cmndArgsSpec:* | ]] arg0 is ~inFile~
        #+end_org """

        cmndArgsSpecDict = cs.arg.CmndArgsSpecDict()
        cmndArgsSpecDict.argsDictAdd(
            argPosition="0",
            argName="outFileName",
            argChoices=[],
            argDescription="Output Base FileName"
        )
        return cmndArgsSpecDict


####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "mtdtConcepts_l0" :comment "" :extent "verify" :ro "cli" :parsMand "format" :parsOpt "" :argsMin 1 :argsMax 1 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<mtdtConcepts_l0>>  =verify= parsMand=format argsMin=1 argsMax=1 ro=cli   [[elisp:(org-cycle)][| ]]
#+end_org """
class mtdtConcepts_l0(cs.Cmnd):
    cmndParamsMandatory = [ 'format', ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 1, 'Max': 1,}

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
             format: typing.Optional[str]=None,  # Cs Mandatory Param
             argsList: typing.Optional[list[str]]=None,  # CsArgs
    ) -> b.op.Outcome:

        failed = b_io.eh.badOutcome
        callParamsDict = {'format': format, }
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, argsList).isProblematic():
            return failed(cmndOutcome)
        cmndArgsSpecDict = self.cmndArgsSpec()
        format = csParam.mappedValue('format', format)
####+END:
        self.cmndDocStr(f""" #+begin_org
** [[elisp:(org-cycle)][| *CmndDesc:* | ]]  arg0 is ~inPypiPkg~.
        #+end_org """)

        outFileName = self.cmndArgsGet("0", cmndArgsSpecDict, argsList)
        if not outFileName: return(b_io.eh.badOutcome(cmndOutcome))

        graph = mtdtConceptsGraph_l0()
        fileName = graphWrite(
            graph,
            format,
            outFileName,
        )

        result = f"Graph saved as '{fileName}'"

        return cmndOutcome.set(opResults=result,)

####+BEGIN: b:py3:cs:method/args :methodName "cmndArgsSpec" :methodType "anyOrNone" :retType "bool" :deco "default" :argsList "self"
    """ #+begin_org
**  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  Mtd-T-anyOrNone [[elisp:(outline-show-subtree+toggle)][||]] /cmndArgsSpec/ deco=default  deco=default  [[elisp:(org-cycle)][| ]]
    #+end_org """
    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmndArgsSpec(self, ):
####+END:
        """  #+begin_org
*** [[elisp:(org-cycle)][| *cmndArgsSpec:* | ]] arg0 is ~inFile~
        #+end_org """

        cmndArgsSpecDict = cs.arg.CmndArgsSpecDict()
        cmndArgsSpecDict.argsDictAdd(
            argPosition="0",
            argName="outFileName",
            argChoices=[],
            argDescription="Output Base FileName"
        )
        return cmndArgsSpecDict


####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "mtdtConcepts_l1" :comment "" :extent "verify" :ro "cli" :parsMand "format" :parsOpt "" :argsMin 1 :argsMax 1 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<mtdtConcepts_l1>>  =verify= parsMand=format argsMin=1 argsMax=1 ro=cli   [[elisp:(org-cycle)][| ]]
#+end_org """
class mtdtConcepts_l1(cs.Cmnd):
    cmndParamsMandatory = [ 'format', ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 1, 'Max': 1,}

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
             format: typing.Optional[str]=None,  # Cs Mandatory Param
             argsList: typing.Optional[list[str]]=None,  # CsArgs
    ) -> b.op.Outcome:

        failed = b_io.eh.badOutcome
        callParamsDict = {'format': format, }
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, argsList).isProblematic():
            return failed(cmndOutcome)
        cmndArgsSpecDict = self.cmndArgsSpec()
        format = csParam.mappedValue('format', format)
####+END:
        self.cmndDocStr(f""" #+begin_org
** [[elisp:(org-cycle)][| *CmndDesc:* | ]]  arg0 is ~inPypiPkg~.
        #+end_org """)

        outFileName = self.cmndArgsGet("0", cmndArgsSpecDict, argsList)
        if not outFileName: return(b_io.eh.badOutcome(cmndOutcome))

        graph = mtdtConceptsGraph_l1()
        fileName = graphWrite(
            graph,
            format,
            outFileName,
        )

        result = f"Graph saved as '{fileName}'"

        return cmndOutcome.set(opResults=result,)

####+BEGIN: b:py3:cs:method/args :methodName "cmndArgsSpec" :methodType "anyOrNone" :retType "bool" :deco "default" :argsList "self"
    """ #+begin_org
**  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  Mtd-T-anyOrNone [[elisp:(outline-show-subtree+toggle)][||]] /cmndArgsSpec/ deco=default  deco=default  [[elisp:(org-cycle)][| ]]
    #+end_org """
    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmndArgsSpec(self, ):
####+END:
        """  #+begin_org
*** [[elisp:(org-cycle)][| *cmndArgsSpec:* | ]] arg0 is ~inFile~
        #+end_org """

        cmndArgsSpecDict = cs.arg.CmndArgsSpecDict()
        cmndArgsSpecDict.argsDictAdd(
            argPosition="0",
            argName="outFileName",
            argChoices=[],
            argDescription="Output Base FileName"
        )
        return cmndArgsSpecDict



####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "mtdtConcepts_l2" :comment "" :extent "verify" :ro "cli" :parsMand "format" :parsOpt "" :argsMin 1 :argsMax 1 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<mtdtConcepts_l2>>  =verify= parsMand=format argsMin=1 argsMax=1 ro=cli   [[elisp:(org-cycle)][| ]]
#+end_org """
class mtdtConcepts_l2(cs.Cmnd):
    cmndParamsMandatory = [ 'format', ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 1, 'Max': 1,}

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
             format: typing.Optional[str]=None,  # Cs Mandatory Param
             argsList: typing.Optional[list[str]]=None,  # CsArgs
    ) -> b.op.Outcome:

        failed = b_io.eh.badOutcome
        callParamsDict = {'format': format, }
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, argsList).isProblematic():
            return failed(cmndOutcome)
        cmndArgsSpecDict = self.cmndArgsSpec()
        format = csParam.mappedValue('format', format)
####+END:
        self.cmndDocStr(f""" #+begin_org
** [[elisp:(org-cycle)][| *CmndDesc:* | ]]  arg0 is ~inPypiPkg~.
        #+end_org """)

        outFileName = self.cmndArgsGet("0", cmndArgsSpecDict, argsList)
        if not outFileName: return(b_io.eh.badOutcome(cmndOutcome))

        graph = mtdtConceptsGraph_l2()
        fileName = graphWrite(
            graph,
            format,
            outFileName,
        )

        result = f"Graph saved as '{fileName}'"

        return cmndOutcome.set(opResults=result,)

####+BEGIN: b:py3:cs:method/args :methodName "cmndArgsSpec" :methodType "anyOrNone" :retType "bool" :deco "default" :argsList "self"
    """ #+begin_org
**  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  Mtd-T-anyOrNone [[elisp:(outline-show-subtree+toggle)][||]] /cmndArgsSpec/ deco=default  deco=default  [[elisp:(org-cycle)][| ]]
    #+end_org """
    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmndArgsSpec(self, ):
####+END:
        """  #+begin_org
*** [[elisp:(org-cycle)][| *cmndArgsSpec:* | ]] arg0 is ~inFile~
        #+end_org """

        cmndArgsSpecDict = cs.arg.CmndArgsSpecDict()
        cmndArgsSpecDict.argsDictAdd(
            argPosition="0",
            argName="outFileName",
            argChoices=[],
            argDescription="Output Base FileName"
        )
        return cmndArgsSpecDict



####+BEGIN: b:py3:cs:cmnd/classHead :cmndName "mtdtConcepts_l3" :comment "" :extent "verify" :ro "cli" :parsMand "format" :parsOpt "" :argsMin 1 :argsMax 1 :pyInv ""
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CmndSvc-   [[elisp:(outline-show-subtree+toggle)][||]] <<mtdtConcepts_l3>>  =verify= parsMand=format argsMin=1 argsMax=1 ro=cli   [[elisp:(org-cycle)][| ]]
#+end_org """
class mtdtConcepts_l3(cs.Cmnd):
    cmndParamsMandatory = [ 'format', ]
    cmndParamsOptional = [ ]
    cmndArgsLen = {'Min': 1, 'Max': 1,}

    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmnd(self,
             rtInv: cs.RtInvoker,
             cmndOutcome: b.op.Outcome,
             format: typing.Optional[str]=None,  # Cs Mandatory Param
             argsList: typing.Optional[list[str]]=None,  # CsArgs
    ) -> b.op.Outcome:

        failed = b_io.eh.badOutcome
        callParamsDict = {'format': format, }
        if self.invocationValidate(rtInv, cmndOutcome, callParamsDict, argsList).isProblematic():
            return failed(cmndOutcome)
        cmndArgsSpecDict = self.cmndArgsSpec()
        format = csParam.mappedValue('format', format)
####+END:
        self.cmndDocStr(f""" #+begin_org
** [[elisp:(org-cycle)][| *CmndDesc:* | ]]  arg0 is ~inPypiPkg~.
        #+end_org """)

        outFileName = self.cmndArgsGet("0", cmndArgsSpecDict, argsList)
        if not outFileName: return(b_io.eh.badOutcome(cmndOutcome))

        graph = mtdtConceptsGraph_l3()
        fileName = graphWrite(
            graph,
            format,
            outFileName,
        )

        result = f"Graph saved as '{fileName}'"

        return cmndOutcome.set(opResults=result,)

####+BEGIN: b:py3:cs:method/args :methodName "cmndArgsSpec" :methodType "anyOrNone" :retType "bool" :deco "default" :argsList "self"
    """ #+begin_org
**  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  Mtd-T-anyOrNone [[elisp:(outline-show-subtree+toggle)][||]] /cmndArgsSpec/ deco=default  deco=default  [[elisp:(org-cycle)][| ]]
    #+end_org """
    @cs.track(fnLoc=True, fnEntry=True, fnExit=True)
    def cmndArgsSpec(self, ):
####+END:
        """  #+begin_org
*** [[elisp:(org-cycle)][| *cmndArgsSpec:* | ]] arg0 is ~inFile~
        #+end_org """

        cmndArgsSpecDict = cs.arg.CmndArgsSpecDict()
        cmndArgsSpecDict.argsDictAdd(
            argPosition="0",
            argName="outFileName",
            argChoices=[],
            argDescription="Output Base FileName"
        )
        return cmndArgsSpecDict



####+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :sep nil :title "Main" :anchor ""  :extraInfo "Framework DBlock"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*     [[elisp:(outline-show-subtree+toggle)][| _Main_: |]]  Framework DBlock  [[elisp:(org-shifttab)][<)]] E|
#+end_org """
####+END:

####+BEGIN: b:py3:cs:framework/main :csInfo "csInfo" :noCmndEntry "examples" :extraParamsHook "g_extraParams" :importedCmndsModules "g_importedCmndsModules"
""" #+begin_org
*  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_ _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_ [[elisp:(outline-show-branches+toggle)][|=]] [[elisp:(bx:orgm:indirectBufOther)][|>]] *[[elisp:(blee:ppmm:org-mode-toggle)][|N]]*  CsFrmWrk   [[elisp:(outline-show-subtree+toggle)][||]] =g_csMain= (csInfo, _examples_, g_extraParams, g_importedCmndsModules)
#+end_org """

if __name__ == '__main__':
    cs.main.g_csMain(
        csInfo=csInfo,
        noCmndEntry=examples,  # specify a Cmnd name
        extraParamsHook=g_extraParams,
        importedCmndsModules=g_importedCmndsModules,
    )

####+END:

####+BEGIN: b:py3:cs:framework/endOfFile :basedOn "classification"
""" #+begin_org
* [[elisp:(org-cycle)][| *End-Of-Editable-Text* |]] :: emacs and org variables and control parameters
#+end_org """

#+STARTUP: showall

### local variables:
### no-byte-compile: t
### end:
####+END:
