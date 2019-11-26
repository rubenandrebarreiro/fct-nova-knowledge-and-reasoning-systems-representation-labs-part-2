friend(alice,bob).
friend(bob,alice).
friend(eve,alice).

invite(alice).
invite(Y) :- invite(X), friend(X,Y).
