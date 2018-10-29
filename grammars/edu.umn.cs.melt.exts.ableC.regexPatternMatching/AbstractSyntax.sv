grammar edu:umn:cs:melt:exts:ableC:regexPatternMatching;

import edu:umn:cs:melt:exts:ableC:algebraicDataTypes:patternmatching:abstractsyntax;
import edu:umn:cs:melt:exts:ableC:regex;
import edu:umn:cs:melt:ableC:abstractsyntax:host;
import edu:umn:cs:melt:ableC:abstractsyntax:env;
import silver:langutil;
import silver:langutil:pp;

abstract production regexPattern
top::Pattern ::= re::String
{
  -- ToDo - better pattern would be   ' v @ when (v =~ re) '
  top.pp = text("/" ++ re ++ "/");
  top.decls = [];  --ToDo - look for variables in the pattern
  top.defs := [];   --ToDo - look for variables in the pattern
  top.errors := []; -- type checking

  top.transform =
    regexMatch(
      top.transformIn,
      regexLiteralExpr(re, location=top.location),
      location=top.location);
}
