%Run-length encoding of a list.

-module(p10).
-export([encode/1]).

encode(Ls) ->
    A = p09:pack(Ls),    
    lists:map(fun([Head | Tail]) -> {length(Tail) + 1, Head} end , A).   
