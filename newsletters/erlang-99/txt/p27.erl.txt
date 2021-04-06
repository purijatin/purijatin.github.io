%In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities.
-module(p27).
-export([group/2]).

group([], Ls) ->
    Ls;

group([G | Rest], Ls) ->
    [ [F | group(Rest, Ls -- F)] || F <- p26:combinations(G, Ls)].
