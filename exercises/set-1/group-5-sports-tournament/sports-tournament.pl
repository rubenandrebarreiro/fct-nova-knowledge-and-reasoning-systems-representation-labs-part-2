% Sports Tournament


% % 1. Create a representation of the facts (teams and groups).
% % % 1.1) Six Teams (a, b, c, d, e, f)
team(a;b;c;d;e;f).

% % % 1.2) Two Groups (Group no. 1 and no. 2)
group(1..2).

% % 2. Add constraints matching i) – iv)
% % % i) team a does not want to be in group 1
% % % ii) teams a and e do not want to be in the same group
% % % iii) teams e and f do not want to be in the same group
% % % iv) teams b and c want to be in the same group
% % % 2.1) Each Group must have exactly
% % %      3 Teams assigned to it
3{in(X,Y): team(X)}3 :- group(Y).

group(X).

% % 2.2) Each Team must be assigned to
% %      exactly 1 Group
1{in(X,Y): group(Y)}1 :- team(X).

% % 1.5) The Team a should not be
% %      in Group no. 1
:- in(a,1).

% % 1.6) The Team a and b should not be
% %      in the same Group
:- in(a,X), in(e,X).

% % 1.7) The Team e and f should not be
% %      in the same Group
:- in(e,X), in(f,X).

% % 1.8) The Team b and c should be
% %      in the same Group
b_and_c_in_the_same_group :- in(b,X), in(c,X).
:- not b_and_c_in_the_same_group.

#show in/2.

in(X,Y) :- team(X), group(Y), not out (X,Y).
out(X,Y) :- team(X), group(Y), not in (X,Y).

:-in(X,Y), in (X,Z), Y!=Z.
