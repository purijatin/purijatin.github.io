%Split a list into two parts.
-module(p17).
-export([split/2]).

split(N, Ls) ->
    splitI(N, [], Ls).

splitI(0, First, Last) ->
    [First, Last];

splitI(N, First, [H | T]) ->
    splitI(N - 1, First ++ [H], T).