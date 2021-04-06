%Goldbach's conjecture.
-module(p40).
-export([goldbach/1]).

goldbach(M) when M rem 2 =:= 0 ->
    P = p39:listPrimesinRange(1, M),
    Comb = p26:combinations(2, P),
    [Ans | _] = lists:filter(fun([E1, E2]) -> E1 + E2 == M end , Comb),
    [H1, H2] = Ans,
    {H1, H2}.