%A list of Goldbach compositions.

-module(p41).
-export([printGoldbachList/2]).

printGoldbachList(St, End) ->
    Ls = lists:seq(St, End),
    Even = lists:filter(fun(X) -> X rem 2 == 0 end, Ls),
    lists:foreach(fun(X) ->
            {H1, H2} = p40:goldbach(X),
            io:format("~w  = ~w + ~w~n", [X, H1, H2])
         end,Even).