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
	% Informacion basico
	template([plantas, vs, zombis, '.'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).
	template([plantas, contra, zombis, '.'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).
	template([hablame, sobre, plantas, vs, zombis, '.'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).
	template([hablame, sobre, plantas, contra, zombis, '.'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).
	template([que, sabes, sobre, plantas, vs, zombis, '.'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).
	template([que, sabes, sobre, plantas, vs, zombis, '?'], ['Plants vs. Zombies es una franquicia de videojuegos desarrollada por PopCap Games, una subsidiaria de Electronic Arts. El primer juego, Plants vs. Zombies, fue desarrollado y lanzado por PopCap antes de su adquisición por EA.'], []).

	% Modo y estilo de juego
	template([cual, es, el, estilo, de, juego, de, plantas, vs, zombis, '.'], ['El estilo de juego es similar a otros juegos de tower defense. El jugador va disponiendo en el escenario distintos tipos de plantas con distintas características con algunas mejoras(se compran en la tienda) únicas de ataque o defensa en tres localizaciones diferentes: jardín delantero, jardín trasero y tejado de la casa, con la intención de detener a una horda de zombis en su misión de devorar los cerebros de los residentes. Los zombis también se presentan en una serie de tipos con diferentes atributos y habilidades, como cavar por debajo de las plantas o saltar por encima de éstas con la ayuda de pértigas, llevar diferentes objetos como casco o conos, o invocar a cuatro zombis para representar una curiosa coreografía inspirada en Thriller.'], []).
	template([cual, es, el, estilo, de, juego, de, plantas, vs, zombis, '?'], ['El estilo de juego es similar a otros juegos de tower defense. El jugador va disponiendo en el escenario distintos tipos de plantas con distintas características con algunas mejoras(se compran en la tienda) únicas de ataque o defensa en tres localizaciones diferentes: jardín delantero, jardín trasero y tejado de la casa, con la intención de detener a una horda de zombis en su misión de devorar los cerebros de los residentes. Los zombis también se presentan en una serie de tipos con diferentes atributos y habilidades, como cavar por debajo de las plantas o saltar por encima de éstas con la ayuda de pértigas, llevar diferentes objetos como casco o conos, o invocar a cuatro zombis para representar una curiosa coreografía inspirada en Thriller.'], []).
	template([cual, es, el, estilo, de, juego, de, plantas, contra, zombis, '.'], ['El estilo de juego es similar a otros juegos de tower defense. El jugador va disponiendo en el escenario distintos tipos de plantas con distintas características con algunas mejoras(se compran en la tienda) únicas de ataque o defensa en tres localizaciones diferentes: jardín delantero, jardín trasero y tejado de la casa, con la intención de detener a una horda de zombis en su misión de devorar los cerebros de los residentes. Los zombis también se presentan en una serie de tipos con diferentes atributos y habilidades, como cavar por debajo de las plantas o saltar por encima de éstas con la ayuda de pértigas, llevar diferentes objetos como casco o conos, o invocar a cuatro zombis para representar una curiosa coreografía inspirada en Thriller.'], []).
	template([cual, es, el, estilo, de, juego, de, plantas, contra, zombis, '?'], ['El estilo de juego es similar a otros juegos de tower defense. El jugador va disponiendo en el escenario distintos tipos de plantas con distintas características con algunas mejoras(se compran en la tienda) únicas de ataque o defensa en tres localizaciones diferentes: jardín delantero, jardín trasero y tejado de la casa, con la intención de detener a una horda de zombis en su misión de devorar los cerebros de los residentes. Los zombis también se presentan en una serie de tipos con diferentes atributos y habilidades, como cavar por debajo de las plantas o saltar por encima de éstas con la ayuda de pértigas, llevar diferentes objetos como casco o conos, o invocar a cuatro zombis para representar una curiosa coreografía inspirada en Thriller.'], []).
	template([cuales, son, los, modos, de, juego, de, plantas, vs, zombis, '.'], ['El modo principal del juego es el modo historia, pero hay mas modos tales como minijuegos, puzzles y supervivencias'], []).
	template([cuales, son, los, modos, de, juego, de, plantas, vs, zombis, '?'], ['El modo principal del juego es el modo historia, pero hay mas modos tales como minijuegos, puzzles y supervivencias'], []).
	template([cuales, son, los, modos, de, juego, de, plantas, contra, zombis, '.'], ['El modo principal del juego es el modo historia, pero hay mas modos tales como minijuegos, puzzles y supervivencias'], []).
	template([cuales, son, los, modos, de, juego, de, plantas, contra, zombis, '?'], ['El modo principal del juego es el modo historia, pero hay mas modos tales como minijuegos, puzzles y supervivencias'], []).
	
	% Minijuegos Plantas vs Zombis 1
	template([minijuegos, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).
	
	template([minijuegos, de, plantas, vs, zombis, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).

	template([minijuegos, de, plantas, contra, zombis, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).
	
	template([dime, los, minijuegos, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).
	
	template([dime, los, minijuegos, de, plantas, vs, zombis, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).

	template([dime, los, minijuegos, de, plantas, contra, zombis, '.'], ListaMinijuegos, []):-
		findall(Minijuegos, minijuegosPlantasVsZombis(Minijuegos), ListaMinijuegos).

	% Minijuegos Plantas vs Zombis interactivos 2
	template([s(_), es, un, minijuego, de, plantas, vs, zombis, '.'], [flagMinijuegos], [0]).
	template([s(_), es, un, minijuego, de, plantas, vs, zombis, '?'], [flagMinijuegos], [0]).
	template([s(_), es, un, minijuego, de, plantas, contra, zombis, '.'], [flagMinijuegos], [0]).
	template([s(_), es, un, minijuego, de, plantas, contra, zombis, '?'], [flagMinijuegos], [0]).

	% Puzzles Plantas vs Zombis 1
	template([puzzles, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).
	
	template([puzzles, de, plantas, vs, zombis, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).

	template([puzzles, de, plantas, contra, zombis, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).
	
	template([dime, los, puzzles, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).
	
	template([dime, los, puzzles, de, plantas, vs, zombis, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).

	template([dime, los, puzzles, de, plantas, contra, zombis, '.'], ListaPuzzles, []):-
		findall(Puzzles, puzzlesPlantasVsZombis(Puzzles), ListaPuzzles).

	% Puzzles Plantas vs Zombis interactivos 2
	template([s(_), es, un, puzzle, de, plantas, vs, zombis, '.'], [flagPuzzles], [0]).
	template([s(_), es, un, puzzle, de, plantas, vs, zombis, '?'], [flagPuzzles], [0]).
	template([s(_), es, un, puzzle, de, plantas, contra, zombis, '.'], [flagPuzzles], [0]).
	template([s(_), es, un, puzzle, de, plantas, contra, zombis, '?'], [flagPuzzles], [0]).

	% Supervivencia Plantas vs Zombis 1
	template([supervivencia, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).
	
	template([supervivencias, de, plantas, vs, zombis, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).

	template([supervivencias, de, plantas, contra, zombis, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).
	
	template([dime, los, supervivencias, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).
	
	template([dime, los, supervivencias, de, plantas, vs, zombis, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).

	template([dime, los, supervivencias, de, plantas, contra, zombis, '.'], ListaSupervivencia, []):-
		findall(Supervivencia, supervivenciasPlantasVsZombis(Supervivencia), ListaSupervivencia).

	% Supervivencia Plantas vs Zombis interactivos 2
	template([supervivencia, s(_), es, un, minijuego, de, supervivencia, de, plantas, vs, zombis, '.'], [flagSupervivencias], [1]).
	template([supervivencia, s(_), es, un, minijuego, de, supervivencia, de, plantas, vs, zombis, '?'], [flagSupervivencias], [1]).
	template([supervivencia, s(_), es, un, minijuego, de, supervivencia, de, plantas, contra, zombis, '.'], [flagSupervivencias], [1]).
	template([supervivencia, s(_), es, un, minijuego, de, supervivencia, de, plantas, contra, zombis, '?'], [flagSupervivencias], [1]).

	% Niveles de Plantas vs Zombis 1
	template([cuales, son, los, niveles, de, plantas, vs, zombis, '.'], ['Plantas vs zombis tiene 5 niveles de los cuales cada nivel tiene 10 sub-niveles dando un total de 50 niveles'], []).
	template([cuales, son, los, niveles, de, plantas, contra, zombis, '.'], ['Plantas vs zombis tiene 5 niveles de los cuales cada nivel tiene 10 sub-niveles dando un total de 50 niveles'], []).
	template([cuales, son, los, niveles, de, plantas, vs, zombis, '?'], ['Plantas vs zombis tiene 5 niveles de los cuales cada nivel tiene 10 sub-niveles dando un total de 50 niveles'], []).
	template([cuales, son, los, niveles, de, plantas, contra, zombis, '?'], ['Plantas vs zombis tiene 5 niveles de los cuales cada nivel tiene 10 sub-niveles dando un total de 50 niveles'], []).
	
	% Niveles de Plantas vs Zombis interactivos 2
	template([s(_), es, un, nivel, de, plantas, vs, zombis, '.'], [flagNiveles], [0]).
	template([s(_), es, un, nivel, de, plantas, vs, zombis, '?'], [flagNiveles], [0]).
	template([s(_), es, un, nivel, de, plantas, contra, zombis, '.'], [flagNiveles], [0]).
	template([s(_), es, un, nivel, de, plantas, contra, zombis, '?'], [flagNiveles], [0]).

	% Personajes de Plantas vs Zombis 1
	template([personajes, '.'], ['Plantas vs Zombis cuenta con varios personajes, si quieres saber mas acerca de cada uno solo escribe su nombre'], []).
	template([cuales, son, los, personajes, de, plantas, vs, zombis, '.'], ['Plantas vs Zombis cuenta con varios personajes, si quieres saber mas acerca de cada uno solo escribe su nombre'], []).
	template([cuales, son, los, personajes, de, plantas, vs, zombis, '?'], ['Plantas vs Zombis cuenta con varios personajes, si quieres saber mas acerca de cada uno solo escribe su nombre'], []).
	template([cuales, son, los, personajes, de, plantas, contra, zombis, '.'], ['Plantascontra Zombis cuenta con varios personajes, si quieres saber mas acerca de cada uno solo escribe su nombre'], []).
	template([cuales, son, los, personajes, de, plantas, contra, zombis, '?'], ['Plantas vs Zombis cuenta con varios personajes, si quieres saber mas acerca de cada uno solo escribe su nombre'], []).
	template([vecino, '.'], ['Es el unico personaje operable del juego. Esta diseñado de manera que el jugador tome su rol y sirve como una experiencia interactiva con el juego.'], []).
	template([plantas, '.'], ['Son plantas con diferentes habilidades y defensas en contra de los zombis.'], []).
	template([crazy, dave, '.'], ['Es el excentrico vecino del protagonista, un hombre que admite y clama estar demente. Aunque no se explica como sobrevive a la invasion de los zombis, normalmente actua como un aliado del jugador, a quien llama "vecino", y explica las características de ciertas plantas y la jugabilidad de ciertos niveles.'], []).
	template([dave, '.'], ['Es el excentrico vecino del protagonista, un hombre que admite y clama estar demente. Aunque no se explica como sobrevive a la invasion de los zombis, normalmente actua como un aliado del jugador, a quien llama "vecino", y explica las características de ciertas plantas y la jugabilidad de ciertos niveles.'], []).
	template([zomboss, '.'], ['El antagonista del juego. Es un zombi que recuerda al arquetipo de cientifico loco. Su objetivo es devorar el cerebro del protagonista, para lo que envia diferentes zombis a atacar el vecindario. Actua como el jefe final del juego en una confrontacion en la que opera un robot gigante llamado Zombot.'], []).
	template([zombies, '.'], ['Muertos vivientes y lacayos del Dr. Zomboss, quienes buscan comer el cerebro del vecino. Al igual que las plantas, tienen diferentes habilidades y usan objetos que incrementan el nivel de dificultad.'], []).
	template([cuales, son, los, personajes, de, plantas, vs, zombis, '.'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([cuales, son, los, personajes, de, plantas, contra, zombis, '.'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([cuales, son, los, personajes, de, plantas, vs, zombis, '?'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([cuales, son, los, personajes, de, plantas, contra, zombis, '?'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([dime, los, personajes, de, plantas, vs, zombis, '.'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([dime, los, personajes, de, plantas, contra, zombis, '.'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	template([dime, los, personajes, de, plantas, vs, zombis, '?'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).
		
	template([dime, los, personajes, de, plantas, contra, zombis, '?'], ListaPersonajes, []):-
		findall(Personajes, personajePlantasVsZombis(Personajes), ListaPersonajes).

	% Personajes de Plantas vs Zombis interactivos 2
	template([s(_), es, un, personaje, de, plantas, vs, zombis, '.'], [flagPersonajes], [0]).
	template([el, s(_), es, un, personaje, de, plantas, vs, zombis, '.'], [flagPersonajes], [1]).
	template([las, s(_), son, un, personaje, de, plantas, vs, zombis, '.'], [flagPersonajes], [1]).
	template([los, s(_), son, un, personaje, de, plantas, vs, zombis, '.'], [flagPersonajes], [1]).
	template([s(_), es, un, personaje, de, plantas, vs, zombis, '?'], [flagPersonajes], [0]).
	template([el, s(_), es, un, personaje, de, plantas, vs, zombis, '?'], [flagPersonajes], [1]).
	template([las, s(_), son, un, personaje, de, plantas, vs, zombis, '?'], [flagPersonajes], [1]).
	template([los, s(_), son, un, personaje, de, plantas, vs, zombis, '?'], [flagPersonajes], [1]).
	template([s(_), es, un, personaje, de, plantas, contra, zombis, '?'], [flagPersonajes], [0]).
	template([el, s(_), es, un, personaje, de, plantas, contra, zombis, '?'], [flagPersonajes], [1]).
	template([las, s(_), son, un, personaje, de, plantas, contra, zombis, '?'], [flagPersonajes], [1]).
	template([los, s(_), son, un, personaje, de, plantas, contra, zombis, '?'], [flagPersonajes], [1]).

	% Tipos de plantas 1
	template([que, tipos, de, plantas, hay, en, el, juego, '.'], ['En Plantas vs Zombis hay diferentes tipos de plantas, los cuales son: terrestres, protectoras, acuaticas, nocturas y mejoradas'], []).
	template([que, tipos, de, plantas, hay, en, el, juego, '?'], ['En Plantas vs Zombis hay diferentes tipos de plantas, los cuales son: terrestres, protectoras, acuaticas, nocturas y mejoradas'], []).
	template([tipos, de, plantas, '.'], ['En Plantas vs Zombis hay diferentes tipos de plantas, los cuales son: terrestres, protectoras, acuaticas, nocturas y mejoradas'], []).
	template([dime, los, tipos, de, plantas, que, hay, en, el, juego, '.'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	template([dime, los, tipos, de, plantas, que, hay, en, plantas, vs, zombis, '.'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	template([cuales, son, los, tipos, de, plantas, que, hay, en, el, juego, '.'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	template([cuales, son, los, tipos, de, plantas, que, hay, en, el, juego, '?'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	template([cuales, son, los, tipos, de, plantas, que, hay, en, plantas, vs, zombis, '.'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	template([cuales, son, los, tipos, de, plantas, que, hay, en, plantas, vs, zombis, '?'], ListaTipoDePlantas, []):-
		findall(TipoDePlantas, tipoPlanta(TipoDePlantas), ListaTipoDePlantas).

	% Tipos de plantas interactivo 2
	template([s(_), es, un, tipo, de, planta, '.'], [flagTiposPlantas], [0]).
	template([s(_), es, un, tipo, de, planta, '?'], [flagTiposPlantas], [0]).
	template([las, plantas, s(_), son, un, tipo, de, planta, '.'], [flagTiposPlantas], [2]).
	template([las, plantas, s(_), son, un, tipo, de, planta, '?'], [flagTiposPlantas], [2]).
	template([s(_), es, un, tipo, de, planta, en, el, juego, '.'], [flagTiposPlantas], [0]).
	template([s(_), es, un, tipo, de, planta, en, el, juego, '?'], [flagTiposPlantas], [0]).
	template([las, plantas, s(_), son, un, tipo, de, planta, en, el, juego, '.'], [flagTiposPlantas], [2]).
	template([las, plantas, s(_), son, un, tipo, de, planta, en, el, juego, '?'], [flagTiposPlantas], [2]).

	% Plantas terrestres de Plantas vs Zombis 1
	template([plantas, terrestres, '.'], ['Son plantas que funcionan en el suelo durante el dia y la noche. Asimismo, son plantas que solo atacan hacia el frente.'], []).
	template([cuales, son, las, plantas, terrestres, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	template([dime, las, plantas, terrestres, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	template([cuales, son, las, plantas, terrestres, del, juego, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	template([dime, las, plantas, terrestres, del, juego, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	template([cuales, son, las, plantas, terrestres, que, hay, en, el, juego, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	template([dime, las, plantas, terrestres, que, hay, en, el, juego, '.'], ListaPlantasTerrestres, []):-
		findall(PlantasTerrestres, plantaTerrestrePlantasVsZombis(PlantasTerrestres), ListaPlantasTerrestres).

	% Plantas terrestres de Plantas vs Zombis interactivo 2
	template([s(_), es, una, planta, terrestre, '.'], [flagPlantaTerrestre], [0]).
	template([s(_), es, una, planta, terrestre, '?'], [flagPlantaTerrestre], [0]).
	template([la, s(_), es, una, planta, terrestre, '.'], [flagPlantaTerrestre], [1]).
	template([el, s(_), es, una, planta, terrestre, '?'], [flagPlantaTerrestre], [1]).

	% Plantas protectoras de Plantas vs Zombis 1
	template([plantas, protectoras, '.'], ['Se caracterizan por cumplir diversas funciones, ademas de atacar y defender a las plantas. Pueden ser explosivos, con efecto aereo, con proteccion o efecto disperso.'], []).
	template([cuales, son, las, plantas, protectoras, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	template([dime, las, plantas, protectoras, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	template([cuales, son, las, plantas, protectoras, del, juego, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	template([dime, las, plantas, protectoras, del, juego, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	template([cuales, son, las, plantas, protectoras, que, hay, en, el, juego, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	template([dime, las, plantas, protectoras, que, hay, en, el, juego, '.'], ListaPlantasProtectoras, []):-
		findall(PlantasProtectoras, plantaProtectoraPlantasVsZombis(PlantasProtectoras), ListaPlantasProtectoras).

	% Plantas protectoras de Plantas vs Zombis interactivo 2
	template([s(_), es, una, planta, protectora, '.'], [flagPlantaProtectora], [0]).
	template([s(_), es, una, planta, protectora, '?'], [flagPlantaProtectora], [0]).
	template([la, s(_), es, una, planta, protectora, '.'], [flagPlantaProtectora], [1]).
	template([el, s(_), es, una, planta, protectora, '?'], [flagPlantaProtectora], [1]).

	% Plantas nocturnas de Plantas vs Zombis 1
	template([plantas, nocturnas, '.'], ['Se caracterizan por funcionar solo por las noches, ya que por el dia, duermen. De querer usar a estos por el dia, es necesario usar el Grano de cafe.'], []).
	template([cuales, son, las, plantas, nocturnas, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	template([dime, las, plantas, nocturnas, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	template([cuales, son, las, plantas, nocturnas, del, juego, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	template([dime, las, plantas, nocturnas, del, juego, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	template([cuales, son, las, plantas, nocturnas, que, hay, en, el, juego, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	template([dime, las, plantas, nocturnas, que, hay, en, el, juego, '.'], ListaPlantasNocturnas, []):-
		findall(PlantasNocturnas, plantaNocturnaPlantasVsZombis(PlantasNocturnas), ListaPlantasNocturnas).

	% Plantas nocturnas de Plantas vs Zombis interactivo 2
	template([s(_), es, una, planta, nocturna, '.'], [flagPlantaNoctura], [0]).
	template([s(_), es, una, planta, nocturna, '?'], [flagPlantaNoctura], [0]).
	template([la, s(_), es, una, planta, nocturna, '.'], [flagPlantaNoctura], [1]).
	template([el, s(_), es, una, planta, nocturna, '?'], [flagPlantaNoctura], [1]).

	% Plantas acuaticas de Plantas vs Zombis 1
	template([plantas, acuaticas, '.'], ['Funcionan en el agua, ya sea por el dia como por la noche.'], []).
	template([cuales, son, las, plantas, acuaticas, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	template([dime, las, plantas, acuaticas, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	template([cuales, son, las, plantas, acuaticas, del, juego, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	template([dime, las, plantas, acuaticas, del, juego, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	template([cuales, son, las, plantas, acuaticas, que, hay, en, el, juego, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	template([dime, las, plantas, acuaticas, que, hay, en, el, juego, '.'], ListaPlantasAcuaticas, []):-
		findall(PlantasAcuaticas, plantaNocturnaPlantasVsZombis(PlantasAcuaticas), ListaPlantasAcuaticas).

	% Plantas acuaticas de Plantas vs Zombis interactivo 2
	template([s(_), es, una, planta, acuatica, '.'], [flagPlantaAcuatica], [0]).
	template([s(_), es, una, planta, acuatica, '?'], [flagPlantaAcuatica], [0]).
	template([la, s(_), es, una, planta, acuatica, '.'], [flagPlantaAcuatica], [1]).
	template([el, s(_), es, una, planta, acuatica, '?'], [flagPlantaAcuatica], [1]).

	% Plantas mejoradas de Plantas vs Zombis 1
	template([plantas, mejoradas, '.'], ['Estas son plantas mejoradas en habilidades. Se pueden conseguir en la tienda de Crazy Dave.'], []).
	template([cuales, son, las, plantas, mejoradas, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	template([dime, las, plantas, mejoradas, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	template([cuales, son, las, plantas, mejoradas, del, juego, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	template([dime, las, plantas, mejoradas, del, juego, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	template([cuales, son, las, plantas, mejoradas, que, hay, en, el, juego, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	template([dime, las, plantas, mejoradas, que, hay, en, el, juego, '.'], ListaPlantasMejoradas, []):-
		findall(PlantasMejoradas, plantaNocturnaPlantasVsZombis(PlantasMejoradas), ListaPlantasMejoradas).

	% Plantas mejoradas de Plantas vs Zombis interactivo 2
	template([s(_), es, una, planta, mejorada, '.'], [flagPlantaMejorada], [0]).
	template([s(_), es, una, planta, mejorada, '?'], [flagPlantaMejorada], [0]).
	template([la, s(_), es, una, planta, mejorada, '.'], [flagPlantaMejorada], [1]).
	template([el, s(_), es, una, planta, mejorada, '?'], [flagPlantaMejorada], [1]).

	% Plantas zombis de Plantas vs Zombis 1
	template([cuales, son, zombis, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	template([dime, zombis, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	template([cuales, son, zombis, del, juego, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	template([dime, zombis, del, juego, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	template([cuales, son, zombis, que, hay, en, el, juego, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	template([dime, zombis, que, hay, en, el, juego, '.'], ListaZombis, []):-
		findall(Zombis, zombiPlantasVsZombis(Zombis), ListaZombis).

	% Plantas zombis de Plantas vs Zombis interactivo 2
	template([s(_), es, un, zombi, '.'], [flagZombis], [0]).
	template([s(_), es, un, zombi, '?'], [flagZombis], [0]).
	template([zombi, s(_), es, un, zombi, '.'], [flagZombis], [1]).
	template([zombi, s(_), es, un, zombi, '?'], [flagZombis], [1]).
	template([el, zombi, s(_), es, un, zombi, '.'], [flagZombis], [2]).
	template([el, zombi, s(_), es, un, zombi, '?'], [flagZombis], [2]).
	template([s(_), es, un, zombi, del, juego, '.'], [flagZombis], [0]).
	template([s(_), es, un, zombi, del, juego, '?'], [flagZombis], [0]).
	template([zombi, s(_), es, un, zombi, del, juego, '.'], [flagZombis], [1]).
	template([zombi, s(_), es, un, zombi, del, juego, '?'], [flagZombis], [1]).
	template([el, zombi, s(_), es, un, zombi, del, juego, '.'], [flagZombis], [2]).
	template([el, zombi, s(_), es, un, zombi, del, juego, '?'], [flagZombis], [2]).

	% Banda sonora de plantas vs zombis
	template([musica, del, juego, '.'], ['La banda sonora de Plantas contra Zombis fue compuesta por Laura Shigihara. Toma prestados elementos de musica pop, asi como chiptunes de consola.'], []).
	template([banda, sonora, del, juego, '.'], ['La banda sonora de Plantas contra Zombis fue compuesta por Laura Shigihara. Toma prestados elementos de musica pop, asi como chiptunes de consola.'], []).
	template([cual, es, la, musica, del, juego, '.'], ['Plantas vs zombis cuenta con una variedad de canciones de las cuales podemos mencionar: 
	- Main Menu: La cancion del menu principal.
	- Chose Your Seeds: Cancion que suena cuando estas eligiendo las plantas para atacar.
	- Grasswalk: Cancion que suena en el modo Dia.
	- Moongrains: Cancion que suena en el modo Noche.
	- Watery Graves: Cancion que suena en el modo Piscina.
	- Rigor Mormist: Cancion que suena en el modo Niebla.
	- Graze The Roof: Cancion que suena en el modo Tejado.
	- Braniac Maniac: cancion que se usa en la Batalla del Dr. Zomboss.
	- Loonboon: Cancion que suena en los niveles 1-5, 2-5, 3-5 y 5-5.
	- Cerebrawl: Cancion que suena en los Puzzles y en el Nivel 4-5.
	- Zombies On Your Lawn: La cancion final de los Creditos.
	- Uraniwa Ni Zombies Ga: Version japonesa de los Creditos.'], []).
	
	template([cual, es, la, musica, del, juego, '?'], ['Plantas vs zombis cuenta con una variedad de canciones de las cuales podemos mencionar: 
	- Main Menu: La cancion del menu principal.
	- Chose Your Seeds: Cancion que suena cuando estas eligiendo las plantas para atacar.
	- Grasswalk: Cancion que suena en el modo Dia.
	- Moongrains: Cancion que suena en el modo Noche.
	- Watery Graves: Cancion que suena en el modo Piscina.
	- Rigor Mormist: Cancion que suena en el modo Niebla.
	- Graze The Roof: Cancion que suena en el modo Tejado.
	- Braniac Maniac: cancion que se usa en la Batalla del Dr. Zomboss.
	- Loonboon: Cancion que suena en los niveles 1-5, 2-5, 3-5 y 5-5.
	- Cerebrawl: Cancion que suena en los Puzzles y en el Nivel 4-5.
	- Zombies On Your Lawn: La cancion final de los Creditos.
	- Uraniwa Ni Zombies Ga: Version japonesa de los Creditos.'], []).
	
	template([que, canciones, tiene, el, juego, '.'], ['Plantas vs zombis cuenta con una variedad de canciones de las cuales podemos mencionar: 
	- Main Menu: La cancion del menu principal.
	- Chose Your Seeds: Cancion que suena cuando estas eligiendo las plantas para atacar.
	- Grasswalk: Cancion que suena en el modo Dia.
	- Moongrains: Cancion que suena en el modo Noche.
	- Watery Graves: Cancion que suena en el modo Piscina.
	- Rigor Mormist: Cancion que suena en el modo Niebla.
	- Graze The Roof: Cancion que suena en el modo Tejado.
	- Braniac Maniac: cancion que se usa en la Batalla del Dr. Zomboss.
	- Loonboon: Cancion que suena en los niveles 1-5, 2-5, 3-5 y 5-5.
	- Cerebrawl: Cancion que suena en los Puzzles y en el Nivel 4-5.
	- Zombies On Your Lawn: La cancion final de los Creditos.
	- Uraniwa Ni Zombies Ga: Version japonesa de los Creditos.'], []).
	
	template([que, canciones, tiene, el, juego, '?'], ['Plantas vs zombis cuenta con una variedad de canciones de las cuales podemos mencionar: 
	- Main Menu: La cancion del menu principal.
	- Chose Your Seeds: Cancion que suena cuando estas eligiendo las plantas para atacar.
	- Grasswalk: Cancion que suena en el modo Dia.
	- Moongrains: Cancion que suena en el modo Noche.
	- Watery Graves: Cancion que suena en el modo Piscina.
	- Rigor Mormist: Cancion que suena en el modo Niebla.
	- Graze The Roof: Cancion que suena en el modo Tejado.
	- Braniac Maniac: cancion que se usa en la Batalla del Dr. Zomboss.
	- Loonboon: Cancion que suena en los niveles 1-5, 2-5, 3-5 y 5-5.
	- Cerebrawl: Cancion que suena en los Puzzles y en el Nivel 4-5.
	- Zombies On Your Lawn: La cancion final de los Creditos.
	- Uraniwa Ni Zombies Ga: Version japonesa de los Creditos.'], []).

	% Versiones del juego
	template([que, versiones, existen, del, juego, '.'], ['Salieron diversas versiones del juego ya que se hizo rapidamente muy popular, podemos mencionar algunas versiones como las de: xbox 360, xbox one, nintendo DS, playstation 3, playstation vita, iOs, Bada, Android, Nokia, Java y para PC'], []).
	template([que, versiones, existen, del, juego, '?'], ['Salieron diversas versiones del juego ya que se hizo rapidamente muy popular, podemos mencionar algunas versiones como las de: xbox 360, xbox one, nintendo DS, playstation 3, playstation vita, iOs, Bada, Android, Nokia, Java y para PC'], []).



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

	% FlagMinijuegos
	minijuegoEs(X, R):- minijuegosPlantasVsZombis(X), R = ['Si', X, es, un, minijuego, de, 'Plantas vs Zombis'].
	minijuegoEs(X, R):- \+minijuegosPlantasVsZombis(X), R = ['No', X, no, es, un, minijuego, de, 'Plantas vs Zombis'].
	minijuegosPlantasVsZombis('vegezombis').
	minijuegosPlantasVsZombis('bolera').
	minijuegosPlantasVsZombis('zombiquarium').
	minijuegosPlantasVsZombis('semillas-caidas').
	minijuegosPlantasVsZombis('¡Formen!-¡Arr!').
	minijuegosPlantasVsZombis('tragaperras').
	minijuegosPlantasVsZombis('bezombied').
	minijuegosPlantasVsZombis('portal-combat').
	minijuegosPlantasVsZombis('invisibles').
	minijuegosPlantasVsZombis('ultimo-batallón').
	minijuegosPlantasVsZombis('mola-mazo').
	minijuegosPlantasVsZombis('vegezombis-2').
	minijuegosPlantasVsZombis('bezombied-twist').
	minijuegosPlantasVsZombis('saltimbanquis').
	minijuegosPlantasVsZombis('zombis-zumbaos').

	% FlagPuzzlez
	puzzleEs(X, R):- puzzlesPlantasVsZombis(X), R = ['Si', X, es, un, puzzle, de, 'Plantas vs Zombis'].
	puzzleEs(X, R):- \+puzzlesPlantasVsZombis(X), R = ['No', X, no, es, un, puzzle, de, 'Plantas vs Zombis'].
	puzzlesPlantasVsZombis('yo-zombi').
	puzzlesPlantasVsZombis('ultimo-batallon').
	puzzlesPlantasVsZombis('rompejarrones').

	% FlagSupervivencia
	supervicenciaEs(X, R):- supervivenciasPlantasVsZombis(X), R = ['Si', supervicencia, X, es, un, minijuego, de, supervivencia, de, 'Plantas vs Zombis'].
	supervicenciaEs(X, R):- \+supervivenciasPlantasVsZombis(X), R = ['No', supervicencia, X, no, es, un, minijuego, de, supervivencia, de, 'Plantas vs Zombis'].
	supervivenciasPlantasVsZombis('dia').
	supervivenciasPlantasVsZombis('noche').
	supervivenciasPlantasVsZombis('piscina').
	supervivenciasPlantasVsZombis('niebla').
	supervivenciasPlantasVsZombis('tejado').
	supervivenciasPlantasVsZombis('infinita').

	% FlagNiveles
	nivelEs(X, R):- nivelesPlantasVsZombis(X), R = ['Si', X, es, un, nivel, de, 'Plantas vs Zombis'].
	nivelEs(X, R):- \+nivelesPlantasVsZombis(X), R = ['No', X, no, es, un, nivel, de, 'Plantas vs Zombis'].
	nivelesPlantasVsZombis('dia').
	nivelesPlantasVsZombis('noche').
	nivelesPlantasVsZombis('piscina').
	nivelesPlantasVsZombis('niebla').
	nivelesPlantasVsZombis('tejado').

	% FlagPersonajes
	personajeEs(X, R):- personajePlantasVsZombis(X), R = ['Si', X, es, un, personaje, de, 'Plantas vs Zombis'].
	personajeEs(X, R):- \+personajePlantasVsZombis(X), R = ['No', X, no, es, un, personaje, de, 'Plantas vs Zombis'].
	personajePlantasVsZombis('vecino').
	personajePlantasVsZombis('plantas').
	personajePlantasVsZombis('dave').
	personajePlantasVsZombis('zomboss').
	personajePlantasVsZombis('zombis').

	% FlagTiposDePlantas
	tipoPlantaEs(X, R):- tipoPlanta(X), R = ['Si', X, es, un, tipo, de, planta, en, el, juego, 'Plantas vs Zombis'].
	tipoPlantaEs(X, R):- \+tipoPlanta(X), R = ['No', X, no, es, un, tipo, de, planta, en, el, juego, 'Plantas vs Zombis'].
	tipoPlanta('terrestres').
	tipoPlanta('protectoras').
	tipoPlanta('nocturnas').
	tipoPlanta('acuaticas').
	tipoPlanta('mejoradas').

	% FlagPlantasTerrestres
	plantaTerrestreEs(X, R):- plantaTerrestrePlantasVsZombis(X), R = ['Si', X, es, una, planta, terrestre, de, 'Plantas vs Zombis'].
	plantaTerrestreEs(X, R):- \+plantaTerrestrePlantasVsZombis(X), R = ['No', X, no, es, una, planta, terrestre, de, 'Plantas vs Zombis'].
	plantaTerrestrePlantasVsZombis('girasol').
	plantaTerrestrePlantasVsZombis('margarita').
	plantaTerrestrePlantasVsZombis('lanzaguisante').
	plantaTerrestrePlantasVsZombis('hielaguisante').
	plantaTerrestrePlantasVsZombis('repetidora').
	plantaTerrestrePlantasVsZombis('tripitidora').
	plantaTerrestrePlantasVsZombis('carnivora').

	% FlagPlantasProtectoras
	plantaProtectoraEs(X, R):- plantaProtectoraPlantasVsZombis(X), R = ['Si', X, es, una, planta, protectora, de, 'Plantas vs Zombis'].
	plantaProtectoraEs(X, R):- \+plantaProtectoraPlantasVsZombis(X), R = ['No', X, no, es, una, planta, protectora, de, 'Plantas vs Zombis'].
	plantaProtectoraPlantasVsZombis('nuez').
	plantaProtectoraPlantasVsZombis('calabaza').
	plantaProtectoraPlantasVsZombis('plantorcha').
	plantaProtectoraPlantasVsZombis('ajo').
	plantaProtectoraPlantasVsZombis('apisonaflor').
	plantaProtectoraPlantasVsZombis('bipetidora').
	plantaProtectoraPlantasVsZombis('cactus').
	plantaProtectoraPlantasVsZombis('petacereza').
	plantaProtectoraPlantasVsZombis('jalapeño').
	plantaProtectoraPlantasVsZombis('patatapum').
	plantaProtectoraPlantasVsZombis('pinchohierba').
	plantaProtectoraPlantasVsZombis('frustrella').
	plantaProtectoraPlantasVsZombis('coltapulta').
	plantaProtectoraPlantasVsZombis('lanzamaiz').
	plantaProtectoraPlantasVsZombis('melonpulta').
	plantaProtectoraPlantasVsZombis('trebolador').
	plantaProtectoraPlantasVsZombis('paraplanta').
	plantaProtectoraPlantasVsZombis('maceta').
	plantaProtectoraPlantasVsZombis('cafe').

	% FlagPlantasNocturnas
	plantaNocturaEs(X, R):- plantaNocturnaPlantasVsZombis(X), R = ['Si', X, es, una, planta, nocturna, de, 'Plantas vs Zombis'].
	plantaNocturaEs(X, R):- \+plantaNocturnaPlantasVsZombis(X), R = ['No', X, no, es, una, planta, nocturna, de, 'Plantas vs Zombis'].
	plantaNocturnaPlantasVsZombis('seta').
	plantaNocturnaPlantasVsZombis('humoseta').
	plantaNocturnaPlantasVsZombis('marseta').
	plantaNocturnaPlantasVsZombis('magnetoseta').
	plantaNocturnaPlantasVsZombis('hipnoseta').
	plantaNocturnaPlantasVsZombis('setacongelada').
	plantaNocturnaPlantasVsZombis('setasolar').
	plantaNocturnaPlantasVsZombis('petaseta').
	plantaNocturnaPlantasVsZombis('comepiedras').
	plantaNocturnaPlantasVsZombis('planterna').

	% FlagPlantasAcuaticas
	plantaAcuaticaEs(X, R):- plantaAcuaticaPlantasVsZombis(X), R = ['Si', X, es, una, planta, acuatica, de, 'Plantas vs Zombis'].
	plantaAcuaticaEs(X, R):- \+plantaAcuaticaPlantasVsZombis(X), R = ['No', X, no, es, una, planta, acuatica, de, 'Plantas vs Zombis'].
	plantaAcuaticaPlantasVsZombis('nenufar').
	plantaAcuaticaPlantasVsZombis('zampalga').
	plantaAcuaticaPlantasVsZombis('marseta').

	% FlagPlantasMejoradas
	plantaMejoradaEs(X, R):- plantaMejoradaPlantasVsZombis(X), R = ['Si', X, es, una, planta, mejorada, de, 'Plantas vs Zombis'].
	plantaMejoradaEs(X, R):- \+plantaMejoradaPlantasVsZombis(X), R = ['No', X, no, es, una, planta, mejorada, de, 'Plantas vs Zombis'].
	plantaMejoradaPlantasVsZombis('guisantralladora').
	plantaMejoradaPlantasVsZombis('birasol').
	plantaMejoradaPlantasVsZombis('gasoseta').
	plantaMejoradaPlantasVsZombis('pinchorroca').
	plantaMejoradaPlantasVsZombis('mazorcañon').
	plantaMejoradaPlantasVsZombis('imitadora').

	% FlagZombis
	zombiEs(X, R):- zombiPlantasVsZombis(X), R = ['Si', X, es, un, zombi, de, 'Plantas vs Zombis'].
	zombiEs(X, R):- \+zombiPlantasVsZombis(X), R = ['No', X, no, es, un, zombi, de, 'Plantas vs Zombis'].
	zombiPlantasVsZombis('zombi').
	zombiPlantasVsZombis('abanderado').
	zombiPlantasVsZombis('caracono').
	zombiPlantasVsZombis('saltador').
	zombiPlantasVsZombis('caracubo').
	zombiPlantasVsZombis('lector').
	zombiPlantasVsZombis('portero').
	zombiPlantasVsZombis('deportista').
	zombiPlantasVsZombis('bailon').
	zombiPlantasVsZombis('disco').
	zombiPlantasVsZombis('extra').
	zombiPlantasVsZombis('playero').
	zombiPlantasVsZombis('buzon').
	zombiPlantasVsZombis('zombictor').
	zombiPlantasVsZombis('bobsleigh').
	zombiPlantasVsZombis('delfin').
	zombiPlantasVsZombis('cajita').
	zombiPlantasVsZombis('globo').
	zombiPlantasVsZombis('picado').
	zombiPlantasVsZombis('saltarin').
	zombiPlantasVsZombis('yeti').
	zombiPlantasVsZombis('colgao').
	zombiPlantasVsZombis('escalador').
	zombiPlantasVsZombis('zombipulta').
	zombiPlantasVsZombis('zombistein').
	zombiPlantasVsZombis('megazombistein').
	zombiPlantasVsZombis('zombidito').
	zombiPlantasVsZombis('zomboss').


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

	% Minijuegos Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagMinijuegos,
		minijuegoEs(Atom, R).

	% Puzzles Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPuzzles,
		puzzleEs(Atom, R).

	% Supervivencia Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagSupervivencias,
		supervicenciaEs(Atom, R).

	% Niveles Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagNiveles,
		nivelEs(Atom, R).

	% Personajes Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPersonajes,
		personajeEs(Atom, R).

	% Tipos Plantas Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagTiposPlantas,
		tipoPlantaEs(Atom, R).
	
	% PlantaTerrestre Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPlantaTerrestre,
		plantaTerrestreEs(Atom, R).

	% PlantaProtectora Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPlantaProtectora,
		plantaProtectoraPlantasVsZombis(Atom, R).

	% PlantaNoctura Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPlantaNoctura,
		plantaNocturaEs(Atom, R).

	% PlantaAcuatica Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPlantaAcuatica,
		plantaAcuaticaEs(Atom, R).

	% PlantaMejorada Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagPlantaMejorada,
		plantaMejoradaEs(Atom, R).

	% Zombis Plantas vs Zombis:
	replace0([I|_], Input, _, Resp, R):-
		nth0(I, Input, Atom),
		nth0(0, Resp, X),
		X == flagZombis,
		zombiEs(Atom, R).

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