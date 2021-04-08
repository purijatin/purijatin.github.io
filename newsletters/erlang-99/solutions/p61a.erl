%Count the leaves of a binary tree

-module(p61a).
-include("node.hrl").
-export([leafList/1]).

leafList(#node{value = V, leftNode = L, rightNode = R}) ->
    case [L, R] of
        [null, null] -> [V];
        [null, RR] -> leafList(RR);
        [LL, null] -> leafList(LL) ;
        [LL, RR] -> leafList(LL) ++ leafList(RR)
    end.