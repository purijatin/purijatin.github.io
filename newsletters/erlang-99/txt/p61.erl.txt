%Count the leaves of a binary tree

-module(p61).
-include("node.hrl").
-export([leafCount/1]).

leafCount(#node{leftNode = L, rightNode = R}) ->
    case [L, R] of
        [null, null] -> 2;
        [null, _] -> 1 ;
        [_, null] -> 1 ;
        [_, _] -> 0
    end.