grammar edu:umn:cs:melt:exts:ableC:regexPatternMatching;

import edu:umn:cs:melt:exts:ableC:regex;
import silver:langutil;
import edu:umn:cs:melt:exts:ableC:algebraicDataTypes:patternmatching:concretesyntax as pcnc;

-- trigger the modular determinism analysis (MDA)
-- import edu:umn:cs:melt:exts:ableC:regexInADT:mda_test;

concrete production regexPattern_c
p::pcnc:Pattern ::= d1::RegexBegin_t  r::Regex_R  d2::RegexEnd_t
layout {}
{
 p.ast = regexPattern("\"" ++ r.regString ++ "\"", location=p.location );
}

