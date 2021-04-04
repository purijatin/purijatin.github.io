%Pack consecutive duplicates of list elements into sublists.
%
-module(p09).
-export([pack/1]).

pack([H | T]) ->
    pack([], [], [H |T], H).

pack(FinalAns, AnsLs, [CurrH | CurrT], Elem) when CurrH == Elem ->
    pack(FinalAns, AnsLs ++ [Elem], CurrT, Elem);

pack(FinalAns, AnsLs, [CurrH | CurrT], Elem) ->
    pack(FinalAns ++ [AnsLs], [], [CurrH | CurrT], CurrH);

pack(FinalAns, AnsLs, [], _) ->
    FinalAns ++ [AnsLs].



    
