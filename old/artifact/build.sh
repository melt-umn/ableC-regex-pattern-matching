#!/bin/bash


# We increase the stack and heap size for Ant so that Copper doesn't run
# out of memory when processing this grammar.  Since we have lexical
# ambiguities Copper uses a bit of memory to dump the parse table.
export ANT_OPTS="-Xss80M -Xmx4000M"


PATH_TO_ableC="../../../ableC"

PATH_TO_ableC_regex_ext="../../../ableC/extensions/regex"

PATH_TO_my_exts="../../../extensions/"

# The -I directive includes the parent directory of the artifact and
# ableC specification directories.

silver -I $PATH_TO_ableC \
       -I $PATH_TO_ableC_regex_ext \
       -I $PATH_TO_my_exts \
       -o ableC.jar $@ edu:umn:cs:melt:exts:ableC:regexInADT:artifact

