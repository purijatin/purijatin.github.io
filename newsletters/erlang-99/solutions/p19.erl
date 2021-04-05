%Rotate a list N places to the left.
-module(p19).
-export([rotate/2]).

rotate(N, Ls) ->
    if
        N > 0 ->
            [A, B] = p17:split(N, Ls),
            B ++ A;
        N < 0 ->
            Len = length(Ls),
            Index = Len + N,
            [A, B] = p17:split(Index, Ls),
            B ++ A
    end.
