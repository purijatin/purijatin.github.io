% Eliminate consecutive duplicates of list elements.
%
-module(p08).
-export([compress/1]).

compress([A, A | Tail])->
    compress([A | compress(Tail)]);

compress([A, B | Tail]) ->
    [A, B | compress(Tail)];

compress(Ls) ->
    Ls.