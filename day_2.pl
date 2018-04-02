% Reverse elements of a list
reverse([], []) :- !.
reverse(ReverseList, [Head|Tail]) :- reverse(ReversedTail, Tail), append(ReversedTail, [Head], ReverseList).

% Find the smallest element of a list
smallest(Head, [Head]) :- !.
smallest(Smallest, [First, Second|Tail]) :- smallest(Smallest, [First|Tail]), First =< Second. 
smallest(Smallest, [First, Second|Tail]) :- smallest(Smallest, [Second|Tail]), First > Second. 

% Sort the elements of a list
insertion_sort([], []) :- !. 
insertion_sort([Head], [Head]) :- !.
insertion_sort([Head|Tail], SortedList) :-
    insertion_sort(Tail, Inserted), 
    insert(Head, Inserted, SortedList). 

insert(ToInsert, [], [ToInsert]) :- !.
insert(ToInsert, [Head|Tail], [ToInsert|SortedList]) :-
    ToInsert =< Head, 
    insert(Head, Tail, SortedList). 
insert(ToInsert, [Head|Tail], [Head|SortedList]) :-
    ToInsert > Head,
    insert(ToInsert, Tail, SortedList).
       
/** <examples>
?- reverse(What, [1, 2, 3]).
?- smallest(What, [2, 5, 1]).
?- insertion_sort([2, 5, 1], What).
*/
