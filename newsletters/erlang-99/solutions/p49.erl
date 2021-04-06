%Gray code.
-module(p49).
-export([gray/1]).

gray(1) ->
    ["0", "1"];

gray(A) ->
    [[X] ++ B || X <- "01" , B <- gray(A - 1)].
    