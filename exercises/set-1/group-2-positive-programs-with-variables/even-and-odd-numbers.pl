next(0,1).
next(1,0).

even(0).
even(Y) :- next(X,Y), odd(X).
odd(Y) :- next(X,Y), even(X).
