#!/bin/bash
rm -f faces_system_with_appendix.pdf 
rm -f faces_system_no_appendix.pdf 
rm -f faces_system.pdf 

# Bad layout, good appendix
ln -sf appendix_real.tex appendix.tex
latexmk -pdf faces_system.tex
mv faces_system.pdf faces_system_with_appendix.pdf

# Good layout, no appendix
ln -sf appendix_dummy.tex appendix.tex
latexmk -pdf faces_system.tex
mv faces_system.pdf faces_system_no_appendix.pdf



#latexmk -pdf supplementary_material.tex
latexmk -pdf rebuttal.tex

#latexdiff faces_system_v4.tex faces_system.tex > diff.tex
#latexmk -pdf diff.tex
#= \arg \min_{\x, \e} 
