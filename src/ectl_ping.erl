-module(ectl_ping).

-export([run/1]).

-include("ectl.hrl").

%% ===================================================================
%% Public
%% ===================================================================

run(Opts) ->
    Results = ecli:each_node(
                fun({N, _}, R) -> 
                        [{node, N}, {result, R}] 
                end, ectl_lib:get_nodes(Opts)),
    ecli:output(Results, [heads()], Opts).

%% ===================================================================
%% Private
%% ===================================================================

heads() ->
    {heads, [node, result]}.
