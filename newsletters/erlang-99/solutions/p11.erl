%Modified run-length encoding.

-module(p11).
-export([encodeModified/1]).

encodeModified(Ls) ->
    A = p10:encode(Ls),    
    lists:map(fun({Value, Elem}) -> 
            if 
                Value == 1 ->
                    Elem;
                Value > 1 ->
                    {Value, Elem}
            end
        end, A).   
