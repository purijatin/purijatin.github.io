%Insert an element at a given position into a list.
-module(p21).
-export([insertAt/3]).

insertAt(Elem, Index, Ls) -> 
    [A, B] = p17:split(Index, Ls),
    A ++ [Elem] ++ B.