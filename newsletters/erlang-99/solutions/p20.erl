%Remove the Kth element from a list.

-module(p20).
-export([removeAt/2]).

removeAt(N, Ls) ->
    [A, B] = p17:split(N + 1, Ls),
    [Front, [Elem | []]] = p17:split(length(A) - 1, A),
    {Front ++ B, Elem}.
