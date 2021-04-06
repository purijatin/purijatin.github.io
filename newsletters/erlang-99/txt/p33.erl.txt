%Determine whether two positive integer numbers are coprime.
-module(p33).
-export([coprime/2]).

coprime(A, B) ->
    p32:gcd(A, B) == 1.