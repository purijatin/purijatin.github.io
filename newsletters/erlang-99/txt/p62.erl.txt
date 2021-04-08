%Count the leaves of a binary tree

-module(p62).
-include("node.hrl").
-export([internalList/1]).

internalList(#node{value = V, leftNode = L, rightNode = R}) ->
    case [L, R] of
        [null, null] -> [];
        [null, RR] -> [V] ++ internalList(RR);
        [LL, null] -> [V] ++ internalList(LL) ;
        [LL, RR] -> [V] ++ internalList(LL) ++ internalList(RR)
    end.