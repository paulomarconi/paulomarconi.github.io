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
    nikola new_post -f markdown
    nikola new_post -f rest
    nikola new_post -f html
    nikola new_post -f ipynb
    nikola github_deploy
    nikola check -f --clean-files

Jupyter line/cell magic commands
====================================
https://metakernel.readthedocs.io/en/latest/source/README.html

.. code-block:: bash

    %%file 'c:/<absolute_path>/<file>.m'
    cd c:/<absolute_path>/<file>.m


Conda
=====
https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf

.. code-block:: bash

    conda create --name <env_name> python=3.6
    conda env list
    conda env remove --name <env_name>
    conda update --all  // update all packages in the current environment to the latest version  

Git
===
https://docs.github.com/en/github/using-git/

.. code-block:: bash

    git init 
    git remote -v # list remote repositories
    git remote rm <remote_name> # remove remote repository
    git remote add origin https://github.com/<user_name>/<repo_name>.git 
    git status
    git add <file_name> # add file to staging area
    git add --all # add all files to staging area
    git add . # add all files in the current directory to staging area
    git commit -m "commit message" # commit changes with a message
    git commit -a -m "commit message"  # add and commit all modified files
    git push <remote_name> <branch_name> # push changes to remote repository
    git push origin master # push changes to master branch
    git push -f origin master # force push changes to master branch


Images with defined size and caption
====================================

.. code-block:: html 

    <img src="/image.png" alt="drawing" width="100%"/>


.. code-block:: html 

    <figure>
        <img src="/images/image.png" alt="drawing" width="100%"/>
        <center><figcaption>Fig.1 - caption</figcaption></center>
    </figure> 


pdf2htmlEX
==========
https://pdf2htmlex.github.io/pdf2htmlEX/

.. code-block:: bash

    pdf2htmlEX --zoom 1.3 test.pdf
    pdf2htmlEX --embed cfijo --dest-dir out test.pdf


Markdown
========
https://www.markdownguide.org/basic-syntax/


md + LaTex
----------

Inline syntax ``$e^{ix} = \cos x + i\sin x$`` outputs $e^{ix} = \cos x + i\sin x$

Complex formulas.

.. code-block:: LaTex

    \begin{cases}
    \begin{aligned}
        \hat{x}_{k+1|k+1} & = \hat{x}_{k+1|k} + \gamma_{k+1} K_{k+1} \left( y_{k+1} -  C \hat{x}_{k+1|k} \right) \\
        e_{k+1|k+1}       & = \left(I-\gamma_{k+1} K_{k+1} C \right) e_{k+1|k} -\gamma_{k+1} K_{k+1} \nu_{k+1}   \\
        P_{k+1|k+1}       & = P_{k+1|k} - \gamma_{k+1} K_{k+1}C~P_{k+1|k}                                        \\
        K_{k+1}           & = P_{k+1|k} C^\intercal (C P_{k+1|k} C^\intercal+R_z)^{-1}
    \end{aligned}
    \end{cases}


I recommend to use `<div class="math">...</div>` if you copy the code directly from LaTex. It's useful for ``\text{...}``, ``\align{...}``, and other commands which are not compiled correctly, even if you use ``$$...$$``. Also, works good with ``\label{eq:equation1}`` and ``\eqref{eq:equation1}``, without the need to use ``tag{eq1}``.

.. code-block::

    <div class="math">
        \begin{aligned}
        \bar{\gamma} > \gamma_c,&~ \bar{\nu} > \nu_c \\
        \text{s.t.}~~ 
        1-\dfrac{1}{max_i~|\lambda^u_i(A)|^2} \leq \gamma_c,&~\nu_c \leq 1-\dfrac{1}{\prod_i~|\lambda^u_i(A)|^2} 
        \end{aligned} 
    </div>

md + referencing equations
--------------------------
Although  ``\label{eq:equation1}`` and ``\eqref{eq:equation1}`` works good with `<div class="math">...</div>`, the alternative is to use tags in Jupyter Notebook.

.. code-block:: octave

    \begin{align}\label{eq1}\tag{1}
    a &= b+c \\
    a &= ... 
    \end{align}

    See ([1](#mjx-eqn-eq1))



md + Prism import
-----------------

.. code-block:: html 

    <pre class="lang-css line-numbers" data-jsonp="https://api.github.com/repos/<user_name>/<repository_name>/contents/<file>"></pre>

md + Embedded pdf
-----------------

.. code-block:: html 

    <object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name>/<repository_name>/master/<file_name>.pdf" width="100%" height="1200px"> 
        <p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf">download the PDF.</a></p>  
    </object> 





reStructuredText
================
https://getnikola.com/quickstart.html


rST + LaTex 
-----------

Inline syntax ``:math:`e^{ix} = \cos x + i\sin x``` outputs :math:`e^{ix} = \cos x + i\sin x`

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


rST + Code highlighting
-----------------------

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


rST + Prism import
------------------

.. code-block:: html

        .. raw:: html

            <pre class="lang-css line-numbers" data-jsonp="https://api.github.com/repos/<user_name>/<repository_name>/contents/<file>"></pre>

rST + Embedded pdf
------------------

.. code-block:: html 

        .. raw:: html

            <object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf" width="100%" height="800px"> 
                <p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/<user_name/<repository_name>/master/<file_name>.pdf">download the PDF.</a></p>  
            </object> 


License
====================
| https://choosealicense.com/licenses/ 
| https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.txt


+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Type of Work                                            | Recommended License                                                                        |
+=========================================================+============================================================================================+
| Software                                                | GPL 3.0 or later                                                                           |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Educational Content/Media (non-commercial reuse only)   | CC BY-NC-SA 4.0 (for non-commercial reuse) or GPL 3.0 (code)                               |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Text (e.g., blog posts, articles)                       | CC BY 4.0/CC BY-SA 4.0 (for commercial reuse) or GPL 3.0 (code)                            |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Research (e.g., papers, theses)                         | CC BY 4.0/CC BY-SA 4.0 (for commercial reuse) or GPL 3.0 (code)                            |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Data (e.g., datasets, databases)                        | CC0 1.0 Universal (for public domain dedication) or CC BY 4.0 (for attribution)            |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| Circuit Designs                                         | GPL 3.0 (code), CERN OHL v2 Permissive/Strongly/Weakly Reciprocal (hardware)               |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
| 3D Printed objects                                      | CC BY 4.0/CC BY-SA 4.0 (creative, .stl), CERN OHL/GPL (functional, code)                   |
+---------------------------------------------------------+--------------------------------------------------------------------------------------------+
