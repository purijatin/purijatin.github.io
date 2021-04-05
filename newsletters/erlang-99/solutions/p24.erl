% Lotto: Draw N different random numbers from the set 1..M.
-module(p24).
-export([lotto/2]).

lotto(N, Limit) -> 
    p23:randomSelect(N, p22:range(1, Limit)).