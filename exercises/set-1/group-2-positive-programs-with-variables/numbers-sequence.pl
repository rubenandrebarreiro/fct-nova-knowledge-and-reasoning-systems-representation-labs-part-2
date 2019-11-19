next(0,1).
next(1,2).

before(X) :- next(X,Y).
between(Y) :- next(X,Y), before(Y).
