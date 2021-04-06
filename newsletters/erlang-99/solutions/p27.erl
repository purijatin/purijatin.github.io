%In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities.
-module(p27).
-export([group/2, group3/1]).

group([], []) ->
    [];

group([_ | []], Ls) ->
    [[Ls]];

group([G | Rest], Ls) ->
    F = p26:combinations(G, Ls),
    lists:flatmap(fun(Comb) -> 
        E = group(Rest, Ls -- Comb),
        lists:map(fun(B) -> [Comb] ++ B end, E)
    end ,F).

group3(Ls) -> group([2,3,4], Ls).