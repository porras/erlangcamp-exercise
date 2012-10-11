all: exercise.boot

exercise.boot: ebin/exercise.app exercise.rel exercise.script
	erl -noshell -pa ebin -s exercise_rel release -s init stop

ebin/exercise.app: src/*.erl src/*.src
	rebar compile

clean:
	rm -f ebin/exercise.app
	rebar clean

start: all
	erl -sname exercise -boot exercise