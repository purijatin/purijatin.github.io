-module(p37).
-export([phi/1]).

phi(M) ->
    Ls = p36:primeFactorMultiplicity(M),
    maps:fold(fun(Elem,Mul, Ans) -> Ans * ((Elem -1) * math:pow(Elem, Mul -1)) end, 1.0, Ls).




