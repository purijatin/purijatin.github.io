%Decode a run-length encoded list.

-module(p12).
-export([decode/1]).

decode(Ls) ->
    lists:flatmap(fun({Value, Elem}) -> 
        fill(Value, Elem, [])
    end, Ls).

fill(0, _, Ls) -> 
    Ls;

fill(Value, Elem, Ls) ->
    fill(Value - 1, Elem, [Elem | Ls]).