%
% P02 (*) Find the last but one element of a list.
%
-module(p02).
-export([penultimate/1]).

penultimate([Head, _ | []]) ->
    Head;

penultimate([_, H2 | Tail]) ->
    penultimate([H2 | Tail]).

%
% c(p02).
% p02:penultimate([1,2,3]).
% p02:penultimate([1,2]).
%