%%Author: Anthony Jiang <2nth0nyj@gmail.com>
%% -*- coding: utf-8 -*-
%% @author anthonyjiang
%% @doc @todo Add description to logic_app.


-module(logic_app).
-behaviour(application).
-export([start/2, stop/1]).

%% ====================================================================
%% API functions
%% ====================================================================
-export([]).



%% ====================================================================
%% Behavioural functions
%% ====================================================================

%% start/2
%% ====================================================================
%% @doc <a href="http://www.erlang.org/doc/apps/kernel/application.html#Module:start-2">application:start/2</a>
-spec start(Type :: normal | {takeover, Node} | {failover, Node}, Args :: term()) ->
	{ok, Pid :: pid()}
	| {ok, Pid :: pid(), State :: term()}
	| {error, Reason :: term()}.
%% ====================================================================
start(_Type, StartArgs) ->
    case 'TopSupervisor':start_link(StartArgs) of
		{ok, Pid} ->
			{ok, Pid};
		Error ->
			Error
    end.

%% stop/1
%% ====================================================================
%% @doc <a href="http://www.erlang.org/doc/apps/kernel/application.html#Module:stop-1">application:stop/1</a>
-spec stop(State :: term()) ->  Any :: term().
%% ====================================================================
stop(_State) ->
    ok.

%% ====================================================================
%% Internal functions
%% ====================================================================


