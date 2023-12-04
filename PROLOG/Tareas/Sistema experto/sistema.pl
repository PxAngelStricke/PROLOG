% Mensaje inicial
sistema:- writeln('Hola, soy tu sistema experto, puedes preguntarme sobre el Parkinson y Plantas vs Zombis, recuerda solo usar minusculas y un "." al final. Espero poder ayudarte.'),
	readln(Input),
	sistema(Input),!.

	% * ---------------------------------------- SISTEMA BASICO ----------------------------------------
	% Despedidas
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
	
	% Procesador basico de Eliza - Interprete
	sistema(Input):-
		template(Stim, Resp, IndStim),
		match(Stim, Input),
		replace0(IndStim, Input, 0, Resp, R),
		writeln(R),
		readln(Input1),
		sistema(Input1), !.

	% Saludos
	template([hola, me, llamo, s(_), '.'], ['Mucho', gusto, 0, 'Espero', te, encuentres, bien, '.'], [3]).
	template([hola, soy, s(_), '.'], ['Hola', 0, 'Como', te, encuentras, hoy, '?'], [2]).
	template([hola, '.'], ['Hola', espero, poder, ayudarte, en, lo, que, necesites], []).

	% Interaccion basica con el sistema
	% Que es el sistema
	template([tu, eres, una, s(_), _], [flagIs], [3]).
	template([tu, eres, un, s(_), _], [flagIs], [3]).

	% Que le gusta al sistema
	template([te, gustan, las, s(_), _], [flagLike], [3]).
	template([te, gustan, los, s(_), _], [flagLike], [3]).

	% Las cosas son?
	template([los, s(_), son, (_), '.'], ['Enserio', los, 0, son, 1, '?', lo, anotare], [1, 3]).
	template([las, s(_), son, (_), '.'], ['Enserio', las, 0, son, 1, '?', lo, anotare], [1, 3]).



	% * ---------------------------------------- ENFERMEDAD PARKINSON ----------------------------------------
	% Informacion basica sobre el parkinson
	template([parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).
	template([que, es, el, parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).
	template([parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).
	template([dime, lo, que, sabes, del, parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).
	template([dime, sobre, el, parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).
	template([hablame, sobre, el, parkinson, '.'], ['El Parkinson es un trastorno del sistema nervioso central que afecta el movimiento y suele ocasionar temblores. El daño en las células nerviosas del cerebro provoca una caída en los niveles de dopamina, lo que causa los síntomas de la enfermedad de Parkinson.'], []).

	% Sintomas del parkinson 1
	template([sintomas, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasParkinson(Sintomas), ListaSintomas).
	
	template([dime, los, sintomas, del, parkinson, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasParkinson(Sintomas), ListaSintomas).
	
	template([cuales, son, los, sintomas, del, parkinson, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasParkinson(Sintomas), ListaSintomas).
	
	template([sintomas, del, parkinson, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasParkinson(Sintomas), ListaSintomas).
	
	template([dime, los, sintomas, '.'], ListaSintomas, []):-
		findall(Sintomas, sintomasParkinson(Sintomas), ListaSintomas).
	
	% Sintomas del parkinson interactivas 2
	template([el, s(_), es, un, sintoma, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, sintoma, '?'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, '.'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, '?'], [flagSintomas], [1]).
	template([s(_), es, un, sintoma, '.'], [flagSintomas], [0]).
	template([s(_), es, un, sintoma, '?'], [flagSintomas], [0]).
	template([el, s(_), es, un, sintoma, del, parkinson, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, sintoma, del, parkinson, '?'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, parkinson, '.'], [flagSintomas], [1]).
	template([la, s(_), es, un, sintoma, del, parkinson, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, parkinson, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, sintoma, del, parkinson, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, parkinson, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, sintoma, del, parkinson, '?'], [flagSintomas], [1]).
	template([s(_), es, un, sintoma, del, parkinson, '.'], [flagSintomas], [0]).
	template([s(_), es, un, sintoma, del, parkinson, '?'], [flagSintomas], [0]).

	% Causas del parkinson 1
	template([causas, '.'], ListaCausas, []):-
		findall(Causas, causasParkinson(Causas), ListaCausas).

	template([causas, del, parkinson, '.'], ListaCausas, []):-
		findall(Causas, causasParkinson(Causas), ListaCausas).

	template([dime, las, causas, del, parkinson, '.'], ListaCausas, []):-
		findall(Causas, causasParkinson(Causas), ListaCausas).
	
	template([cuales, son, las, causas, '.'], ListaCausas, []):-
		findall(Causas, causasParkinson(Causas), ListaCausas).

	template([cuales, son, las, causas, del, parkinson, '.'], ListaCausas, []):-
		findall(Causas, causasParkinson(Causas), ListaCausas).

	% Causas del parkinson interactivas 2
	template([la, s(_), es, una, causa, '.'], [flagCausas], [1]).
	template([la, s(_), es, una, causa, '?'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, '?'], [flagCausas], [0]).
	template([los, s(_), son, una, causa, del, parkinson, '.'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, del, parkinson, '.'], [flagCausas], [1]).
	template([los, s(_), son, una, causa, del, parkinson, '?'], [flagCausas], [1]).
	template([las, s(_), son, una, causa, del, parkinson, '?'], [flagCausas], [1]).
	template([s(_), es, una, causa, del, parkinson, '.'], [flagCausas], [0]).
	template([s(_), es, una, causa, del, parkinson, '?'], [flagCausas], [0]).

	% Tratamientos del parkinson 1
	template([tratamientos, '.'], ['Los tratamientos consisten en consumo de medicamentos de promotores de dopamina, medicamento para mejorar cognicion, y anti-temblor'], []).
	template([tratamientos, del, parkison, '.'], ['Los tratamientos consisten en consumo de medicamentos de promotores de dopamina, medicamento para mejorar cognicion, y anti-temblor'], []).
	template([dime, los, tratamientos, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientoParkinson(Tratamientos), ListaTratamientos).

	template([dime, los, tratamientos, del, parkinson, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientoParkinson(Tratamientos), ListaTratamientos).

	template([cuales, son, los, tratamientos, del, parkinson, '.'], ListaTratamientos, []):-
		findall(Tratamientos, tratamientoParkinson(Tratamientos), ListaTratamientos).

	% Tratamientos del parkinson interactivos 2
	template([la, s(_), es, un, tratamiento, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, tratamiento, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, tratamiento, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, tratamiento, '.'], [flagSintomas], [1]).
	template([s(_), es, un, tratamiento, '.'], [flagSintomas], [0]).
	template([la, s(_), es, un, tratamiento, para, el, parkinson, '.'], [flagSintomas], [1]).
	template([el, s(_), es, un, tratamiento, para, el, parkinson, '.'], [flagSintomas], [1]).
	template([las, s(_), es, un, tratamiento, para, el, parkinson, '.'], [flagSintomas], [1]).
	template([los, s(_), es, un, tratamiento, para, el, parkinson, '.'], [flagSintomas], [1]).
	template([s(_), es, un, tratamiento, para, el, parkinson, '.'], [flagSintomas], [0]).
	template([la, s(_), es, un, tratamiento, '?'], [flagSintomas], [1]).
	template([el, s(_), es, un, tratamiento, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, tratamiento, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, tratamiento, '?'], [flagSintomas], [1]).
	template([s(_), es, un, tratamiento, '?'], [flagSintomas], [0]).
	template([la, s(_), es, un, tratamiento, para, el, parkinson, '?'], [flagSintomas], [1]).
	template([el, s(_), es, un, tratamiento, para, el, parkinson, '?'], [flagSintomas], [1]).
	template([las, s(_), es, un, tratamiento, para, el, parkinson, '?'], [flagSintomas], [1]).
	template([los, s(_), es, un, tratamiento, para, el, parkinson, '?'], [flagSintomas], [1]).
	template([s(_), es, un, tratamiento, para, el, parkinson, '?'], [flagSintomas], [0]).

	% Especialistas del parkinson 1
	template([especialistas, '.'], ['El neurologo es el medico especializado que esta capacitado para seguir las escalas clinicas necesarias para el Parkinson, pero hay mas especialistas que te pueden ayudar en el proceso.'], []).
	template([especialistas, del, parkinson, '.'], ['El neurologo es el medico especializado que esta capacitado para seguir las escalas clinicas necesarias para el Parkinson, pero hay mas especialistas que te pueden ayudar en el proceso.'], []).
	template([dime, los, especialistas, '.'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).
	
	template([cuales, son, los, especialistas, '.'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).

	template([cuales, son, los, especialistas, '?'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).

	template([dime, los, especialistas, del, parkinson, '.'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).
	
	template([cuales, son, los, especialistas, del, parkinson, '.'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).

	template([cuales, son, los, especialistas, del, parkinson, '?'], ListaEspecialistas, []):-
		findall(Especialistas, especialistaParkinson(Especialistas), ListaEspecialistas).
	
	% Especialistas del parkinson interactivos 2
	template([un, s(_), es, un, especialista, '.'], [flagEspecialistas], [1]).
	template([un, s(_), es, un, especialista, '?'], [flagEspecialistas], [1]).
	template([una, s(_), es, un, especialista, '.'], [flagEspecialistas], [1]).
	template([una, s(_), es, un, especialista, '?'], [flagEspecialistas], [1]).
	template([una, s(_), es, una, especialista, '.'], [flagEspecialistas], [1]).
	template([una, s(_), es, una, especialista, '?'], [flagEspecialistas], [1]).
	template([el, s(_), es, un, especialista, '.'], [flagEspecialistas], [1]).
	template([el, s(_), es, un, especialista, '?'], [flagEspecialistas], [1]).
	template([la, s(_), es, un, especialista, '.'], [flagEspecialistas], [1]).
	template([la, s(_), es, un, especialista, '?'], [flagEspecialistas], [1]).
	template([la, s(_), es, una, especialista, '.'], [flagEspecialistas], [1]).
	template([la, s(_), es, una, especialista, '?'], [flagEspecialistas], [1]).
	template([los, s(_), son, un, especialista, '.'], [flagEspecialistas], [1]).
	template([los, s(_), son, un, especialista, '?'], [flagEspecialistas], [1]).
	template([las, s(_), son, una, especialista, '.'], [flagEspecialistas], [1]).
	template([las, s(_), son, una, especialista, '?'], [flagEspecialistas], [1]).
	template([s(_), es, un, especialista, '.'], [flagEspecialistas], [0]).
	template([s(_), es, un, especialista, '?'], [flagEspecialistas], [0]).
	template([s(_), es, una, especialista, '.'], [flagEspecialistas], [0]).
	template([s(_), es, una, especialista, '?'], [flagEspecialistas], [0]).


	% * ---------------------------------------- TEMA DE MI GUSTO ----------------------------------------




	% TODO: -------------------- Respuesta a cosas que no sabe --------------------
	template(_, ['Disculpa, eso no se encuentra en mi base de conocimientos o estas olvidando el "." al final de tu consulta.'],[]).



	% ? -------------------- Flags --------------------
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

	% FlagSintomas
	sintomaEs(X, R):- sintomasParkinson(X), R = ['Claro', X, es, un, sintoma, del, 'Parkinson', mas, sin, embargo, recuerda, que, el, 'Parkinson', requiere, diagnostico, medico].
	sintomaEs(X, R):- \+sintomasParkinson(X), R = ['No', X, no, es, un, sintoma, del, 'Parkinson'].
	sintomasParkinson('temblor de mano').
	sintomasParkinson('lentitud de movimientos').
	sintomasParkinson('rigidez').
	sintomasParkinson('perdida del equilibrio').
	sintomasParkinson('temblor en resposo').
	sintomasParkinson('temblor en manos').
	sintomasParkinson('temblor en miembros o postural').
	sintomasParkinson('musculos rigidos').
	sintomasParkinson('dificultad para caminar').
	sintomasParkinson('dificultad para pararse').
	sintomasParkinson('dificultad para mover el cuerpo').
	sintomasParkinson('somnolencia diurna').
	sintomasParkinson('pesadillas').
	sintomasParkinson('sueño intranquilo').
	sintomasParkinson('transtorno del sueño').
	sintomasParkinson('fatiga').
	sintomasParkinson('agitacion').
	sintomasParkinson('mareos').
	sintomasParkinson('poco equilibrio').
	sintomasParkinson('amnesia').
	sintomasParkinson('demencia').
	sintomasParkinson('dificultad para pensar').
	sintomasParkinson('dificultad del habla').
	sintomasParkinson('espasmos de la laringe').
	sintomasParkinson('ansiedad').
	sintomasParkinson('apatia').
	sintomasParkinson('perdida del olfato').
	sintomasParkinson('escape de orina').
	sintomasParkinson('goteo de orina').
	sintomasParkinson('rigidez de la mandibula').
	sintomasParkinson('miedo a caer').

	% FlagCausas
	causaEs(X, R):- causasParkinson(X), R = ['Si', X, es, una, causa, del, 'Parkinson'].
	causaEs(X, R):- \+causasParkinson(X), R = ['No', X, no, es, una, causa, del, 'Parkinson'].
	causasParkinson('genes').
	causasParkinson('edad').
	causasParkinson('desencadenantes ambientales').

	% FlagTratamientos
	tratamientoEs(X, R):- tratamientoParkinson(X), R = ['Si', X, es, un, tratamiento, del, 'Parkinson'].
	tratamientoEs(X, R):- \+tratamientoParkinson(X), R = ['No', X, no, es, un, tratamiento, del, 'Parkinson'].
	tratamientoParkinson('carbidopa').
	tratamientoParkinson('levodopa').
	tratamientoParkinson('carbidopa inhalado').
	tratamientoParkinson('levodopa inhalado').
	tratamientoParkinson('anticolinergicos').
	tratamientoParkinson('amantadina').

	% FlagEspecialistas
	especialistaEs(X, R):- especialistaParkinson(X), R = ['Si', X, es, un, especialista, del, 'Parkinson'].
	especialistaEs(X, R):- \+especialistaParkinson(X), R = ['No', X, no, es, un, especialista, del, 'Parkinson'].
	especialistaParkinson('neurologo').
	especialistaParkinson('neurologa').
	especialistaParkinson('logopeda').
	especialistaParkinson('fisioterapeuta').
	especialistaParkinson('urologo').
	especialistaParkinson('nutriologo').
	especialistaParkinson('psicologo').
	especialistaParkinson('urologa').
	especialistaParkinson('nutriologa').
	especialistaParkinson('psicologa').



	% ! -------------- Match y replace -----------------------
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

	% Sintomas Parkinson:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSintomas,
		sintomaEs(Atom, R).

	% Causas Parkinson:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagCausas,
		causaEs(Atom, R).

	% Tratamientos Parkinson:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTratamientos,
		tratamientoEs(Atom, R).

	% Especialistas Parkinson:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagEspecialistas,
		especialistaEs(Atom, R).

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