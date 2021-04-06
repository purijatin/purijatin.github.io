-module(p39).
-export([listPrimesinRange/2]).

listPrimesinRange(St, End) ->
    lists:filter(fun(X) -> p31:isprime(X) end, lists:seq(St, End)).




