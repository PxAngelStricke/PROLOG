% Mensaje inicial
sistema:- writeln('Hola, soy tu sistema experto, puedes preguntarme sobre el Parkinson y Plantas vs Zombis, recuerda solo usar minusculas y un "." al final. Espero poder ayudarte.'),
	readln(Input),
	sistema(Input),!.

	% -------------------- Despedidas --------------------
	sistema(Input):- Input == ['Adios'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	sistema(Input):- Input == ['Adios', '.'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	sistema(Input):- Input == ['adios'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	sistema(Input):- Input == ['adios', '.'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	sistema(Input):- Input == ['Nos vemos'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	sistema(Input):- Input == ['nos vemos', '.'],
		writeln('Adios, espero haberte ayudado, nos vemos despues.'), !.
	
	% -------------------- Procesador basico de Eliza - Interprete --------------------
	sistema(Input):-
		template(Stim, Resp, IndStim),
		match(Stim, Input),
		replace0(IndStim, Input, 0, Resp, R),
		writeln(R),
		readln(Input1),
		sistema(Input1), !.

	% -------------------- Saludos --------------------
	template([hola, me, llamo, s(_), '.'], ['Mucho', gusto, 0, 'Espero', te, encuentres, bien, '.'], [3]).
	template([hola, soy, s(_), '.'], ['Hola', 0, 'Como', te, encuentras, hoy, '?'], [2]).
	template([hola, '.'], ['Hola', espero, poder, ayudarte, en, lo, que, necesites], []).

	% -------------------- Interaccion basica con el sistema --------------------
	% Que es el sistema
	template([tu, eres, una, s(_), _], [flagIs], [3]).
	template([tu, eres, un, s(_), _], [flagIs], [3]).

	% Que le gusta al sistema
	template([te, gustan, las, s(_), _], [flagLike], [3]).
	template([te, gustan, los, s(_), _], [flagLike], [3]).

	% Las cosas son?
	template([los, s(_), son, (_), '.'], ['Enserio', los, 0, son, 1, '?', lo, anotare], [1, 3]).
	template([las, s(_), son, (_), '.'], ['Enserio', las, 0, son, 1, '?', lo, anotare], [1, 3]).

	% -------------------- Respuesta a cosas que no sabe --------------------
	template(_, ['Disculpa, eso no se encuentra en mi base de conocimientos o estas olvidando el "." al final de tu consulta.'],[]).

	% -------------------- Flags --------------------
	% FlaIs
	sistemaIs(X, R):- is(X), R = ['Claro', soy, una,'/', un, X].
	sistemaIs(X, R):- \+is(X), R = ['Lo', siento, no, soy, una,'/', un, X].
	is(computadora).
	is(sistema).

	% FlagLike
	sistemaLikes(X, R):- likes(X), R = ['Claro', me, gustan, las, '/', los, X].
	sistemaLikes(X, R):- \+likes(X), R = ['No', me, gustan, las, '/', los, X].
	likes(manzanas).
	likes(plantas).
	likes(computadoras).

	% -------------- Match y replace -----------------------
	% Basicos de Eliza
	match([],[]).
	match([], _):- true.

	match([S|Stim],[I|Input]) :-
		atom(S), % si I es un s(X) devuelve falso
		S == I,
		match(Stim, Input),!.

	match([S|Stim],[_|Input]) :-
	% I es un s(X), lo ignoro y continúo con el resto de la lista
		\+atom(S),
		match(Stim, Input),!.

	replace0([], _, _, Resp, R):- append(Resp, [], R),!.

	% Sistema is:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagIs,
		sistemaIs(Atom, R).

	% Sistema likes:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagLike,
		sistemaLikes(Atom, R).

	% cualquier otra cosa
	replace0([I|Index], Input, N, Resp, R):-
		length(Index, M), M =:= 0,
		nth0(I, Input, Atom),
		select(N, Resp, Atom, R1), append(R1, [], R),!.

	replace0([I|Index], Input, N, Resp, R):-
		nth0(I, Input, Atom),
		length(Index, M), M > 0,
		select(N, Resp, Atom, R1),
		N1 is N + 1,
		replace0(Index, Input, N1, R1, R),!.