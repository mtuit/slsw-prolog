% Student exercise profile 
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global,	limit(8 000 000)).	% limit term space (8Mb)
:- set_prolog_stack(local,	limit(2 000 000)).	% limit environment space

% Authors and Books
book(the_origin_of_species).
book(the_art_of_programming).
book(concrete_mathematics).
book(introduction_to_data_algorithms).

author(charles_darwin).
author(donald_knuth).
author(charles_e_leiserson). 
author(clifford_stein).
author(ron_rivest).
author(thomas_h_cormen).

wrote(charles_darwin, the_origin_of_species).
wrote(donald_knuth, the_art_of_programming).
wrote(donald_knuth, concrete_mathematics).
wrote(charles_e_leiserson, introduction_to_data_algorithms).
wrote(clifford_stein, introduction_to_data_algorithms).
wrote(ron_rivest, introduction_to_data_algorithms).
wrote(thomas_h_cormen, introduction_to_data_algorithms).

% Musicians and Instruments
plays_instrument(b_b_king, guitar).
plays_instrument(mick_jagger, voice).
plays_instrument(charlie_watts, drums). 
plays_instrument(keith_richards, guitar). 
plays_instrument(ronnie_wood, guitar).

plays_genre(b_b_king, blues). 
plays_genre(mick_jagger, rock). 
plays_genre(mick_jagger, blues).
plays_genre(charlie_watts, rock). 
plays_genre(charlie_watts, blues).
plays_genre(keith_richards, rock).
plays_genre(keith_richards, blues).
plays_genre(ronnie_wood, rock).
plays_genre(ronnie_wood, blues).

/** <examples>
?- wrote(donald_knuth, What).
?- wrote(What, introduction_to_data_algorithms).
?- plays_instrument(What, guitar)
*/