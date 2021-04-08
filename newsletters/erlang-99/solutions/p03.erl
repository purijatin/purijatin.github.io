%
% Find the Kth element of a list.
%
-module(p03).
-export([kth/2]).

kth([Head | _], 0) ->
    Head;

kth([_ | Tail], Index) -> 
    kth(Tail, Index - 1).

%c(p03).
%p03:kth([1], 0).
%p03:kth([0, 1, 2, 3], 2).