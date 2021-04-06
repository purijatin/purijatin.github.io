%Generate the combinations of K distinct objects chosen from the N elements of a list.
-module(p26).
-export([combinations/2]).


combinations(0, Ls) ->
    [Ls];

combinations(1, Ls) -> 
    lists:map(fun(X) -> [X] end, Ls);

combinations(_, []) ->
    [];

combinations(N, [Head | Tail]) ->
    Sub = combinations(N-1, Tail),
    lists:map(fun(Sl) -> [Head | Sl] end, Sub) ++ combinations(N, Tail) .

% length(p26:combinations(3, [1,2,3,4,5,6,7,8,9,10,11,12])).
% 220
% 
%