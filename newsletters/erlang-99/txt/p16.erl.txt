% Drop every Nth element from a list.
-module(p16).
-export([drop/2]).

drop(N, Ls) ->
    dropI(N, N, Ls).


dropI(1, Counter, [_ | Tail]) ->
    dropI(Counter, Counter, Tail);

dropI(1, _, Ls) ->
    Ls;

dropI(N, Counter, [H | T]) ->
    [H] ++ dropI(N - 1, Counter, T).

