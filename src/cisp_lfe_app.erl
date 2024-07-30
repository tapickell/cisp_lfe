%%%-------------------------------------------------------------------
%% @doc cisp_lfe public API
%% @end
%%%-------------------------------------------------------------------

-module(cisp_lfe_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    cisp_lfe_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
