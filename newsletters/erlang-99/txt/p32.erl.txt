% Determine the greatest common divisor of two positive integer numbers.

-module(p32).
-export([gcd/2]).


gcd(0, B) ->
    B;

gcd(A, 0) ->
    A;

gcd(A, B) -> 
    gcd(B, A rem B).