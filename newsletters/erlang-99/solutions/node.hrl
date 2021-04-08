%% File: node.hrl

%%-----------------------------------------------------------
%% Data Type: node
%% where:
%%    value:     value (default is undefined).
%%    leftNode:  Left Node.
%%    rightNode: Right Node.
%%------------------------------------------------------------
-record(node, {
        value,
        leftNode = null,
        rightNode = null
    }).