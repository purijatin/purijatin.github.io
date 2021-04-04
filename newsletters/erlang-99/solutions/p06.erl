% Find out whether a list is a palindrome.

%
% We check whether the list reversed is the same as itself
%
-module(p06).
-export([is_palindrome/1]).

is_palindrome(Ls) ->
    Ls == p05:reverse(Ls).
    
    