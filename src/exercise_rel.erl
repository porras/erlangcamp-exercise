-module (exercise_rel).

-export ([release/0]).

release() ->
  systools:make_script("exercise", [local]).
  