%
% Reverse a list
%
-module(p05).
-export([reverse/1]).

reverse(Ls) ->
    inner_reverse(Ls, []).

inner_reverse([], Opp) ->
    Opp;

inner_reverse([Head | Tail], Opp) ->
    inner_reverse(Tail, [Head | Opp]).

%p05:reverse([1,2,3,4]).
