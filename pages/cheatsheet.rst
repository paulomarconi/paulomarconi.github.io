.. title: Cheatsheet
.. slug: cheatsheet
.. date: 2020-08-31 22:30:03 UTC-04:00
.. tags: cheatsheet, Nikola, Markdown, rST, LaTex, Prism, pdf
.. category: 
.. link: 
.. description: 
.. type: text
.. has_math: true

Nikola
======

https://getnikola.com/handbook.html

.. code-block:: bash

    nikola serve --browser
    nikola serve
    nikola build
    nikola auto
    nikola new_post -f ipynb 
    nikola github_deploy
    nikola check -f --clean-files


reStructuredText
================


https://getnikola.com/quickstart.html

LaTex
-----

Inline syntax ``:math:`e^{ix} = \cos x + i\sin x``` -> :math:`e^{ix} = \cos x + i\sin x`

.. code-block:: LaTex

        .. math::

        \begin{cases}
        \begin{aligned}
            \hat{x}_{k+1|k+1} & = \hat{x}_{k+1|k} + \gamma_{k+1} K_{k+1} \left( y_{k+1} -  C \hat{x}_{k+1|k} \right) \\
            e_{k+1|k+1}       & = \left(I-\gamma_{k+1} K_{k+1} C \right) e_{k+1|k} -\gamma_{k+1} K_{k+1} \nu_{k+1}   \\
            P_{k+1|k+1}       & = P_{k+1|k} - \gamma_{k+1} K_{k+1}C~P_{k+1|k}                                        \\
            K_{k+1}           & = P_{k+1|k} C^\intercal (C P_{k+1|k} C^\intercal+R_z)^{-1}
        \end{aligned}
        \end{cases}


Code highlighting
-----------------

.. code-block:: octave

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


Prism import
------------

.. code-block:: html

        .. raw:: html

            <pre class="lang-markup" data-jsonp="https://api.github.com/repos/<user_name>/<repository_name>/contents/<file>"></pre>

Embedded pdf
------------

.. code-block:: html 

        .. raw:: html

            <object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf" width="100%" height="800px"> 
                <p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf">download the PDF.</a></p>  
            </object> 




Markdown
========

https://www.markdownguide.org/basic-syntax/

LaTex
-----

Inline syntax ``$e^{ix} = \cos x + i\sin x$`` -> $e^{ix} = \cos x + i\sin x$

Complex LaTex.

.. code-block:: LaTex

    $$
    \begin{cases}
    \begin{aligned}
        \hat{x}_{k+1|k+1} & = \hat{x}_{k+1|k} + \gamma_{k+1} K_{k+1} \left( y_{k+1} -  C \hat{x}_{k+1|k} \right) \\
        e_{k+1|k+1}       & = \left(I-\gamma_{k+1} K_{k+1} C \right) e_{k+1|k} -\gamma_{k+1} K_{k+1} \nu_{k+1}   \\
        P_{k+1|k+1}       & = P_{k+1|k} - \gamma_{k+1} K_{k+1}C~P_{k+1|k}                                        \\
        K_{k+1}           & = P_{k+1|k} C^\intercal (C P_{k+1|k} C^\intercal+R_z)^{-1}
    \end{aligned}
    \end{cases}
    $$

Alternatively, for ``\text{...}`` LaTex command.

.. code-block::

    <div class="math">
        \begin{aligned}
        \bar{\gamma} > \gamma_c,&~ \bar{\nu} > \nu_c \\
        \text{s.t.}~~ 
        1-\dfrac{1}{max_i~|\lambda^u_i(A)|^2} \leq \gamma_c,&~\nu_c \leq 1-\dfrac{1}{\prod_i~|\lambda^u_i(A)|^2} 
        \end{aligned} 
    </div>

Prism import
------------

.. code-block:: html 

    <pre class="lang-markup" data-jsonp="https://api.github.com/repos/<user_name>/<repository_name>/contents/<file>"></pre>

Embedded pdf
------------

.. code-block:: html 

    <object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf" width="100%" height="800px"> 
        <p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf">download the PDF.</a></p>  
    </object> 