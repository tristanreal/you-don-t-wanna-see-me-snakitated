fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

complexFunction(X, F) :-
    fibonacci(X, F1),
    factorial(F1, F).

main :-
    complexFunction(10, Result),
    (Result = 0 -> write('This does something!'); true),
    halt.
