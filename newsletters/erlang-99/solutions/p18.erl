-module(p18).
-export([slice/3]).

slice(St, End, Ls) ->
    slice(St, End, 0, Ls).

slice(_, _, _, []) ->
    [];

slice(St, End, I, [H | T]) when End == I + 1, T == []->
    [H];

slice(St, End, I, [H | T]) when I >= St ->
    [H | slice(St, End, I + 1, T)];


slice(St, End, I, [H | T]) ->
    slice(St, End, I + 1, T).
    