%Determine whether two positive integer numbers are coprime.
-module(p34).
-export([totient/1]).

totient(A) ->
    length(lists:filter(fun(B) -> p33:coprime(A, B) end ,lists:seq(1, A))).