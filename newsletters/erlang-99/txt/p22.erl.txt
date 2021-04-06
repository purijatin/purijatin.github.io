%Create a list containing all integers within a given range.
-module(p22).
-export([range/2]).

range(St, End) when St == End-> 
    [St];

range(St, End) -> 
    [St | range(St + 1, End)].