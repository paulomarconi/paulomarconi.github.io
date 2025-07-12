<!--
.. title: Modelo dinámico de un motor DC con tren de engranajes
.. slug: DCmotor
.. date: 2023-04-12 14:29:38 UTC-04:00
.. tags: modelo dinámico, espacio de estados, punto de equilibrio, ecuaciones diferenciales, motor DC
.. category: 
.. link: 
.. description: 
.. type: text
.. has_math: true
-->

<h1>Tabla de Contenidos</h1>
[TOC]

# Código Fuente (inglés)
Versión [PDF](https://raw.githubusercontent.com/paulomarconi/DCmotor/master/asst01_2017/asst01_2017.pdf)/[HTML](../../files/DCmotor/DCmotor.html). Código fuente en LaTex disponible en [GitHub](https://github.com/paulomarconi/DCmotor). 

# Introducción
El objetivo es modelar la dinámica de un motor DC de servomotor con tren de engranajes, Fig. 1, y deducir dos puntos de equilibrio.

<figure>
    <center><img src="/images/DCmotor/DCmotor.png" alt="DCmotor" width="35%"/></center>
    <center><figcaption>Fig.1 - Motor DC de servomotor con tren de engranajes.</figcaption></center>
</figure>

# Análisis del Diagrama de Cuerpo Libre

El sistema se puede descomponer en dos secciones: una mecánica rotacional y una electromecánica. La mecánica rotacional se puede derivar de la siguiente manera,

<figure>
    <center><img src="/images/DCmotor/Rotational_free-body.png" alt="Rotational_free-body" width="35%"/></center>
    <center><figcaption>Fig.2 - Diagrama de cuerpo libre mecánico rotacional.</figcaption></center>
</figure>

donde $\theta$ es el desplazamiento angular, $\omega$ es la velocidad angular, $B$ es el coeficiente de amortiguamiento viscoso rotacional, $K$ es el coeficiente de rigidez, $J$ es el momento de inercia, $f_c$ es la fuerza de contacto entre dos engranajes y $r$ es el radio del engranaje.


La sección electromecánica (motor DC) es

<figure>
    <center><img src="/images/DCmotor/Electromechanical_free-body.png" alt="Electromechanical_free-body" width="35%"/></center>
    <center><figcaption>Fig.3 - Diagrama de cuerpo libre electromecánico.</figcaption></center>
</figure>
donde $R_F$ es la resistencia del campo, $L_F$ es la inductancia del campo, $E_F$ es la tensión de campo constante aplicada, e $i_F$ es la corriente de campo de entrada. $R_A$ es la resistencia estacionaria, $L_A$ es la inductancia estacionaria, y $e_m$ es la tensión inducida, $i_A$ es la corriente estacionaria de entrada, y $e_i(t)$ es la tensión de armadura aplicada, y $\tau_e$ es el par electromecánico que impulsa el rotor.

Si la densidad de flujo $\mathcal{B}$ es

<div class="math">
\begin{align}
	\mathcal{B} & = \frac{\phi(i_F)}{A}           
\end{align}
</div>

el par en el rotor es

<div class="math">s
\begin{align}
	\tau_e      & = \mathcal{B} l a~i_A \nonumber \\
	\tau_e      & = \frac{l a}{A} \phi(i_F) i_A \label{eq:tau_e}
\end{align}
</div>

donde $\phi(i_F)$ es el flujo inducido por $i_F$, $A$ es el área transversal de la trayectoria de flujo en la brecha de aire entre el rotor y el estator, $l$ es la longitud total de los conductores de la armadura dentro del campo magnético, y $a$ es el radio de la armadura.

Además, la tensión inducida en la armadura $e_m$ puede escribirse como

<div class="math">
\begin{align}
	e_m & = \frac{l a}{A} \phi(i_F) \omega
\end{align}
</div>

donde tanto $\tau_e$ como $e_m$ dependen de la geometría del motor DC.

## Sistema dinámico
Comenzamos aplicando la ley de D'Alembert (reformulación de la ley de Newton) al sistema mecánico rotacional.

<div class="math">
\begin{align}
	\sum \tau_{all}                                          & = 0 \nonumber                 \\
	J_1 \dot{\omega}_1 + B_1 \omega_1 + r_1 f_c              & = \tau_e(t)   \label{eq:Rot1} \\
	J_2 \dot{\omega}_2 + B_2 \omega_2 + K_2 \theta - r_2 f_c & = \tau_L(t)	 \label{eq:Rot2}
\end{align}
</div>

donde $\tau_{all}$ son los torques que actúan sobre un cuerpo, $K\theta$ es el torque de rigidez, $B\omega$ es el torque viscoso-friccional, $J\dot{\omega}$ es el torque inercial, $\tau_e(t)$ es el torque de conducción, $\tau_L(t)$ es el torque de carga y $r f_c$ es el torque de contacto.

Debido a la relación entre engranajes,

<div class="math">
\begin{align*}
	\theta_1       & = N \theta_2       \\
	\omega_1       & = N \omega_2       \\
	\dot{\omega}_1 & = N \dot{\omega}_2 \\
	N              & = \frac{r_2}{r_1}
\end{align*}
</div>

donde $N$ es la relación de radio de los engranajes. Resolvemos \eqref{eq:Rot1} y \eqref{eq:Rot2} en términos de $\omega_2$ y $\theta_2$,

<div class="math">
\begin{align}
	(J_2+N^2 J_1)\dot{\omega}_2+(B_2+N^2 B_1)\omega_1+K_2 \theta_2-N \tau_e(t)-\tau_L(t) = 0 \nonumber 
\end{align}
</div>

definiendo las relaciones

<div class="math">
\begin{align*}
	J_{eq} & = J_2+N^2 J_1 \\
	B_{eq} & = B_2+N^2 B_1
\end{align*}
</div>

se convierte en

<div class="math">
\begin{align}	
	J_{eq} \dot{\omega}_2+B_{eq} \omega_2+K_2 \theta_2-N \tau_e(t)-\tau_L(t) = 0 \label{eq:Rot3}
\end{align}
</div>

Ahora, derivemos las ecuaciones de la sección electromecánica utilizando la ley de Kirchhoff.

<div class="math">
\begin{align}
	\sum V_{all}            & = 0 		\nonumber             \\
	e_m+V_{L_{A}}+V_{R_{A}} & = e_i(t) 	\label{eq:Elec1}
\end{align}
</div>

donde $V_{all}$ son las tensiones inducidas en el rotor y el estator, $V_{L_{A}}$ es la tensión de resistencia estacionaria, $V_{R_{A}}$ es la tensión de inductancia estacionaria. 


Si $i_F$ está definido como constante, entonces \eqref{eq:tau_e} es

<div class="math">
\begin{align}
	\tau_e(t) & = \left( \frac{l a}{A} \phi(i_F) \right) i_A(t)	\nonumber \\
	\tau_e(t) & = \alpha i_A(t)
\end{align}
</div>

donde $\alpha$ es el parámetro interno del motor DC.

Luego, simplificando y usando \eqref{eq:Rot3} y \eqref{eq:Elec1} el sistema dinámico es,

<div class="math">
\begin{align}
	J_{eq} \dot{\omega}_2+B_{eq} \omega_2+K_2 \theta_2-N \tau_e - \tau_L & = 0 \\
	L_A \dot{i}_A + R_A i_A + \alpha \omega_1 - e_i                      & = 0
\end{align}
</div>



# Ecuaciones en espacio de estados
Definamos las ecuaciones de espacio de estados parar $x=\left[ \theta_2~\dot{\theta}_2~i_A \right]^{\intercal}$. Del sistema dinámico,

<div class="math">
\begin{align*}
	J_{eq} \ddot{\theta}_2+B_{eq} \dot{\theta}_2+K_2 \theta_2-N \alpha i_A-\tau_L & = 0 \\
	L_A \dot{i}_A + R_A i_A + \alpha \omega_1 - e_i                               & = 0                              
\end{align*}
</div>

reordenando,

<div class="math">
\begin{align*}
	\ddot{\theta}_2 & = -\frac{B_{eq}}{J_{eq}} \dot{\theta}_2 - \frac{K_2}{J_{eq}} \theta_2 + \frac{N \alpha}{J_{eq}} i_A - \frac{1}{J_{eq}} \tau_L \\\
	\dot{i}_A       & = -\frac{R_A}{L_A} i_A -\frac{N \alpha}{L_A} \dot{\theta}_2 + \frac{1}{L_A} e_i
\end{align*}
</div>

definiendo los estados como

<div class="math">
\begin{align*}
	\begin{cases}
		x_1 & = \theta_2, \quad \dot{x}_1 = \dot{\theta}_2 = x_2                                                                                                                  \\\
		x_2 & = \dot{\theta}_2, \quad \dot{x}_2  = \ddot{\theta}_2 =  -\frac{B_{eq}}{J_{eq}} x_2 - \frac{K_2}{J_{eq}} x_1 + \frac{N \alpha}{J_{eq}} x_3 - \frac{1}{J_{eq}} \tau_L \\\
		x_3 & = i_A, \quad \dot{x}_3 = \dot{i}_A = -\frac{R_A}{L_A} x_3 -\frac{N \alpha}{L_A} x_2 + \frac{1}{L_A} e_i
	\end{cases}	
\end{align*}
</div>

entonces

<div class="math">
\begin{align}
\begin{bmatrix}
	\dot{x}_1 \\
	\dot{x}_2 \\
	\dot{x}_3
\end{bmatrix}
&=
\underbrace{
	\begin{bmatrix}
		0                   & 1                      & 0                       \\
		-\frac{K_2}{J_{eq}} & -\frac{B_{eq}}{J_{eq}} & \frac{N \alpha}{J_{eq}} \\
		0                   & -\frac{N \alpha}{L_A}  & -\frac{R_A}{L_A}
	\end{bmatrix}
}_A
\underbrace{
	\begin{bmatrix}
		x_1 \\
		x_2 \\
		x_3
	\end{bmatrix}
}_\mathbf{x}
+
\underbrace{
	\begin{bmatrix}
		0 & 0               & 0             \\
		0 & -\frac{1}{J_eq} & 0             \\
		0 & 0               & \frac{1}{L_A}
	\end{bmatrix}
}_B
\underbrace{
	\begin{bmatrix}
		0      \\
		\tau_L \\
		e_i
	\end{bmatrix}
}_\mathbf{u}
\\
\mathbf{\dot{x}} &= A \mathbf{x} + B \mathbf{u} \label{eq:sys1}
\end{align}
</div>

La salida $y=\dot{\omega}_2$ se puede definir como

<div class="math">
\begin{align}
y &=
\underbrace{
	\begin{bmatrix}
		0 & 1 & 0
	\end{bmatrix}
}_C
\begin{bmatrix}
	x_1 \\
	x_2 \\
	x_3
\end{bmatrix}
+
\underbrace{
	\begin{bmatrix}
		0 & 0 & 0
	\end{bmatrix}
}_D
e_i
\\
y &= C \mathbf{\dot{x}}
\end{align}
</div>

# Punto de equilibrio $\mathbf{x_0}$
Usando $\mathbf{\dot{x}}=0$ en \eqref{eq:sys1}, el punto de equilibrio $\mathbf{x_0}$ puede calcularse como 

<div class="math">
\begin{align}
	0            & = A \mathbf{x_0} +B \mathbf{u} \\
	\mathbf{x_0} & = - A^{-1} B \mathbf{u} \\
	\begin{bmatrix}
		x_{1_0} \\
		x_{2_0} \\
		x_{3_0}
	\end{bmatrix}
	& = - 
	\begin{bmatrix}
		0                   & 1                      & 0                       \\
		-\frac{K_2}{J_{eq}} & -\frac{B_{eq}}{J_{eq}} & \frac{N \alpha}{J_{eq}} \\
		0                   & -\frac{N \alpha}{L_A}  & -\frac{R_A}{L_A}
	\end{bmatrix}^{-1}
	\begin{bmatrix}
		0 & 0               & 0             \\
		0 & -\frac{1}{J_eq} & 0             \\
		0 & 0               & \frac{1}{L_A}
	\end{bmatrix}
	\begin{bmatrix}
		0      \\
		\tau_L \\
		e_i
	\end{bmatrix}
\end{align}
</div>

Resolviendo para torque externo nulo $\tau_L=0$, voltaje de armadura aplicado cosntante $e_i=E_0$ y $K_2 \neq 0$,

<div class="math">
\begin{align*}
	0 & = x_{2_0}                                                                                      \\
	0 & = -\frac{K_2}{J_{eq}} x_{1_0} -\frac{B_{eq}}{J_{eq}} x_{2_0} + \frac{N \alpha}{J_{eq}} x_{3_0} \\
	0 & = -\frac{N \alpha}{L_A}  x_{2_0} -\frac{R_A}{L_A} x_{3_0} + \frac{1}{L_A} E_0
\end{align*}
</div>

dado que to $x_{2_0}=0$, tenemos que

<div class="math">
\begin{align*}
	0 & = -\frac{K_2}{J_{eq}} x_{1_0} + \frac{N \alpha}{J_{eq}} x_{3_0} \\
	0 & = -\frac{R_A}{L_A} x_{3_0} + \frac{1}{L_A} E_0
\end{align*}
entonces
\begin{align*}
	x_{1_0} & = \frac{N \alpha}{K_2 R_A} E_0 \\
	x_{3_0} & = \frac{1}{R_A} E_0
\end{align*}
therefore the equilibrium point is
\begin{align}
	\mathbf{x_0} &= 
	\begin{bmatrix}
		x_{1_0} \\
		x_{2_0} \\
		x_{3_0}
	\end{bmatrix}
	=
	\begin{bmatrix}
		\frac{N \alpha}{K_2 R_A} \\
		0 \\
		\frac{1}{R_A}
	\end{bmatrix}
	E_0
\end{align}
</div>

Este punto de equilibrio indica que una $\textbf{constante desplazamiento angular (giro)}$ producida por $x_{1_0}=\theta_{2_0}$ es suficiente para equilibrar la constante tensión de armadura aplicada $e_i=E_0$.

Por otro lado, si resolvemos para sin torque externo $\tau_L=0$, tensión de armadura aplicada constante $e_i=E_0$, y sin rigidez $K_2=0$. El problema es

<div class="math">
\begin{align*}
	\begin{bmatrix}
		x_{1_0} \\
		x_{2_0} \\
		x_{3_0}
	\end{bmatrix}
	& = - 
	\begin{bmatrix}
		0 & 1                      & 0                       \\
		0 & -\frac{B_{eq}}{J_{eq}} & \frac{N \alpha}{J_{eq}} \\
		0 & -\frac{N \alpha}{L_A}  & -\frac{R_A}{L_A}
	\end{bmatrix}^{-1}
	\begin{bmatrix}
		0 & 0               & 0             \\
		0 & -\frac{1}{J_eq} & 0             \\
		0 & 0               & \frac{1}{L_A}
	\end{bmatrix}
	\begin{bmatrix}
		0   \\
		0   \\
		E_0
	\end{bmatrix}
\end{align*}
</div>

Si eliminamos $x_{1_0}$ porque la primera columna de $A^{-1}$ tiene ceros, el problema se reduce a

<div class="math">
\begin{align}
	\begin{bmatrix}
		x_{2_0} \\
		x_{3_0}
	\end{bmatrix}
	& = - 
	\begin{bmatrix}
		-\frac{B_{eq}}{J_{eq}} & \frac{N \alpha}{J_{eq}} \\
		-\frac{N \alpha}{L_A}  & -\frac{R_A}{L_A}
	\end{bmatrix}^{-1}
	\begin{bmatrix}
		-\frac{1}{J_eq} & 0             \\
		0               & \frac{1}{L_A}
	\end{bmatrix}
	\begin{bmatrix}
		0   \\
		E_0
	\end{bmatrix}
\end{align}
</div>

resolviendo tenemos que

<div class="math">
\begin{align}
	\begin{bmatrix}
		x_{2_0} \\
		x_{3_0}
	\end{bmatrix}
	& = 
	\begin{bmatrix}
		\frac{N \alpha}{B_{eq} R_A+(N \alpha)^2}\\
		\frac{-B_{eq}}{B_{eq} R_A+(N \alpha)^2}
	\end{bmatrix}
	E_0
\end{align}
</div>

lo que indica que una $\textbf{velocidad angular constante}$ producida por $x_{2_0}=\dot{\theta_{2_0}}$ es necesaria para equilibrar la constante tensión de armadura aplicada $e_i=E_0$.

# Referencias
[1] Close, Charles M. and Frederick, Dean K. and Newell, Jonathan C., *Modeling and Analysis of Dynamic Systems*, 2001, ISBN 0471394424.

