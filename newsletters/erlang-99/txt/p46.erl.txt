-module(p46).
-export([l_and/2, l_or/2, l_nand/2, l_nor/2, l_xor/2, l_impl/2, l_equ/2, table2/1]).

l_and(false, _) -> false;

l_and(_, false) -> false;

l_and(true, true) -> true.

l_not(true) -> false;
l_not(false) -> true.

l_or(false, false) -> false;

l_or(_, _) -> true.

l_nand(A, B) -> l_not(l_and(A,B)).

l_nor(A, B) -> l_not(l_or(A, B)).

l_xor(A, B) -> 
    case {A, B} of 
        {True, True} -> false;
        {False, False} -> false;
        {True, False} -> true;
        {False, True} -> true
    end.

l_impl(X, Y) ->
    case[X,Y] of
        [true, false] -> false;
        _ -> true
    end.

l_equ(X, X) -> true;
l_equ(X, Y) -> false.

table2(Fun) ->
    io:format("A      B      result~n"),
    io:format("true   true   ~w~n", [Fun(true, true)]),
    io:format("true   false  ~w~n", [Fun(true, false)]),
    io:format("false  true   ~w~n", [Fun(false, true)]),
    io:format("false  false  ~w~n", [Fun(false, false)]).