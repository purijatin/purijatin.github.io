%Duplicate the elements of a list.
-module(p14).
-export([duplicate/1]).

duplicate(Ls) ->
    lists:flatmap(fun(X) -> [X, X] end, Ls).