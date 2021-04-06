% Find the number of elements of a list.

-module(p04).
-export([len/1]).

len([]) ->
    0;

len([Head | []]) ->
    1;

len([Head | Tail]) ->
    1 + len(Tail).

%c(p04).
%p04:len([1,2,3]).
