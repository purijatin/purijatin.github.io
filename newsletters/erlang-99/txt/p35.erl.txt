%Determine whether two positive integer numbers are coprime.
-module(p35).
-export([primeFactors/1]).

primeFactors(A) ->
    L = lists:seq(2, round(A/2)),
    Div = lists:filter(fun(X) -> A rem X == 0 end , L),
    if
        length(Div) == 0 ->
            [A];
        
        length(Div) == 1 ->
            [Head | _] = Div,
            [Head];

        length(Div) >= 2 ->
            [Head | Tail] = Div,
            [Head | primeFactors(trunc(A / Head))]

    end.