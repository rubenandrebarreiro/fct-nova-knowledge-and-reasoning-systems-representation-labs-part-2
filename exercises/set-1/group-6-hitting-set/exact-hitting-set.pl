% Exact Hitting Set


% % Set no. 1 = {a,b,c}
set(1).
element(1,a).
element(1,b).
element(1,c).

% % Set no. 2 = {a,c,d}
set(2).
element(2,a).
element(2,c).
element(2,d).

% % Set no. 3 = {b,c}
set(3).
element(3,b).
element(3,c).

% % Select exactly one element from each set
select(X) :- element(X,E), not element(Y,E), not element(Z,E), set(X), set(Y), set(Z), X!=Y, Y!=Z, X!=Z.

1{select(Y) : element(X,Y)}1 :- set(X).

% % % Solutions: {select(b),select(d)}, {select(c)}
