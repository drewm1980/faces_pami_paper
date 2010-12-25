#!/bin/bash
latexmk -pdf faces_system.tex

latexdiff faces_system_v4.tex faces_system.tex > diff.tex

latexmk -pdf diff.tex
