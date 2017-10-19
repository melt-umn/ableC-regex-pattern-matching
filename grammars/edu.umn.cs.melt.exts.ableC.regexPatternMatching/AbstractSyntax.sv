grammar edu:umn:cs:melt:exts:ableC:regexPatternMatching;

import edu:umn:cs:melt:exts:ableC:algebraicDataTypes:patternmatching:abstractsyntax;
import edu:umn:cs:melt:exts:ableC:regex;
import edu:umn:cs:melt:ableC:abstractsyntax:host;
import edu:umn:cs:melt:ableC:abstractsyntax:env;
import silver:langutil;
import silver:langutil:pp;

abstract production regexPattern
p::Pattern ::= re::String
{
  p.pp = text("/" ++ re ++ "/");
  --p.decls = [];  --ToDo - look for variables in the pattern
  --p.defs = [];   --ToDo - look for variables in the pattern
  --p.errors := []; -- type checking

  forwards to 
    -- ToDo - better pattern would be   ' v @ when (v =~ re) '
 
    patternWhen(
      regexMatch(
        txtExpr( "( *_curr_scrutinee_ptr )", location=p.location ),
        regexLiteralExpr(re, location=p.location),
        location=p.location
       ),
      location=p.location
     );



}
