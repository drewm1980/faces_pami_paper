#!/bin/bash
latexmk -pdf faces_system.tex
latexmk -pdf supplementary_material.tex
latexmk -pdf rebuttal.tex

#latexdiff faces_system_v4.tex faces_system.tex > diff.tex
#latexmk -pdf diff.tex
#= \arg \min_{\x, \e} 
