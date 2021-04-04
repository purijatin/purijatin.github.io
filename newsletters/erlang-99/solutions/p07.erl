%Flatten a nested list structure.
-module(p07).
-export([flatten/1]).

flatten(Ls) ->
    inner(Ls).

inner([Head | []]) ->
    inner(Head);

inner([Head | Tail]) ->
    inner(Head) ++ inner(Tail);

inner(N) ->
    [N].