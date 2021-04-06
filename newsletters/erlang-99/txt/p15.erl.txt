%Duplicate the elements of a list a given number of times.
-module(p15).
-export([duplicateN/2]).

duplicateN(N, Ls) ->
    lists:flatmap(fun(X) -> fill(N, X) end, Ls).

fill(0, Elem) -> 
    [];

fill(Value, Elem) ->
    [Elem] ++ fill(Value - 1, Elem).

