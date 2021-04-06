%Extract a given number of randomly selected elements from a list.

-module(p23).
-export([randomSelect/2]).

randomSelect(0, _) ->
    [];

randomSelect(N, Ls) ->
    Len = length(Ls),
    {Removed, Elem} = p20:removeAt(rand:uniform(Len) -1, Ls),
    [Elem | randomSelect(N - 1, Removed)].
