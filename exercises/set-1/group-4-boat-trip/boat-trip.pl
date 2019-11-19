% FACTS

% % 1) Friends (predicate/2)
friends(john, peter).
friends(john, mary).
friends(peter, john).
friends(mary, john).

% % 2) Has Companion in Travel (predicate/2)
has_companion_travel(john, mary).
has_companion_travel(john, peter).

has_course(mary) :- not has_course(peter).
has_course(peter) :- not has_course(mary).

mother_agrees_with_travel(john) :- has_companion_travel(john, Y), safe_with(john, Y).
is_safe_with(john, X) :- has_course(X), is_safe_with(john, X).
