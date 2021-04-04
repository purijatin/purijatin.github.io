% Run-length encoding of a list (direct solution).
%
-module(p13).
-export([encodeDirect/1]).

encodeDirect([H | T]) ->
    encodeDirect([], 0, [H |T], H).

encodeDirect(FinalAns, Counter, [CurrH | CurrT], Elem) when CurrH == Elem ->
    encodeDirect(FinalAns, Counter + 1, CurrT, Elem);

encodeDirect(FinalAns, Counter, [CurrH | CurrT], Elem) ->
    encodeDirect(FinalAns ++ [fill(Counter, Elem, [])], 0, [CurrH | CurrT], CurrH);

encodeDirect(FinalAns, Counter, [], Elem) ->
    FinalAns ++ [fill(Counter, Elem, [])].


fill(0, _, Ls) -> 
    Ls;

fill(Value, Elem, Ls) ->
    fill(Value - 1, Elem, [Elem | Ls]).


    
