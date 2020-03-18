-module(project_euler).
-compile([export_all]).

%% task 1
sum([]) -> 0;
sum([H|T]) ->  H + sum(T).

task() -> sum([X || X <- lists:seq(1,1000),
                    X rem 3 == 0 orelse X rem 5 == 0]).

%% task2

fib() ->
    Limit = 4000000,
    FibTerms = generate_fibonacci_up_to(Limit),
    lists:sum([ X || X <- FibTerms,  X rem 2 == 0]).

generate_fibonacci_up_to(Limit) ->
    generate_fibonacci_up_to(1, 1, Limit).

generate_fibonacci_up_to(S, _, Limit) when S > Limit 
                                           -> [];
generate_fibonacci_up_to(S, B, Limit) -> 
    [S | generate_fibonacci_up_to(B, S+B, Limit)].
