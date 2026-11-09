% task 1

% Base case
deleteElement(_, [], []).

% Head matches X
deleteElement(X, [X|T], R) :-
    deleteElement(X, T, R).

% Head differs from X
deleteElement(X, [H|T], [H|R]) :-
    X \== H,
    deleteElement(X, T, R).

% task2

% Base case
add_at_the_end(X, [], [X]).

% Recursive case
add_at_the_end(X, [H|T], [H|R]) :-
    add_at_the_end(X, T, R).
