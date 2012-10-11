-module (exercise_app).
-behaviour (application).
-export ([start/2, stop/1]).

start(_, _) -> exercise_sup:start_link().

stop(_) -> ok.
