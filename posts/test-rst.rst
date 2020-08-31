.. title: Test rst
.. slug: test-rst
.. date: 2020-08-22 14:11:29 UTC-04:00
.. tags: 
.. category: 
.. link: 
.. description: 
.. type: text
.. has_math: true

=====
Title
=====
Subtitle
--------
Titles are underlined (or over-
and underlined) with a printing of
nonalphanumeric 7-bit ASCII
character. Recommended choices
are "``= - ` : ' " ~ ^ _ * + # < >``".
The underline/overline must be at
least as long as the title text.

A lone top-level (sub)section
is lifted up to be the document's
(sub)title.


This is a paragraph.  It's quite
short.

    This paragraph will result in an indented block of
    text, typically used for quoting other text.

This is another one.

2*3
``*``
*text*
``double back-quotes``
**bold**

what
  Definition lists associate a term with a definition.

*how*
  The term is a one-line phrase, and the definition is one or more
  paragraphs or body elements, indented relative to the term.
  Blank lines are not allowed between term and definition.

Chapter 1 Title
===============
test

Inline math, :math:`e^{ix} = \cos x + i\sin x`

.. math::

  \begin{cases}
  \begin{aligned}
      \hat{x}_{k+1|k+1} & = \hat{x}_{k+1|k} + \gamma_{k+1} K_{k+1} \left( y_{k+1} -  C \hat{x}_{k+1|k} \right) \\
      e_{k+1|k+1}       & = \left(I-\gamma_{k+1} K_{k+1} C \right) e_{k+1|k} -\gamma_{k+1} K_{k+1} \nu_{k+1}   \\
      P_{k+1|k+1}       & = P_{k+1|k} - \gamma_{k+1} K_{k+1}C~P_{k+1|k}                                        \\
      K_{k+1}           & = P_{k+1|k} C^\intercal (C P_{k+1|k} C^\intercal+R_z)^{-1}
  \end{aligned}
  \end{cases}


.. code-block:: octave

  for k = 1:nk+1 
      % Constrained MPC control law (RH-FH) LQ-MPC at every step k        
      if mode == 'reg'
          [Ustar,fval,flag] = quadprog(H,L*x,Pc,qc+Sc*x); 
      elseif mode == 'trk'
          [NUstar,fval,flag] = quadprog(H,L*epsilon(:,k),Pc_ssto,qc_ssto+Sc_ssto*epsilon(:,k)); 
      end
      % check feasibility
      if flag < 1 
          disp(['Optimization is infeasible at k = ',num2str(k)]);
          break;    
      end
  end


.. raw:: html

  <pre class="lang-markup" data-jsonp="https://api.github.com/repos/paulomarconi/MPC-SSTO/contents/README.md"></pre>

.. raw:: html

  <embed src="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/paulomarconi/MPC-SSTO/master/report/root.pdf" width="100%" height="800px" type="application/pdf">


