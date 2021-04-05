-module(p31).
-export([isprime/1]).

isprime(N) ->
    Less = lists:seq(2, round(N/2)),
    lists:all(fun(X) -> N rem X /= 0 end, Less).