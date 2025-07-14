<!--
.. title: Simple computer architecture using direct-mapped cache memory system in VHDL using Quartus for DE0_CV FPGA 
.. slug: cache_memory-fpga-vhdl-quartus
.. date: 2017-07-16 17:38:16 UTC-04:00
.. tags: FPGA, VHDL, Quartus, DE0_CV FPGA, direct-mapped cache, cache memory, microprocessor, 
.. category: 
.. link: 
.. description: 
.. type: text
-->

<h1>Table of Contents</h1>
[TOC]

# Source files
Source code and docs on [GitHub](https://github.com/paulomarconi/Cache_memory-FPGA-VHDL-Quartus)

# Description
Design, simulation and implementation of a direct-mapped cache memory system in written VHDL using Altera Quartus Prime and DE0_CV FPGA development kit. The results are compared to a system without cache memory to verify the performance enhancement.

Based on Simple Microprocessor Design (ESD Book Chapter 3), originally created by Weijun Zhang, Copyright 2001, [http://esd.cs.ucr.edu/labs/tutorial/](http://esd.cs.ucr.edu/labs/tutorial/)

Coursework project:

- University of New Brunswick, Universidad Mayor de San Andrés
- Module: ECE6733 - Computer Architecture Performance +       
- Prof. Eduardo Castillo    

# Guideline
- Open `SimpleCompArch.qar` archive project, compile with `Quartus 16.1` and simulate with `ModelSim 10.5b`. 
- Set time simulation to $17 ns$ to see all resultant elements of matrix multiplication C.

# Problem formulation

<object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/paulomarconi/Cache_memory-FPGA-VHDL-Quartus/master/Guidelines__P2_W17.pdf" width="100%" height="1200px"> 
	<p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/paulomarconi/Cache_memory-FPGA-VHDL-Quartus/master/Guidelines__P2_W17.pdf">download the PDF.</a></p>  
</object>

# The proposed solution

<object data="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/paulomarconi/Cache_memory-FPGA-VHDL-Quartus/master/FinalProjectFico_docs/Project_Report/Project_Report.pdf" width="100%" height="1200px"> 
	<p>It appears you don't have a PDF plugin for this browser or JavaScript is disabled. You can <a href="https://drive.google.com/viewerng/viewer?embedded=true&url=https://raw.githubusercontent.com/paulomarconi/Cache_memory-FPGA-VHDL-Quartus/master/FinalProjectFico_docs/Project_Report/Project_Report.pdf">download the PDF.</a></p>
</object>

# Test on DE0_CV FPGA

- Video of operation `FinalProjectFico.mp4` uploaded to [https://www.youtube.com/watch?v=Zvd96RGTEjk](https://www.youtube.com/watch?v=Zvd96RGTEjk)

<object data="https://www.youtube.com/embed/Zvd96RGTEjk?si=ERB3pNkt9GhPxDy7" width="100%" height="600px"> 
	<p>It appears you don't have a video plugin for this browser or JavaScript is disabled. You can <a href="https://www.youtube.com/watch?v=Zvd96RGTEjk">download the video.</a></p>
</object>
