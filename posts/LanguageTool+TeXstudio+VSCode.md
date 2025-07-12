<!--
.. title: LanguageTool + TeXstudio + VSCode
.. slug: LanguageTool+TeXstudio+VSCode
.. date: 2020-09-15 09:58:24 UTC-04:00
.. tags: LanguageTool, TeXstudio, VSCode
.. category: 
.. link: 
.. description: 
.. type: text
-->

<h1>Table of Contents</h1>
[TOC]

# Introduction
LanguageTool is a proofreading open-source software written in Java that allows you to integrate grammar, and spell checking on several text editors. I use it mainly with TeXstudio for LaTex documents but when I tried to use in parallel with VSCode I found some problems. 

The objective of this brief tutorial is to configure TeXstudio and VSCode to work with LanguageTool in parallel. 

# Download and configure LanguageTool
- Download [LanguageTool desktop version for offline use](https://languagetool.org/download/).
- Unzip the folder.
- Run `languagetool.jar`
- In `TexChecking > Options` enable `Run as server on port 8081`
  <img src="/images/LanguageTool+TeXstudio+VSCode/LanguageTool.png" alt="LanguageTool" width="70%"/>

# Configure TeXstudio
- Go to `Options > Configure TeXstudio > Language Checking`
- Configure `Server URL`, `LT Path`, and `LT Arguments` as follows.
  <img src="/images/LanguageTool+TeXstudio+VSCode/TeXstudio_config.png" alt="TeXstudio_config" width="70%"/>
- Maybe you'll find that some users add `--allow-origin "*"` to `LT Arguments`. It's not necessary for TeXstudio because `--allow-origin "*"` is used to serve from the browser add-on, see [official documentation](https://dev.languagetool.org/http-server).

# Check LanguageTool is activated on TeXstudio
- Go to `Help > Check LanguageTool`. The `LT Report.txt` will be opened showing `LT current status: working`.
  <img src="/images/LanguageTool+TeXstudio+VSCode/TeXstudio_check.png" alt="TeXstudio_check" width="50%"/>

# Download and configure the LanguageTool Linter VSCode extension
- Download [LanguageTool Linter](https://marketplace.visualstudio.com/items?itemName=davidlday.languagetool-linter).
- Go to the extesion configuration and set the `Class Path` and `Jar File` options as follows,
  <img src="/images/LanguageTool+TeXstudio+VSCode/VSCode_config.png" alt="VSCode_config" width="70%"/>

# Check LanguageTool is activated on VSCode
- Open the `OUTPUT` window and select LanguageTool Linter. You will see the following.
  <img src="/images/LanguageTool+TeXstudio+VSCode/VSCode_check.png" alt="VSCode_check" width="100%"/>
- Although I mentioned not to use `--allow-origin "*"`, we use on VSCode to force LanguageTool to open another port because `8081` is already used by TeXstudio
- A warning message will appear at the bottom to change it the default setting. I tried the suggestion but didn't work for me.
  
# Test the parallel working on VSCode and TeXstudio
- TeXstudio                                                                                              
  <img src="/images/LanguageTool+TeXstudio+VSCode/TeXstudio_test.png" alt="TeXstudio_test" width="50%"/>
- VSCode  
  <img src="/images/LanguageTool+TeXstudio+VSCode/VSCode_test.png" alt="VSCode_test" width="100%"/>

Done! I hope it works for you too.