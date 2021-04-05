%Determine the prime factors of a given positive integer (2).
-module(p36).
-export([primeFactorMultiplicity/1]).

primeFactorMultiplicity(N) ->
    Ls = p35:primeFactors(N),
    lists:foldl(fun(Elem, Map) -> maps:put(Elem, maps:get(Elem, Map, 0) + 1 , Map) end,#{}, Ls).
