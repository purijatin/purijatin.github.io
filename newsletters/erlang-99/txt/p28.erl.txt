-module(p28).
-export([lsort/1, lsortFreq/1]).

lsort(Ls) ->
    lists:sort(fun(A, B) -> length(A) < length(B) end, Ls).

lsortFreq(Ls) ->
    Count = lists:foldl(fun(Elem, Map) -> 
        Key = length(Elem),
        maps:put(Key, maps:get(Key, Map, 0) + 1 ,Map)
         end, #{},Ls),
    lists:sort(fun(A, B) -> maps:get(length(A), Count) < maps:get(length(B), Count) end, Ls).
