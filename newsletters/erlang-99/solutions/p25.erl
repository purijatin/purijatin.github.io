%Generate a random permutation of the elements of a list.

-module(p25).
-export([randomPermute/1]).

randomPermute(Ls) -> 
    p23:randomSelect(length(Ls), Ls).