-module (exercise).
-behaviour (gen_server).
-export ([start_link/0, call/1]).
-export ([init/1, handle_call/3, handle_info/2,
          terminate/2, code_change/3]).

call(Msg) ->
  gen_server:call(?MODULE, Msg).
  
start_link() ->
  gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

init(State) ->
  {ok, State}.

handle_call(Call, _From, State) ->
  io:format("Receiving call: ~p~n", [Call]),
  {reply, ok, State}.
  
handle_info(_Info, State) ->
  {noreply, State}.

code_change(_, State, _) ->
  {ok, State}.

terminate(_, _) ->
  ok.