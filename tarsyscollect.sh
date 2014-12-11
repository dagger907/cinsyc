#!/bin/bash
pathvar=your path to syscollect-folder
tar Jcvf $pathvar/tarsyscollect/syscollect_`date +%Y%m-%d`.tar.xz $pathvar/syscollect/*  && rm $pathvar/syscollect/*


