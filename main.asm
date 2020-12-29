; Proyecto2
;**************************************************************************************************************************************************************************
section .bss




	jugador1: resb largoJugadores
	jugador1len equ $- jugador1
	
	jugador1Maso: resb 14
	
	
	jugador2: resb largoJugadores
	jugador2len equ $- jugador2
	
	jugador2Maso: resb 14
	
	jugador3: resb largoJugadores
	jugador3len equ $- jugador3
	
	jugador3Maso: resb 14
	
	jugador4: resb largoJugadores
	jugador4len equ $- jugador4
	
	jugador4Maso: resb 14
	
	
	masoComunal: resb 10; 
	masoComunalLen equ $- masoComunal



	;::::::RBRB
	;bufferToString: resb 2


	bufferNombre: resb sizeBufferNombre
	bufferDesicion: resb sizeBufferDecision





	
;**************************************************************************************************************************************************************************
section .data

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;verificacion INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

	punteroMano: dd 0
	punteroManoLen equ punteroMano


	mano1 : db "8T5T6T2T3T4",0AH
	mano1Len equ $-mano1


	mano2 : db "AT5TJT9TAT4",0AH
	mano2Len equ $-mano2

	EtiquetaGanador: db "El ganador es mano 1",0AH
	EtiquetaGanadorLen equ $-EtiquetaGanador
	EtiquetaGanador2 : db "El ganador es mano 2",0AH
	EtiquetaGanador2Len equ $ -EtiquetaGanador2
		
		


mano : db "QC7P5P3P0PN",0AH
manoLen equ $-mano

EtiquetaIguales : db "Son iguales" , 0AH
EtiquetaIgualesLen equ $-EtiquetaIguales

EtiquetaDiferentes : db "Son diferentes",0AH
EtiquetaDiferentesLen equ $-EtiquetaDiferentes

EtiquetaEscaleraReal :db "Soy Escalera Real",0AH
EtiquetaEscaleraRealLen equ $-EtiquetaEscaleraReal

EtiquetaNoEscaleraReal: db "No soy escalera real",0AH
EtiquetaNoEscaleraRealLen equ $- EtiquetaNoEscaleraReal

EtiquetaEscaleraColor: db "Soy Escalera de color",0AH
EtiquetaEscaleraColorLen equ $-EtiquetaEscaleraColor

EtiquetaNOEscaleraColor: db "No soy escalera color",0AH
EtiquetaNOEscaleraColorLen equ $-EtiquetaNOEscaleraColor

EtiquetaPoquer :db "Soy Poquer",0AH
EtiquetaPoquerLen equ $-EtiquetaPoquer

EtiquetaNOPoquer :db "No Soy Poquer",0AH
EtiquetaNOPoquerLen equ $-EtiquetaNOPoquer


EtiquetaEscalera: db "Soy Escalera",0AH
EtiquetaEscaleraLen equ $-EtiquetaEscalera

EtiquetaNOEscalera: db "No soy escalera",0AH
EtiquetaNOEscaleraLen equ $-EtiquetaNOEscalera

EtiquetaFull :db "Soy un full",0AH
EtiquetaFullLen equ $-EtiquetaFull

EtiquetaTrio : db "Soy un trío",0AH
EtiquetaTrioLen equ $-EtiquetaTrio

EtiquetaNOTrio :db "No soy un trío",0AH
EtiquetaNOTrioLen equ $ - EtiquetaNOTrio

EtiquetaPareja :db "Soy Pareja",0AH
EtiquetaParejaLen equ $-EtiquetaPareja

EtiquetaDobleP : db "Soy doble Pareja",0AH
EtiquetaDoblePLen equ $-EtiquetaDobleP

EtiquetaNOPareja :db "No soy Pareja",0AH
EtiquetaNOParejaLen equ $-EtiquetaNOPareja

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;verificacion FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



	
	dealerEtiqueta: db "El dealer es..........:",0
	dealerEtiquetalen equ $- dealerEtiqueta
	
	jugadorEtiqueta: db "   Primer Jugador", 0AH,0
	jugadorEtiquetalen equ $- jugadorEtiqueta
	
	jugador2Etiqueta: db "   Segundo Jugador", 0AH,0
	jugador2Etiquetalen equ $- jugador2Etiqueta
	
	jugador3Etiqueta: db "   Tercer Jugador", 0AH,0
	jugador3Etiquetalen equ $- jugador3Etiqueta
	
	jugador4Etiqueta: db "   Cuarto Jugador", 0AH,0
	jugador4Etiquetalen equ $- jugador4Etiqueta
	
	cartasComunitariasEtiqueta: db "Cartas comunitarias", 0AH,0
	cartasComunitariasEtiquetaLen equ $- cartasComunitariasEtiqueta
	
	cartasComunitarias: db "          ", 0AH, 0; Se puede imprimir
	cartasComunitariaslen equ $- cartasComunitarias
	
	NumeroRandomEtiqueta: db "Numero random: ",0
	NumeroRandomEtiquetaLen equ $- NumeroRandomEtiqueta
	
	monedaEtiqueta: db "Cantidad de Monedas disponibles: ",0
	monedaEtiquetaLen equ $- monedaEtiqueta
	
	carta1Etiqueta: db "Carta 1: ",0
	carta1Etiquetalen equ $- carta1Etiqueta
	
	carta2Etiqueta: db "Carta 2: ",0
	carta2Etiquetalen equ $- carta2Etiqueta
	
	primeraCarta: db "  ", 0AH,0
	primeraCartalen equ $- primeraCarta

	segundaCarta: db "  ",0AH,0
	segundaCartalen equ $- segundaCarta
	
	; Representación de las cartas
	cartas: db "ACKCQCJC0C9C8C7C6C5C4C3C2CADKDQDJD0D9D8D7D6D5D4D3D2DATKTQTJT0T9T8T7T6T5T4T3T2TAPKPQPJP0P9P8P7P6P5P4P3P2P", 0AH
	cartaslen equ $- cartas
	
	number: db "    ", 0AH
	numberLen equ $- number


;::::::::::::::::::
;apuestas
	apuestaInvalida: db "Usted no posee monedas suficientes para apostar esa cantidad.",0AH,0
	apuestaInvalidaLen  equ $- apuestaInvalida

	apuestaEtiqueta: db "Apuesta: ",0
	apuestaEtiquetaLen equ $- apuestaEtiqueta
	
	monedasRestantes: db "Monedas restantes: ", 0
	monedasRestantesLen equ $- monedasRestantes
	

;:::::::::::::::::::::::::::::::::RB

	mejorManoJugador1: db "QC7P5P3P0PN"
	mejorManoJugador2: db "JC7P5P3P0PN"
	mejorManoJugador3: db "KC7P5P3P0PN"
	mejorManoJugador4: db "QC7P5P3P0PN"
	mejorManoJugador5: db "QC7P5P3P0PN"

	mejorMano: db "QC7P5P3P0PN"

	manosDeJugadores: dd mejorManoJugador1,mejorManoJugador2,mejorManoJugador3,mejorManoJugador4
	listaJugadores: dd jugador1, jugador2, jugador3, jugador4

	jugadorGanador: db 0
	numeroDeJugadorDealer: dd 0
	numeroDeJugadorSmallBlind: dd 0
	numeroDeJugadorBigBlind: dd 0
	ultimoJugadorEnJugar: dd 0
	siguienteJugadorEnJugar: dd 0

	banderaAlguienSubioApuesta: dd 0; Si alguien sube la apuesta se activa, 0 desactiva
	banderaSePermitePasar: dd 0; No se permite pasar en la mayoria de casos

	numeroRondaActual: dd 0
	apuestaMinima: dd 2

	gananciaTotal: dd 0
	totalJugadoresActivos: dd cantidadJugadores


	largoMejorMano: equ 11
	largoJugadores: equ 12

	cantidadJugadores: equ 4
	banderasJugadoresActivos: times cantidadJugadores db 1; todos los jugades al inicio estan activos

	sizeBufferCombinaciones: equ 11*10
	;78 = "N"
	posiblesCombinacionesJugador1: times sizeBufferCombinaciones db 78; Guarda las posibles combinaciones que un jugador podria hacer con las 5 cartas comunitarias, 64 = "@", 9 = tab, 10 = "\n"
	posiblesCombinacionesJugador2: times sizeBufferCombinaciones db 78; Guarda las posibles combinaciones que un jugador podria hacer con las 5 cartas comunitarias, 64 = "@", 9 = tab, 10 = "\n"
	posiblesCombinacionesJugador3: times sizeBufferCombinaciones db 78; Guarda las posibles combinaciones que un jugador podria hacer con las 5 cartas comunitarias, 64 = "@", 9 = tab, 10 = "\n"
	posiblesCombinacionesJugador4: times sizeBufferCombinaciones db 78; Guarda las posibles combinaciones que un jugador podria hacer con las 5 cartas comunitarias, 64 = "@", 9 = tab, 10 = "\n"
	posiblesCombinacionesJugador5: times sizeBufferCombinaciones db 78; Guarda las posibles combinaciones que un jugador podria hacer con las 5 cartas comunitarias, 64 = "@", 9 = tab, 10 = "\n"

	sizeMano: equ 11

	sizeBufferNombre: equ 128
	sizeBufferDecision: equ 2

	nuevaLinea: db 10

	mensajeBienvenida: db "Bienvenido",10,13,0
	largoMensajeBienvenida: equ $-mensajeBienvenida

	mensajeDigiteNombre: db "Por favor digite su nombre",10,13,0
	largoMensajeDigiteNombre: equ $-mensajeDigiteNombre

	mensajeRepartirCartas: db "Repartiendo cartas...",10,13,0
	largoMensajeRepartirCartas: equ $-mensajeRepartirCartas

	mensajeCartasAlJugador: db "Sus cartas son:",10,13,0
	largoMensajeCartasAlJugador: equ $-mensajeCartasAlJugador

	mensajePrimerRonda: db "############          INICIA:	Primer ronda: Preflop          ############",10,13,0
	largoNensajePrimerRonda: equ $-mensajePrimerRonda


	mensajePrimerRondaFin: db "############          FINALIZA:	Primer ronda: Preflop          ############",10,13,0
	largoMensajePrimerRondaFin: equ $-mensajePrimerRondaFin

	mensajeSegundaRonda: db "############          Segunda ronda: Postflop          ############",10,13,0
	largoMensajeSegundaRonda: equ $-mensajeSegundaRonda
	
	mensajeTercerRonda: db "############          Tercer ronda: Turn          ############",10,13,0
	largoMensajeTercerRonda: equ $-mensajeTercerRonda

	mensajeCuartaRonda: db "############          Cuarta ronda: Turn          ############",10,13,0
	largoMensajeCuartaRonda: equ $-mensajeCuartaRonda
	
	mensajeSeRindeJugador1: db "El jugador 1 decide rendirse",10,13,0
	largoMensajeSeRindeJugador1: equ $-mensajeSeRindeJugador1

	mensajeSeRindeJugador2: db "El jugador 2 decide rendirse",10,13,0
	largoMensajeSeRindeJugador2: equ $-mensajeSeRindeJugador2
	
	mensajeSeRindeJugador3: db "El jugador 3 decide rendirse",10,13,0
	largoMensajeSeRindeJugador3: equ $-mensajeSeRindeJugador3

	mensajeSeRindeJugador4: db "El jugador 4 decide rendirse",10,13,0
	largoMensajeSeRindeJugador4: equ $-mensajeSeRindeJugador4

	mensajeSubeApuestaJugador1: db "EL jugador 1 subió su apuesta a:",10,13,0
	largoMensajeSubeApuestaJugador1 equ $- mensajeSubeApuestaJugador1

	mensajeSubeApuestaJugador2: db "EL jugador 2 subió su apuesta a:",10,13,0
	largoMensajeSubeApuestaJugador2 equ $- mensajeSubeApuestaJugador2

	mensajeSubeApuestaJugador3: db "EL jugador 3 subió su apuesta a:",10,13,0
	largoMensajeSubeApuestaJugador3 equ $- mensajeSubeApuestaJugador3

	mensajeSubeApuestaJugador4: db "EL jugador 4 subió su apuesta a:",10,13,0
	largoMensajeSubeApuestaJugador4 equ $- mensajeSubeApuestaJugador4

	mensajeIgualaApuestaJugador1: db "EL jugador 1 iguala apuesta a:",10,13,0
	largoMensajeIgualaApuestaJugador1 equ $- mensajeIgualaApuestaJugador1

	mensajeIgualaApuestaJugador2: db "EL jugador 2 iguala apuesta a:",10,13,0
	largoMensajeIgualaApuestaJugador2 equ $- mensajeIgualaApuestaJugador2

	mensajeIgualaApuestaJugador3: db "EL jugador 3 iguala apuesta a:",10,13,0
	largoMensajeIgualaApuestaJugador3 equ $- mensajeIgualaApuestaJugador3

	mensajeIgualaApuestaJugador4: db "EL jugador 4 iguala apuesta a:",10,13,0
	largoMensajeIgualaApuestaJugador4 equ $- mensajeIgualaApuestaJugador4

	mensajeValidarAllInJugador1: db "Se valida All In para jugador 1 FALTA",10,13,0
	largoMensajeValidarAllInJugador1 equ $- mensajeValidarAllInJugador1

	mensajeValidarAllInJugador2: db "Se valida All In para jugador 2 FALTA",10,13,0
	largoMensajeValidarAllInJugador2 equ $- mensajeValidarAllInJugador2

	mensajeValidarAllInJugador3: db "Se valida All In para jugador 3 FALTA",10,13,0
	largoMensajeValidarAllInJugador3 equ $- mensajeValidarAllInJugador3

	mensajeValidarAllInJugador4: db "Se valida All In para jugador 4 FALTA",10,13,0
	largoMensajeValidarAllInJugador4 equ $- mensajeValidarAllInJugador4

	mensajePasaJugador1: db "El jugador 1 decide pasar",10,13,0
	largoMensajePasaJugador1: equ $-mensajePasaJugador1

	mensajePasaJugador2: db "El jugador 2 decide pasar",10,13,0
	largoMensajePasaJugador2: equ $-mensajePasaJugador2
	
	mensajePasaJugador3: db "El jugador 3 decide pasar",10,13,0
	largoMensajePasaJugador3: equ $-mensajePasaJugador3

	mensajePasaJugador4: db "El jugador 4 decide pasar",10,13,0
	largoMensajePasaJugador4: equ $-mensajePasaJugador4

	mensajeTotalFichasApostadas: db "El total de fichas apostadas es: ",10,13,0
	largoMensajeTotalFichasApostadas: equ $-mensajeTotalFichasApostadas

	mensajeJugadoresActivos: db "Jugadores activos actualmente",10,13,0
	largoMensajeJugadoresActivos: equ $-mensajeJugadoresActivos

	mensajeSeOmite: db "Se omite jugador", 10, 13,0
	largoMensajeSeOmite: equ $-mensajeSeOmite

	numeroDeJugadoresMinimos: equ 1

	cantidadJugadoresQueIgualaron: dd 0

	mensajeMejorManoJugador1: db "La mejor mano del jugador 1 es: ",10,13,0
	mensajeMejorManoJugador1Len: equ $- mensajeMejorManoJugador1

	mensajeMejorManoJugador2: db "La mejor mano del jugador 2 es: ",10,13,0
	mensajeMejorManoJugador2Len equ $- mensajeMejorManoJugador2
	mensajeMejorManoJugador3: db "La mejor mano del jugador 3 es: ",10,13,0
	mensajeMejorManoJugador3Len equ $- mensajeMejorManoJugador3
	mensajeMejorManoJugador4: db "La mejor mano del jugador 4 es: ",10,13,0
	mensajeMejorManoJugador4Len equ $- mensajeMejorManoJugador4


mensajeGanador: db "La mejor mano es: ", 10,13, 0
mensajeGanadorLen equ $- mensajeGanador

GanadorJugador1: db "Felicidades Jugador1!, ganaste esta partida con una: ", 10, 13, 0
GanadorJugador1Len equ $- GanadorJugador1

GanadorJugador2: db "Felicidades Jugador2!, ganaste esta partida con una: ", 10, 13, 0
GanadorJugador2Len equ $- GanadorJugador2

GanadorJugador3: db "Felicidades Jugador3!, ganaste esta partida con una: ", 10, 13, 0
GanadorJugador3Len equ $- GanadorJugador3

GanadorJugador4: db "Felicidades Jugador4!, ganaste esta partida con una: ", 10, 13, 0
GanadorJugador4Len equ $- GanadorJugador4

GanadorJugador5: db "Felicidades Jugador5!, ganaste esta partida con una: ", 10, 13, 0
GanadorJugador5Len equ $- GanadorJugador5


;***********************************************************************INICIO*********************************************************************************************
section .text
	extern printf
	extern srand
	extern rand
	extern time
  
	
	global main:


main:
	push ebp							; Inicio del StackFrame
	mov ebp, esp
	push ebx
	push esi
	push edi
	
	nop
	
seed:									; Semilla generadora del random 
      push 0      
      call time  
      add esp, 4
      push eax     
      call srand
      add esp, 4
		  
	

inicio:


	.JugarPoquer:
		mov ecx, numeroRondaActual
		cmp ecx, 4
		jb .ronda
		je .revisionCartas


		.ronda:
			mov ecx, numeroRondaActual
			cmp ecx, 0; Primer ronda
			;Se define el small blind
			;Se reparte 2 cartas a cada jugador
			;Se realizan las apuestas a ciegas
			je .rondaPreflop

			.rondaPreflop: ;Ronda 1

				mov ecx, mensajePrimerRonda
				mov edx, largoNensajePrimerRonda
				call print

				call repartirMonedas
				call escojaDealer
				call escojaSmallBlind
				call escojaBigBlind

				call imprimirJugadores


				call apostarSmallBlind
				call apostarBigBlind

				;call apuestaJugador1
				;call apuestaJugador2
				;call apuestaJugador3
				;call apuestaJugador4

				call imprimirJugadores

				call ejecutarPrimerRondaDeApuestas

				call repartirCartas
				

				call imprimirJugadores

				call aumentarRonda
				

				mov ecx, mensajePrimerRondaFin
				mov edx, largoMensajePrimerRondaFin
				call print

				call imprimirCartasComunales

			.rondaFlop:; Ronda 2

				call repartir3Comunitarias

				mov ecx, mensajeSegundaRonda
				mov edx, largoMensajeSegundaRonda
				call print

				call rotarJugadorDealer

				call mostrarDealer

				call ejecutarSegundaRondaDeApuestas
		

				call imprimirJugadores

				call imprimirCartasComunales

			.rondaTurn:; Ronda 3

				mov ecx, mensajeTercerRonda
				mov edx, largoMensajeTercerRonda
				call print

				call repartir4Comunitaria


				call rotarJugadorDealer

				call mostrarDealer

				call ejecutarSegundaRondaDeApuestas
		

				call imprimirJugadores

				call imprimirCartasComunales

			.rondaRiver:; Ronda 4


				mov ecx, mensajeCuartaRonda
				mov edx, largoMensajeCuartaRonda
				call print

				call repartir5Comunitaria


				call rotarJugadorDealer

				call mostrarDealer

				call ejecutarSegundaRondaDeApuestas
		

				call imprimirJugadores



				call imprimirCartasComunales

				call imprimirNuevaLinea

				;call imprimirJugador3
				;call imprimirJugador4




								; call repartirMonedas
								; call repartirCartas
								; call imprimirJugadores  
								; call repartir3Comunitarias
								; call repartir4Comunitaria
								; call repartir5Comunitaria
								; call crearMasoDeCArtas
								

				.revisionCartas:


					call combinarCartasComunitariaConJugador1
					call combinarCartasComunitariaConJugador2
					call combinarCartasComunitariaConJugador3
					call combinarCartasComunitariaConJugador4

					;call combinarCartasComunitariaConJugador5 FALTA


					; call imprimirNuevaLinea

					; ; ecx=direccion del string
					; ; edx=largo del string
					; mov ecx, posiblesCombinacionesJugador1
					; mov edx, sizeBufferCombinaciones
					; call print

					; call imprimirNuevaLinea

					call cicloVerificarCombinacionesJugador1
					call obtenerMejorJugadaJugador1


					; call imprimirNuevaLinea
					; call imprimirNuevaLinea
					; call imprimirNuevaLinea
					; call imprimirNuevaLinea



					call cicloVerificarCombinacionesJugador2
					call obtenerMejorJugadaJugador2


					; call imprimirNuevaLinea

					; mov ecx, mejorManoJugador2
					; mov edx, largoMejorMano
					; call print

					call cicloVerificarCombinacionesJugador3
					call obtenerMejorJugadaJugador3


					; call imprimirNuevaLinea

					; mov ecx, mejorManoJugador3
					; mov edx, largoMejorMano
					; call print


					call cicloVerificarCombinacionesJugador4
					call obtenerMejorJugadaJugador4

					; call imprimirNuevaLinea

					; mov ecx, mejorManoJugador4
					; mov edx, largoMejorMano
					; call print
					; call imprimirNuevaLinea


					; call imprimirNuevaLinea
					; call imprimirNuevaLinea
					; call imprimirNuevaLinea
					; call imprimirNuevaLinea

					call mostrarMejoresManos


					call seleccionarElGanador

					call mostrarMejorManoGanadora




	; call mostrarMensajeInicial
	; call mostrarPeticionNombre

	; mov     ecx, bufferNombre
 ;    mov     edx, sizeBufferNombre
 ;    call    scan

 ;    call imprimirNombre




	
	
;	mov eax, 4
;	mov ebx, 1
;	mov ecx, cartas
;	mov edx, cartaslen
;	int 80h
	
;	call escojaDealer

;      call imprimirJugador1

;      mov eax, 4
;      mov ebx, 1
;      mov ecx, jugador1
;      mov edx, jugador1len
;      int 80h
      
;      call imprimirJugador2

;      mov eax, 4
;      mov ebx, 1
;      mov ecx, jugador2
;      mov edx, jugador2len
;      int 80h
      
;      call imprimirJugador3

;      mov eax, 4
;      mov ebx, 1
;      mov ecx, jugador3
;      mov edx, jugador3len
;      int 80h
      
;      call imprimirJugador4

;      mov eax, 4
;      mov ebx, 1
;      mov ecx, jugador4
;     mov edx, jugador4len
;      int 80h

	; lea ecx, [manosDeJugadores+0]
	; mov ecx, [ecx]
	; mov edx, sizeMano
	; call print
	; call imprimirNuevaLinea

	; lea ecx, [manosDeJugadores+4]
	; mov ecx, [ecx]
	; mov edx, sizeMano
	; call print
	; call imprimirNuevaLinea


	    
salir:
	pop edi
	pop esi							; Final del stackFrame
	pop ebx
	mov esp, ebp
	pop ebp
	ret


;**************************************************************PROCEDIMIENTOS************************************************************************************************

numeroRandom:
	push ecx
	
	xor ecx, ecx
	
	mov ecx, 24
	push ecx
	call rand
	pop ecx
	shr eax, cl	

	pop ecx
	ret	

	

dealerNumber:
	push ecx
	
	xor ecx, ecx
	
	mov ecx, 29; Ver pag 519, para 3 bits
	push ecx
	call rand
	pop ecx
	shr eax, cl	

	pop ecx
	ret

	
apuestaRandomNumber:
	push ecx
	
	xor ecx, ecx
	
	mov ecx, 25; Ver pag 519, para 5 bits
	push ecx
	
	call rand
	
	
	pop ecx
	shr eax, cl	

	pop ecx
	ret

;genera un numero de 0 a 3
jugadaRandomNumber:
	push ecx
	
	xor ecx, ecx
	
	mov ecx, 29; Ver pag 519, para 2 bits
	push ecx
	
	call rand
	
	
	pop ecx
	shr eax, cl	

	pop ecx
	ret

;genera un numero de 0 a 3
jugadaRandomNumberRonda2:
	push ecx
	
	xor ecx, ecx
	
	mov ecx, 28; Ver pag 519, para 3 bits
	push ecx
	
	call rand
	
	
	pop ecx
	shr eax, cl	

	pop ecx
	ret


;**************************************************************************************************************************************************************************
escojaDealer:

	pushad

	mov eax, 4
	mov ebx, 1
	mov ecx, dealerEtiqueta
	mov edx, dealerEtiquetalen
	int 80h

	  .numero:
		  call dealerNumber
		  mov ebx, cantidadJugadores
		  dec ebx
		  cmp eax, ebx; Mientras el numero sea mayor o igual a
		  ja .numero
		  

	  mov dword[numeroDeJugadorDealer], eax	  



	  cmp eax, 0
	  je .dealerJ1
	  
	  cmp eax, 1
	  je .dealerJ2
	  
	  cmp eax, 2
	  je .dealerJ3
	  
	  cmp eax, 3
	  je .dealerJ4
	  
	  .dealerJ1:

			mov eax, 4
			mov ebx, 1
			mov ecx, jugadorEtiqueta
			mov edx, jugadorEtiquetalen
			int 80h
			jmp .salir

		
	  .dealerJ2:
			mov eax, 4
			mov ebx, 1
			mov ecx, jugador2Etiqueta
			mov edx, jugador2Etiquetalen
			int 80h
			jmp .salir


	  .dealerJ3:
			mov eax, 4
			mov ebx, 1
			mov ecx, jugador3Etiqueta
			mov edx, jugador3Etiquetalen
			int 80h
			jmp .salir


	  .dealerJ4:
			mov eax, 4
			mov ebx, 1
			mov ecx, jugador4Etiqueta
			mov edx, jugador4Etiquetalen
			int 80h
			jmp .salir


	.salir:

		mov esi, [numeroDeJugadorDealer]
		call itoa
		mov ecx, number
		mov edx, numberLen
		call print

		popad
		ret



mostrarDealer:

	pushad

	mov eax, 4
	mov ebx, 1
	mov ecx, dealerEtiqueta
	mov edx, dealerEtiquetalen
	int 80h


	mov eax, [numeroDeJugadorDealer]	  

	cmp eax, 0
	je .dealerJ1

	cmp eax, 1
	je .dealerJ2

	cmp eax, 2
	je .dealerJ3

	cmp eax, 3
	je .dealerJ4

	jmp .salir

	.dealerJ1:

		mov eax, 4
		mov ebx, 1
		mov ecx, jugadorEtiqueta
		mov edx, jugadorEtiquetalen
		int 80h
		jmp .salir

	.dealerJ2:
		mov eax, 4
		mov ebx, 1
		mov ecx, jugador2Etiqueta
		mov edx, jugador2Etiquetalen
		int 80h
		jmp .salir

	.dealerJ3:
		mov eax, 4
		mov ebx, 1
		mov ecx, jugador3Etiqueta
		mov edx, jugador3Etiquetalen
		int 80h
		jmp .salir

	.dealerJ4:
		mov eax, 4
		mov ebx, 1
		mov ecx, jugador4Etiqueta
		mov edx, jugador4Etiquetalen
		int 80h
		jmp .salir

	.salir:

		; mov esi, [numeroDeJugadorDealer]
		; call itoa
		; mov ecx, number
		; mov edx, numberLen
		; call print

		popad
		ret


rotarJugadorDealer:
	pushad
	
	mov eax, [numeroDeJugadorDealer]
	mov ebx, cantidadJugadores
	inc eax

	cmp eax, ebx
	je .verifiqueJ1

	.comparar:

	cmp eax, 0
	je .verifiqueJ2

	cmp eax, 1
	je .verifiqueJ2

	cmp eax, 2
	je .verifiqueJ3

	cmp eax, 3
	je .verifiqueJ4

	.verifiqueJ1:
		cmp byte[banderasJugadoresActivos + 0],0
		je .verifiqueJ2
		mov edx, 0
		mov [numeroDeJugadorDealer], edx
		jmp .salir
		
	.verifiqueJ2:
		cmp byte[banderasJugadoresActivos + 1],0
		je .verifiqueJ3
		mov edx, 1
		mov [numeroDeJugadorDealer], edx
		jmp .salir	

	.verifiqueJ3:
		cmp byte[banderasJugadoresActivos + 2],0
		je .verifiqueJ3
		mov edx, 2
		mov [numeroDeJugadorDealer], edx
		jmp .salir		

	.verifiqueJ4:
		cmp byte[banderasJugadoresActivos + 0],0
		je .verifiqueJ1
		mov edx, 3
		mov [numeroDeJugadorDealer], edx
		jmp .salir


	mov eax, [numeroDeJugadorDealer]
	jmp .comparar


	.salir:

		mov eax, [numeroDeJugadorDealer]
		mov [ultimoJugadorEnJugar], eax

		popad
		ret

;:::::::::::::::::::::::::::::::::::::::
;APUESTAS: INICIO

Aumente:
	  ;la minima apuesta que puede realizar es la del big blind.
	  ;la cual esta en en registro ebx. 
	  ;lo maximo que puede apostar es lo que el jugador tiene en 
	  ;la pos 0 de su buffer, esto estara en el registro edx.

	  ;ebx = minima apuesta (numero)
	  ;edx = maximo que se puede apostar (numero), monedas disponibles
		  
	  .apuesta:
		      call apuestaRandomNumber
		     	  
	  .verifique:
		      cmp eax, 20; que la apuesta no sea mayor a 20; max 20
		      ja .apuesta
		      jmp .sigaVerificando
		      
	  .sigaVerificando:
		      cmp eax, ebx
		      jb .apuesta
		      cmp eax, edx
		      ja .apuesta
	
	  ret

;**************************************************************************************************************************************************************************	

apostarSmallBlind:
	pushad

	xor ecx, ecx
	xor edx, edx

	mov eax, [numeroDeJugadorSmallBlind]
	mov [ultimoJugadorEnJugar], eax; Se actualiza el ultimo jugador en jugar
	mov ecx, [apuestaMinima]; se va a apostar 1 ficha
	sub ecx, 1

	cmp eax, 0
	je .cambiarJugado1
	cmp eax, 1
	je .cambiarJugado2
	cmp eax, 2
	je .cambiarJugado3
	cmp eax, 3
	je .cambiarJugado4
	

	.cambiarJugado1:
		mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador1 + 0], dl
	    jmp .salir

	.cambiarJugado2:
		mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador2 + 0], dl
	    jmp .salir

	.cambiarJugado3:
		mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador3 + 0], dl
	    jmp .salir

	.cambiarJugado4:
		mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador4 + 0], dl
	    jmp .salir


	.salir:
		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		popad
		ret


apostarBigBlind:
	pushad

	xor ecx, ecx
	xor edx, edx

	mov eax, [numeroDeJugadorBigBlind]
	mov [ultimoJugadorEnJugar], eax
	mov ecx, [apuestaMinima]; se va a apostar 1 ficha

	cmp eax, 0
	je .cambiarJugado1
	cmp eax, 1
	je .cambiarJugado2
	cmp eax, 2
	je .cambiarJugado3
	cmp eax, 3
	je .cambiarJugado4
	

	.cambiarJugado1:
		mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador1 + 0], dl
	    jmp .salir

	.cambiarJugado2:
		mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador2 + 0], dl
	    jmp .salir

	.cambiarJugado3:
		mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador3 + 0], dl
	    jmp .salir

	.cambiarJugado4:
		mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	    sub edx, ecx
	    mov byte[jugador4 + 0], dl
	    jmp .salir


	.salir:
		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		popad
		ret



;SE DEBE llamar siempre antes de JUGAR
; actualizarSiguienteJugadorEnJugar:
; 	pushad

; 	mov eax, [ultimoJugadorEnJugar]
; 	mov ebx, cantidadJugadores
; 	sub ebx, 1
; 	cmp eax, ebx
; 	je .siguienteEsElPrimero; Si es igual al ultimo jugador, se reinicia y el siguiente es el primer jugador
; 	jb .seSumaUno

; 	.siguienteEsElPrimero:
; 		mov eax, 0
; 		mov [siguienteJugadorEnJugar], eax; Sigue el jugador 1
; 		jmp .salir

; 	.seSumaUno:
; 		inc eax
; 		mov [siguienteJugadorEnJugar], eax; El ultimo jugador + 1
; 		jmp .salir

; 	.salir:
; 		popad
; 		ret

actualizarSiguienteJugadorEnJugar:
	pushad

	mov eax, [ultimoJugadorEnJugar]
	mov ebx, cantidadJugadores
	sub ebx, 1
	
	.verifique:
		cmp eax, ebx
		je .siguienteEsElPrimero; Si es igual al ultimo jugador, se reinicia y el siguiente es el primer jugador
		jb .seSumaUno

	.siguienteEsElPrimero:
		mov eax, 0
		cmp byte[banderasJugadoresActivos + eax], 0
		je .verifique
		mov [siguienteJugadorEnJugar], eax; Sigue el jugador 1
		jmp .salir

	.seSumaUno:
		inc eax
		cmp byte[banderasJugadoresActivos + eax], 0
		je .verifique
		mov [siguienteJugadorEnJugar], eax; El ultimo jugador + 1
		jmp .salir

	.salir:
		popad
		ret

aumentarUltimoJugadorEnJugar:
	pushad

	mov eax, [ultimoJugadorEnJugar]
	mov ebx, cantidadJugadores
	sub ebx, 1
	
	.verifique:
		cmp eax, ebx
		je .siguienteEsElPrimero; Si es igual al ultimo jugador, se reinicia y el siguiente es el primer jugador
		jb .seSumaUno

	.siguienteEsElPrimero:
		mov eax, 0
		cmp byte[banderasJugadoresActivos + eax], 0
		je .verifique
		mov [ultimoJugadorEnJugar], eax; Sigue el jugador 1
		jmp .salir

	.seSumaUno:
		inc eax
		cmp byte[banderasJugadoresActivos + eax], 0
		je .verifique
		mov [ultimoJugadorEnJugar], eax; El ultimo jugador + 1
		jmp .salir

	.salir:
		popad
		ret

ejecutarPrimerRondaDeApuestas:
	pushad

	.iniciarRonda:


	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .finEjecutarPrimerRondaDeApuestas



	;EAX contine el total de jugadores activos
	cmp eax, 2;
	jb .finEjecutarPrimerRondaDeApuestas
	;Si al menos hay 2 jugadores continue, sino termine la pertida

	mov ebx, 2
	.for:; Se ejecuta la cantidad de jugadores -2
		call primerRondaApuestas
		inc ebx 
		cmp ebx, cantidadJugadores 
	jbe .for

	mov eax, [banderaAlguienSubioApuesta]

	cmp eax, 0 ; Comparing 
	je .if; Si nadie subio apuesta, se le permite pasar
	.else: ;Else Part 
		mov eax, 0
		mov [banderaSePermitePasar], eax; No se le permite pasar 
		jmp .continuar 
	.if: ;If Part 
		mov eax, 1
		mov [banderaSePermitePasar], eax; Se le permite pasar al Big Blind

	.continuar:
		call primerRondaApuestas; Se llama una vez mas a la ronda de apuestas

	xor eax, eax; Se limpia el registro
	mov eax, [banderaAlguienSubioApuesta]
	cmp eax, 1; 
	je .iniciarRonda; Si alguien subio la apuesta, todos deben apostar
	;Si nadie subio la apuesta se termina la primer ronda

	.finEjecutarPrimerRondaDeApuestas:

		call mostrarTotalActivos

		;Muestra cuantos jugadores activos hay al final de la ronda FIN

		mov eax, 0
		mov [banderaAlguienSubioApuesta], eax
		popad
		ret		

primerRondaApuestas:
; El primer jugador en realizar su acción en el Preflop será el que está situado a la izquierda de la posición de ciega grande. Este jugador tendrá 3 opciones:
; Subir: el jugador puede subir la apuesta de la ciega grande, ya que es la apuesta más alta en la mesa actualmente. Debe subir como mínimo al doble de la ciega grande, y como máximo a todas sus fichas.
; Igualar: el jugador puede igualar la ciega grande.
; Abandonar: el jugador puede tirar sus cartas y retirarse si su mano no le parece suficientemente buena. Al abandonar, dejará de jugar esa mano.

	pushad

	;SE DEBE llamar siempre antes de JUGAR
	call actualizarSiguienteJugadorEnJugar
	mov eax, [siguienteJugadorEnJugar]; Se obtiene el siguiente

	cmp eax, 0
	je .jugarJugador1
	cmp eax, 1
	je .jugarJugador2
	cmp eax, 2
	je .jugarJugador3
	cmp eax, 3
	je .jugarJugador4
	

	.jugarJugador1:

		xor eax, eax
		mov al, byte[banderasJugadoresActivos+0]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador1

	    jmp .salir

	.jugarJugador2:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+1]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador2

	    jmp .salir

	.jugarJugador3:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+2]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador3

	    jmp .salir

	.jugarJugador4:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+3]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador

		;Si esta activo continua
		call ejecutarJugadaJugador4

	    jmp .salir


	.omitirJugador:

		call seOmiteJugador

		call aumentarUltimoJugadorEnJugar
		jmp .salir

	.salir:
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 1
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador1:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3
		call jugadaRandomNumber
		cmp eax, 0
		je .igualar;.rendirse
		cmp eax,1
		je .igualar;.subir
		cmp eax,2
		je .igualar
		cmp eax,3; Solo si se permite
		je .pasar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0


			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores

			call jugador1SeRinde
			jmp .salirJugadaJugador1

		.subir:; 1
			call jugador1SubeApuesta
			jmp .salirJugadaJugador1

		.igualar:;2
			call jugador1IgualaApuesta
			jmp .salirJugadaJugador1

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador1Pasa

			jmp .salirJugadaJugador1




	.salirJugadaJugador1:

		popad
		ret



jugador1Pasa:
	pushad
		mov ecx, mensajePasaJugador1
		mov edx, largoMensajePasaJugador1
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador1SeRinde:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+0],0; Desactiva Jugador 1
	mov byte[jugador1+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar
	mov ecx, mensajeSeRindeJugador1
	mov edx, largoMensajeSeRindeJugador1
	call print

	call diminuirActivos

	.salir:
		popad
		ret

jugador1SubeApuesta:
	pushad
	mov byte[jugador1+10],1; El jugador 1 sube su apuesta
	call apuestaJugador1; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador1:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador1 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador1SeRinde

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador1
			mov edx, largoMensajeSubeApuestaJugador1
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador1IgualaApuesta:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador1 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador1SeRinde
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador1
			mov edx, largoMensajeIgualaApuestaJugador1
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 1
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 2
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador2:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3
		call jugadaRandomNumber
		cmp eax, 0
		je .igualar;.rendirse
		cmp eax,1
		je .igualar;.subir
		cmp eax,2
		je .igualar
		cmp eax,3; Solo si se permite
		je .pasar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0
			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador2SeRinde
			jmp .salirJugadaJugador2

		.subir:; 1
			call jugador2SubeApuesta
			jmp .salirJugadaJugador2

		.igualar:;2
			call jugador2IgualaApuesta
			jmp .salirJugadaJugador2

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador2Pasa

			jmp .salirJugadaJugador2




	.salirJugadaJugador2:

		popad
		ret



jugador2Pasa:
	pushad
		mov ecx, mensajePasaJugador2
		mov edx, largoMensajePasaJugador2
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador2SeRinde:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+1],0; Desactiva Jugador 1
	mov byte[jugador2+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador2
	mov edx, largoMensajeSeRindeJugador2
	call print

	call diminuirActivos

	.salir:
		popad
		ret

jugador2SubeApuesta:
	pushad
	mov byte[jugador2+10],1; El jugador 1 sube su apuesta
	call apuestaJugador2; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador2:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador2 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador2SeRinde

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador2
			mov edx, largoMensajeSubeApuestaJugador2
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador2IgualaApuesta:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador2 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador2SeRinde
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador2
			mov edx, largoMensajeIgualaApuestaJugador2
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 2
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 3
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador3:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3
		call jugadaRandomNumber
		cmp eax, 0
		je .igualar;.rendirse
		cmp eax,1
		je .igualar;.subir
		cmp eax,2
		je .igualar
		cmp eax,3; Solo si se permite
		je .pasar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0
			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador3SeRinde
			jmp .salirJugadaJugador3

		.subir:; 1
			call jugador3SubeApuesta
			jmp .salirJugadaJugador3

		.igualar:;2
			call jugador3IgualaApuesta
			jmp .salirJugadaJugador3

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador3Pasa

			jmp .salirJugadaJugador3




	.salirJugadaJugador3:

		popad
		ret



jugador3Pasa:
	pushad
		mov ecx, mensajePasaJugador3
		mov edx, largoMensajePasaJugador3
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador3SeRinde:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+2],0; Desactiva Jugador 1
	mov byte[jugador3+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador3
	mov edx, largoMensajeSeRindeJugador3
	call print

	call diminuirActivos

	.salir:
	popad
	ret

jugador3SubeApuesta:
	pushad
	mov byte[jugador3+10],1; El jugador 1 sube su apuesta
	call apuestaJugador3; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador3:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador3 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador3SeRinde

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador3
			mov edx, largoMensajeSubeApuestaJugador3
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador3IgualaApuesta:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador3 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador3SeRinde
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador3
			mov edx, largoMensajeIgualaApuestaJugador3
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 3
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 4
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador4:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3
		call jugadaRandomNumber
		cmp eax, 0
		je .igualar;.rendirse
		cmp eax,1
		je .igualar;.subir
		cmp eax,2
		je .igualar
		cmp eax,3; Solo si se permite
		je .pasar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0

			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador4SeRinde
			jmp .salirJugadaJugador4

		.subir:; 1
			call jugador4SubeApuesta
			jmp .salirJugadaJugador4

		.igualar:;2
			call jugador4IgualaApuesta
			jmp .salirJugadaJugador4

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador4Pasa

			jmp .salirJugadaJugador4




	.salirJugadaJugador4:

		popad
		ret



jugador4Pasa:
	pushad
		mov ecx, mensajePasaJugador4
		mov edx, largoMensajePasaJugador4
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador4SeRinde:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+3],0; Desactiva Jugador 1
	mov byte[jugador4+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador4
	mov edx, largoMensajeSeRindeJugador4
	call print


	call diminuirActivos

	.salir:
		popad
		ret

jugador4SubeApuesta:
	pushad
	mov byte[jugador4+10],1; El jugador 1 sube su apuesta
	call apuestaJugador4; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador4:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador4 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador4SeRinde

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador4
			mov edx, largoMensajeSubeApuestaJugador4
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador4IgualaApuesta:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador4 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador4SeRinde
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador4
			mov edx, largoMensajeIgualaApuestaJugador4
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 4
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 5
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 5
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::







; apuestaJugadorizquierdaDelBigBlind:

; 	  push ebx
; 	  push edx
	   
; 	   xor ebx, ebx

	   
; 	   mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind

; 	   add ebx,ebx; Se multiplica por 2 la apuesta minima

; 	   xor edx, edx
; 	   xor ecx, ecx

; 	   mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	   

; 	  ;ebx = minima apuesta (numero)
; 	  ;edx = maximo que se puede apostar (numero), monedas disponibles
; 	   call Aumente
	   
; ;----------------------------------------------------;	   
; 	   push ecx
; 	   push edx
	   
; 	   mov ecx, apuestaEtiqueta
; 	   mov edx, apuestaEtiquetaLen
; 	   call print
	   
; 	   mov esi, eax
; 	   call itoa
; 	   mov ecx, number
; 	   mov edx, numberLen
; 	   call print
	   	   
; 	   mov ecx, monedasRestantes
; 	   mov edx, monedasRestantesLen
; 	   call print

; 	   pop edx
; 	   pop ecx
	  
; ;----------------------------------------------------;	
	   

; 	   xor ecx, ecx
; 	   mov ecx, eax
; 	   xor edx, edx
; 	   mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	   
; 	   cmp edx,ecx
; 	   jb .noPuedeApostar
	   
; 	   .apostar:
	   
; 	   sub edx, ecx
	   
; 	   mov byte[jugador4 + 0], dl

; ;----------------------------------------------------;		   
; 	   push ecx
; 	   push edx
	   
; 	   mov esi, edx
; 	   call itoa
; 	   mov ecx, number
; 	   mov edx, numberLen
; 	   call print
	   
; 	   pop edx
; 	   pop ecx
; 	   jmp .salir
; ;----------------------------------------------------;		   
; 	   .noPuedeApostar:
; 		   mov ecx, edx
; 		   jmp .apostar
	   
; 	 .salir:  		      
; 	 pop edx
; 	 pop ebx
; 	 ret

;::::::::::::::::::::::::::::::::::::::
;APUESTAS: FIN


	  
;:::::::::::::::::::::::::::::
escojaSmallBlind:
	pushad
	mov eax, [numeroDeJugadorDealer]
	mov ebx, cantidadJugadores
	dec ebx; Cantidad de jugadores -1
	cmp eax, ebx; Compara si el Small Bling es el siguiete o debe ser el primer jugador

	je .smallBlingEsElPrimerJugador
	jne .smallBlingEsElSiguiente

	.smallBlingEsElPrimerJugador:
		mov eax, 0
		mov [numeroDeJugadorSmallBlind], eax
		jmp .salir

	.smallBlingEsElSiguiente:
		inc eax
		mov [numeroDeJugadorSmallBlind], eax
		jmp .salir



	.salir:
		popad
		ret

escojaBigBlind:
	pushad
	mov eax, [numeroDeJugadorSmallBlind]
	mov ebx, cantidadJugadores
	dec ebx; Cantidad de jugadores -1
	cmp eax, ebx; Compara si el Small Bling es el siguiete o debe ser el primer jugador
	jne .bigBlingEsElSiguiente
	je .bigBlingEsElPrimerJugador

	.bigBlingEsElSiguiente:
		inc eax
		mov [numeroDeJugadorBigBlind], eax
		jmp .salir

	.bigBlingEsElPrimerJugador:
		mov eax, 0
		mov [numeroDeJugadorBigBlind], eax
		jmp .salir

	.salir:
		popad
		ret

; rotarDealer:;#Actualizar
; 	pushad
; 	mov eax, [numeroDeJugadorDealer]
; 	mov ebx, cantidadJugadores
; 	cmp eax, ebx; Compara si el Big Bling es el siguiete o el 
; 	jne .dealerEsElSiguiente
; 	je .dealerEsElPrimerJugador

; 	.verifique:
; 		inc eax

; 	.dealerEsElSiguiente:
; 		inc eax
; 		mov [numeroDeJugadorDealer], eax
; 		jmp .salir

; 	.dealerEsElPrimerJugador:

; 		cmp byte[banderasJugadoresActivos + 0],0
; 		mov eax, 0
; 		je .verifique

; 		mov [numeroDeJugadorDealer], eax
; 		jmp .salir

; 	.salir:
; 		popad
; 		ret




	
	; ; .verifique:
	; ;       cmp eax, ebx; Compara si el Big Bling es el siguiete o el 
	; ;       jne .dealerEsElSiguiente
	; ;       je .dealerEsElPrimerJugador

	; ; .dealerEsElSiguiente:
	; ; 	inc eax
	; ; 	cmp byte[banderasJugadoresActivos + eax],0
	; ; 	je .verifique
	; ; 	mov [numeroDeJugadorDealer], eax
		
	; ; 	jmp .salir

	; ; .dealerEsElPrimerJugador:
	; ; 	mov eax, 0
	; ; 	cmp byte[banderasJugadoresActivos + eax],0
	; ; 	je .verifique
	; ; 	mov [numeroDeJugadorDealer], eax
	; ; 	jmp .salir

	; .salir:
	; 	popad
	; 	ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;RONDA 2: INICIO
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ejecutarSegundaRondaDeApuestas:
	pushad

	.iniciarRonda:


	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .finEjecutarRondaDeApuestas



	;EAX contine el total de jugadores activos
	cmp eax, 2;
	jb .finEjecutarRondaDeApuestas
	;Si al menos hay 2 jugadores continue, sino termine la pertida

	;IMPORTANTE
	mov dword[banderaSePermitePasar], 0

	mov ebx, 1
	.for:; Se ejecuta la cantidad de jugadores -2
		call segundaRondaApuestas
		inc ebx 
		cmp ebx, cantidadJugadores 
	jbe .for

	; mov eax, [banderaAlguienSubioApuesta]

	; cmp eax, 0 ; Comparing 
	; je .if; Si nadie subio apuesta, se le permite pasar
	; .else: ;Else Part 
	; 	mov eax, 0
	; 	mov [banderaSePermitePasar], eax; No se le permite pasar 
	; 	jmp .continuar 
	; .if: ;If Part 
	; 	mov eax, 1
	; 	mov [banderaSePermitePasar], eax; Se le permite pasar al Big Blind

	; .continuar:
	; 	call primerRondaApuestas; Se llama una vez mas a la ronda de apuestas

	; xor eax, eax; Se limpia el registro
	; mov eax, [banderaAlguienSubioApuesta]
	; cmp eax, 1; 


	; je .validarSiDebeIgualar

	; .validarSiDebeIgualar:
	; 	mov eax, [cantidadJugadoresQueIgualaron]
	; 	mov ebx, [totalJugadoresActivos]
	; 	dec ebx
	; 	cmp eax, ebx
	; 	je .finEjecutarRondaDeApuestas; Si todos igualaron se termina la ronda
	; 	jne .iniciarRonda; Si alguien subio la apuesta, todos deben apostar
		
	 
	;Si nadie subio la apuesta se termina la primer ronda

	.finEjecutarRondaDeApuestas:

		call mostrarTotalActivos

		;Muestra cuantos jugadores activos hay al final de la ronda FIN

		mov eax, 0
		mov [banderaAlguienSubioApuesta], eax
		popad
		ret		

segundaRondaApuestas:

; En esta ronda de apuestas se muestran 3 cartas en el centro de la mesa, que serán comunitarias para todos los jugadores. Es decir, con nuestras dos cartas privadas y esas 3 cartas comunes componemos nuestra jugada en esta ronda de apuestas.
; A partir de esta ronda de apuestas, la apuesta mínima siempre será igual al tamaño de la ciega grande.
; Al no estar las ciegas como sucedía preflop, los jugadores tienen la opción de pasar si otro jugador no ha apostado antes en esta ronda.
; Del mismo modo que en la ronda anterior, se procede a una nueva ronda de apuestas.
; La ronda de apuestas finaliza cuando todos los jugadores han hablado y todas las apuestas se han igualado. Si todos los jugadores deciden pasar, también se acaba la ronda de apuestas y se pasa a la siguiente.
; El primer jugador en realizar su acción en el Preflop será el que está situado a la izquierda de la posición de ciega grande. Este jugador tendrá 3 opciones:
; Subir: el jugador puede subir la apuesta de la ciega grande, ya que es la apuesta más alta en la mesa actualmente. Debe subir como mínimo al doble de la ciega grande, y como máximo a todas sus fichas.
; Igualar: el jugador puede igualar la ciega grande.
; Abandonar: el jugador puede tirar sus cartas y retirarse si su mano no le parece suficientemente buena. Al abandonar, dejará de jugar esa mano.

	pushad

	;SE DEBE llamar siempre antes de JUGAR
	call actualizarSiguienteJugadorEnJugar
	mov eax, [siguienteJugadorEnJugar]; Se obtiene el siguiente

	cmp eax, 0
	je .jugarJugador1
	cmp eax, 1
	je .jugarJugador2
	cmp eax, 2
	je .jugarJugador3
	cmp eax, 3
	je .jugarJugador4
	

	.jugarJugador1:

		xor eax, eax
		mov al, byte[banderasJugadoresActivos+0]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador1Ronda2

	    jmp .salir

	.jugarJugador2:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+1]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador2Ronda2

	    jmp .salir

	.jugarJugador3:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+2]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador
		;Si esta activo continua
		call ejecutarJugadaJugador3Ronda2

	    jmp .salir

	.jugarJugador4:
		xor eax, eax
		mov al, byte[banderasJugadoresActivos+3]
		cmp eax, 0; Si esta inactivo?
		je .omitirJugador

		;Si esta activo continua
		call ejecutarJugadaJugador4Ronda2

	    jmp .salir


	.omitirJugador:

		call seOmiteJugador

		call aumentarUltimoJugadorEnJugar
		jmp .salir

	.salir:
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 1
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador1Ronda2:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3
		call jugadaRandomNumberRonda2
		cmp eax, 0
		je .rendirse;.igualar;
		cmp eax,1
		je .subir;.igualar;
		cmp eax,2; Solo si se permite
		je .pasar
		cmp eax,3
		jae .igualar; Se aumenta la probabilidad de igualar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0


			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores

			call jugador1SeRindeRonda2
			jmp .salirJugadaJugador1

		.subir:; 1
			call jugador1SubeApuestaRonda2
			jmp .salirJugadaJugador1

		.igualar:;2
			call jugador1IgualaApuestaRonda2
			jmp .salirJugadaJugador1

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador1PasaRonda2

			jmp .salirJugadaJugador1




	.salirJugadaJugador1:

		popad
		ret



jugador1PasaRonda2:
	pushad
		mov ecx, mensajePasaJugador1
		mov edx, largoMensajePasaJugador1
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador1SeRindeRonda2:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+0],0; Desactiva Jugador 1
	mov byte[jugador1+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar
	mov ecx, mensajeSeRindeJugador1
	mov edx, largoMensajeSeRindeJugador1
	call print

	call diminuirActivos

	.salir:
		popad
		ret

jugador1SubeApuestaRonda2:
	pushad
	mov byte[jugador1+10],1; El jugador 1 sube su apuesta
	call apuestaJugador1Ronda2; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador1Ronda2:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador1 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador1SeRindeRonda2

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador1
			mov edx, largoMensajeSubeApuestaJugador1
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador1IgualaApuestaRonda2:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador1 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador1 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador1SeRindeRonda2
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador1
			mov edx, largoMensajeIgualaApuestaJugador1
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 1
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 2
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador2Ronda2:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3, - 11
		call jugadaRandomNumberRonda2
		cmp eax, 0
		je .rendirse;.igualar;
		cmp eax,1
		je .subir;.igualar;
		cmp eax,2
		je .pasar
		cmp eax,3; Solo si se permite
		jae .igualar; Se aumenta la probabilidad de igualar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0
			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador2SeRindeRonda2
			jmp .salirJugadaJugador2

		.subir:; 1
			call jugador2SubeApuestaRonda2
			jmp .salirJugadaJugador2

		.igualar:;2
			call jugador2IgualaApuestaRonda2
			jmp .salirJugadaJugador2

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador2PasaRonda2

			jmp .salirJugadaJugador2




	.salirJugadaJugador2:

		popad
		ret



jugador2PasaRonda2:
	pushad
		mov ecx, mensajePasaJugador2
		mov edx, largoMensajePasaJugador2
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador2SeRindeRonda2:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+1],0; Desactiva Jugador 1
	mov byte[jugador2+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador2
	mov edx, largoMensajeSeRindeJugador2
	call print

	call diminuirActivos

	.salir:
		popad
		ret

jugador2SubeApuestaRonda2:
	pushad
	mov byte[jugador2+10],1; El jugador 1 sube su apuesta
	call apuestaJugador2Ronda2; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador2Ronda2:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador2 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador2SeRindeRonda2

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador2
			mov edx, largoMensajeSubeApuestaJugador2
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador2IgualaApuestaRonda2:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador2 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador2 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador2SeRindeRonda2
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador2
			mov edx, largoMensajeIgualaApuestaJugador2
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 2
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 3
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador3Ronda2:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3, - 11
		call jugadaRandomNumberRonda2
		cmp eax, 0
		je .rendirse;.igualar;
		cmp eax,1
		je .subir;.igualar;
		cmp eax,2
		je .pasar
		cmp eax,3; Solo si se permite
		jae .igualar; Se aumenta la probabilidad de igualar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0
			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador3SeRindeRonda2
			jmp .salirJugadaJugador3

		.subir:; 1
			call jugador3SubeApuestaRonda2
			jmp .salirJugadaJugador3

		.igualar:;2
			call jugador3IgualaApuestaRonda2
			jmp .salirJugadaJugador3

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador3PasaRonda2

			jmp .salirJugadaJugador3




	.salirJugadaJugador3:

		popad
		ret



jugador3PasaRonda2:
	pushad
		mov ecx, mensajePasaJugador3
		mov edx, largoMensajePasaJugador3
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador3SeRindeRonda2:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+2],0; Desactiva Jugador 1
	mov byte[jugador3+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador3
	mov edx, largoMensajeSeRindeJugador3
	call print

	call diminuirActivos

	.salir:
	popad
	ret

jugador3SubeApuestaRonda2:
	pushad
	mov byte[jugador3+10],1; El jugador 1 sube su apuesta
	call apuestaJugador3Ronda2; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador3Ronda2:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador3 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador3SeRindeRonda2

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador3
			mov edx, largoMensajeSubeApuestaJugador3
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador3IgualaApuestaRonda2:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador3 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador3 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador3SeRindeRonda2
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador3
			mov edx, largoMensajeIgualaApuestaJugador3
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 3
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 4
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

ejecutarJugadaJugador4Ronda2:
	pushad
	.jugar:
		;EAX valor 0, 1, 2, 3, - 11
		call jugadaRandomNumberRonda2
		cmp eax, 0
		je .rendirse;.igualar;
		cmp eax,1
		je .subir;.igualar;
		cmp eax,2
		je .pasar
		cmp eax,3; Solo si se permite
		jae .igualar; Se aumenta la probabilidad de igualar
		
		jmp .jugar ; Hasta que escoja una jugada valida


		.rendirse:; 0

			mov eax, [totalJugadoresActivos]
			cmp eax, numeroDeJugadoresMinimos
			jbe .jugar; No permite que se rindan todos los jugadores
			call jugador4SeRindeRonda2
			jmp .salirJugadaJugador4

		.subir:; 1
			call jugador4SubeApuestaRonda2
			jmp .salirJugadaJugador4

		.igualar:;2
			call jugador4IgualaApuestaRonda2
			jmp .salirJugadaJugador4

		.pasar:;3
			push eax
			mov eax, [banderaSePermitePasar]
			cmp eax, 0; Si se permite pasar 
			pop eax
			je .jugar
			;Si se permite pasar
			call jugador4PasaRonda2

			jmp .salirJugadaJugador4




	.salirJugadaJugador4:

		popad
		ret



jugador4PasaRonda2:
	pushad
		mov ecx, mensajePasaJugador4
		mov edx, largoMensajePasaJugador4
		call print
		call aumentarUltimoJugadorEnJugar
	popad
	ret

jugador4SeRindeRonda2:
	pushad

	mov eax, [totalJugadoresActivos]
	cmp eax, numeroDeJugadoresMinimos
	jbe .salir; No permite que se rindan todos los jugadores

	mov byte[banderasJugadoresActivos+3],0; Desactiva Jugador 1
	mov byte[jugador4+9],0; Se desactiva el jugador 1
	call aumentarUltimoJugadorEnJugar

	mov ecx, mensajeSeRindeJugador4
	mov edx, largoMensajeSeRindeJugador4
	call print


	call diminuirActivos

	.salir:
		popad
		ret

jugador4SubeApuestaRonda2:
	pushad
	mov byte[jugador4+10],1; El jugador 1 sube su apuesta
	call apuestaJugador4Ronda2; El jugador 1 apuesta el doble que el minimo o mas.
	popad
	ret

apuestaJugador4Ronda2:

	pushad

	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx

	mov ebx, [apuestaMinima]; Se obtiene la apuesta del big blind
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador

	call Aumente

	;----------------------------------------------------;	   
	push ecx
	push edx

	mov ecx, apuestaEtiqueta
	mov edx, apuestaEtiquetaLen
	;call print

	mov esi, eax
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print
		   
	mov ecx, monedasRestantes
	mov edx, monedasRestantesLen
	;call print

	pop edx
	pop ecx

	;----------------------------------------------------;	


	xor ecx, ecx
	mov ecx, eax
	xor edx, edx
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador

	cmp edx,ecx
	jb .noPuedeApostar
	je .validarAllIn

	sub edx, ecx

	mov byte[jugador4 + 0], dl

	;----------------------------------------------------;		   
	push ecx
	push edx

	mov esi, edx
	call itoa
	mov ecx, number
	mov edx, numberLen
	;call print

	pop edx
	pop ecx
	jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:


		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 

		call jugador4SeRindeRonda2

		popad
		ret

	.validarAllIn:
		jmp .noPuedeApostar


	.salir:; La apuesta fue valida 

		push eax
		mov eax, 1
		mov [banderaAlguienSubioApuesta], eax; Se activa la bandera de que alguien aumento la apuesta minima
		mov dword[cantidadJugadoresQueIgualaron], 0
		mov [apuestaMinima], ecx
		pop eax

		pushad
			mov ecx, mensajeSubeApuestaJugador4
			mov edx, largoMensajeSubeApuestaJugador4
			call print
		popad

		pushad
			mov esi, ecx
			call itoa
			mov ecx, number
			mov edx, numberLen
			call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		popad
		ret

jugador4IgualaApuestaRonda2:
	pushad
	xor ebx, ebx
	xor edx, edx
	xor ecx, ecx
	   
	mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
	mov eax, [apuestaMinima]; Se obtiene la apuesta a igualar
	   
;----------------------------------------------------;	   
	push ecx
	push edx
	   
   mov ecx, apuestaEtiqueta
   mov edx, apuestaEtiquetaLen
   ;call print
	   
   mov esi, eax
   ;call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   	   
   mov ecx, monedasRestantes
   mov edx, monedasRestantesLen
   ;call print

   pop edx
   pop ecx
	  
;----------------------------------------------------;	
	 
   xor ecx, ecx
   mov ecx, eax
   xor edx, edx
   mov dl, byte[jugador4 + 0] ; Le paso la cantidad de monedas que posee el jugador
   
   cmp edx,ecx
   jb .noPuedeApostar
   je .validarAllIn
   
   sub edx, ecx
   
   mov byte[jugador4 + 0], dl




;----------------------------------------------------;		   
   push ecx
   push edx
   
   mov esi, edx
   call itoa
   mov ecx, number
   mov edx, numberLen
   ;call print
   
   pop edx
   pop ecx
   jmp .salir
;----------------------------------------------------;		   
	.noPuedeApostar:
		; mov ecx, apuestaInvalida
		; mov edx, apuestaInvalidaLen
		; call print 
		call jugador4SeRindeRonda2
		popad
		ret

	.validarAllIn:
	  	jmp .noPuedeApostar
			
	   
	 .salir:;La apuesta es valida

		pushad
			mov ecx, mensajeIgualaApuestaJugador4
			mov edx, largoMensajeIgualaApuestaJugador4
			call print
		popad

		pushad
		   mov esi, ecx
		   call itoa
		   mov ecx, number
		   mov edx, numberLen
		   call print
		popad

		mov eax, [gananciaTotal]
		add eax, ecx
		mov [gananciaTotal], eax
		call aumentarUltimoJugadorEnJugar; Se actualiza quien fue el ultimo jugador
		add dword[cantidadJugadoresQueIgualaron], 1
		popad
		ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 4
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 5
;jugadas INICIO
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;jugador 5
;jugadas FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;RONDA 2: FIN
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;**************************************************************************************************************************************************************************

repartir3Comunitarias:
	push ecx
	push edx
	xor ecx, ecx
	xor edx, edx
	
	.llenar:
		call numeroRandom
		call verificacion
		
		mov cx, word[cartas + eax]
		mov word[cartasComunitarias + 0], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[masoComunal + 0], dh			; paso a la pos 0 del masoComunal el valor en int de su primera carta
		mov byte[masoComunal + 1], bl			; paso a la pos 1 del masoComunal el tipo de su primera carta
		
		
		call quitarRepartido
		
		call numeroRandom
		call verificacion
		
		mov cx, word[cartas + eax]
		mov word[cartasComunitarias + 2], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
		
		mov byte[masoComunal + 2], dh			; paso a la pos 2 del masoComunal el valor en int de su segunda carta
		mov byte[masoComunal + 3], bl			; paso a la pos 3 del masoComunal el tipo de su segunda carta
		
		
		
		call quitarRepartido
		
		call numeroRandom
		call verificacion
		
		mov cx, word[cartas + eax]
		mov word[cartasComunitarias + 4], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[masoComunal + 4], dh			; paso a la pos 4 del masoComunal el valor en int de su tercera carta
		mov byte[masoComunal + 5], bl			; paso a la pos 5 del masoComunal el tipo de su tercera carta
		
		call quitarRepartido
	pop edx
	pop ecx 
	ret

repartir4Comunitaria:
	push ecx
	xor ecx, ecx
	
	.llenar:
		call numeroRandom
		call verificacion
		
		mov cx, word[cartas + eax]
		mov word[cartasComunitarias + 6], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[masoComunal + 6], dh			; paso a la pos 6 del masoComunal el valor en int de su cuarta carta
		mov byte[masoComunal + 7], bl			; paso a la pos 7 del masoComunal el tipo de su cuarta carta
		
		
		call quitarRepartido
		
	pop ecx 
	ret
	
repartir5Comunitaria:
	push ecx
	xor ecx, ecx
	
	.llenar:
		call numeroRandom
		call verificacion
		
		mov cx, word[cartas + eax]
		mov word[cartasComunitarias + 8], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[masoComunal + 8], dh			; paso a la pos 8 del masoComunal el valor en int de su quinta carta
		mov byte[masoComunal + 9], bl			; paso a la pos 9 del masoComunal el tipo de su quinta carta
		
		call quitarRepartido
		
	pop ecx 
	ret

	
	
;**************************************************************************************************************************************************************************
repartirCartas:

	call reparteAjugador1
	call reparteAjugador2
	call reparteAjugador3
	call reparteAjugador4

	ret




imprimirJugadores:
	call imprimirJugador1
	call imprimirJugador2
	call imprimirJugador3
	call imprimirJugador4
	call imprimirGananciaTotal
	ret

ciclo:
	pushad
	xor ebx, ebx
	mov ebx, 10
	
	.ciclo:
		call numeroRandom
		call verificacion
		mov esi, eax
		call itoa
		;call imprimirNumerosRandom
		dec ebx
		cmp ebx, 0
		jne .ciclo
		
	
	popad
	ret
;**************************************************************************************************************************************************************************
verificacion:

    .verifico:
        
        cmp eax,104
        je .repitoRand
        ja .repitoRand
        jb .correcto
        
    .repitoRand:
      call numeroRandom
      jmp .verifico
      
    .correcto:
      call EsPar
      cmp byte[cartas + eax], 20H
      je .repitoRand
      ret
;**************************************************************************************************************************************************************************
EsPar:

      push ebx
      push edx
      push eax
      
      xor ebx,ebx
      xor edx,edx
      
      mov ebx,2
      
      div ebx
      
      cmp edx,0
      jne .cambioPorPar
      je .bueno
      
      .bueno:
            pop eax
	    pop edx
	    pop ebx
	    ret
      
      
      .cambioPorPar:
          pop eax
	  sub eax,1
      
      pop edx
      pop ebx
      ret      
      
      
;**************************************************************************************************************************************************************************
repartirMonedas:
	push eax
	push ebx
	
	xor eax, eax
	xor ebx, ebx						; posicion 0 en el buffer de los jugadores
	
	mov al, 80						; cantidad de monedas
	mov byte[jugador1 + ebx],al
	mov byte[jugador2 + ebx],al
	mov byte[jugador3 + ebx],al
	mov byte[jugador4 + ebx],al
	
	pop ebx
	pop eax
	ret

;**************************************************************************************************************************************************************************	
reparteAjugador1:
	push ecx
	push ebx
	push edx
	push eax
	
	xor edx,edx
	xor ebx, ebx
	
	call numeroRandom
	call verificacion
	.carta1:
		mov cx, word[cartas+ eax]			; Carta en posicion random
		mov word[jugador1 + 1], cx			; La primera carta siempre esta en la pos 1 del buffer jugador
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador1 + 5], dh			; paso a la pos 5 del jugador el valor en int de su primera carta
		mov byte[jugador1 + 6], bl			; paso a la pos 6 del jugador el tipo de su primea carta
		
		call quitarRepartido
		
	call numeroRandom
	call verificacion
	.carta2:
		mov cx, word [cartas+ eax]
		mov word[jugador1 + 3], cx			; La siguiente carta siempre esta en la pos 3 del buffer juagdor
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
		
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador1 + 7], dh			; paso a la pos 5 del jugador el valor en int de su segunda carta
		mov byte[jugador1 + 8], bl			; paso a la pos 6 del jugador el tipo de su segunda carta
		
		call quitarRepartido
	
	pop eax
	pop edx
	pop ebx
	pop ecx
	ret
;**************************************************************************************************************************************************************************	
reparteAjugador2:
	push ecx
	push ebx
	push edx
	push eax
		
	call numeroRandom
	call verificacion
	.carta1:
		mov cx, word[cartas+ eax]			; Carta en posicion random
		mov word[jugador2 + 1], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador2 + 5], dh			; paso a la pos 5 del jugador el valor en int de su primera carta
		mov byte[jugador2 + 6], bl			; paso a la pos 6 del jugador el tipo de su primea carta
		
								 ; La siguiente carta siempre esta en la pos 3 del buffer juagdor
		call quitarRepartido
	call numeroRandom
	call verificacion
	.carta2:
		mov cx, word [cartas+ eax]
		mov word[jugador2 + 3], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
		
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador2 + 7], dh			; paso a la pos 5 del jugador el valor en int de su segunda carta
		mov byte[jugador2 + 8], bl			; paso a la pos 6 del jugador el tipo de su segunda carta
		
		call quitarRepartido
	
	pop eax
	pop edx
	pop ebx
	pop ecx
	ret
;**************************************************************************************************************************************************************************
reparteAjugador3:
	push ecx
	push ebx
	push edx
	push eax
	
	call numeroRandom
	call verificacion
	.carta1:
		mov cx, word[cartas+ eax]			; Carta en posicion random
		mov word[jugador3 + 1], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
		
		mov byte[jugador3 + 5], dh			; paso a la pos 5 del jugador el valor en int de su primera carta
		mov byte[jugador3 + 6], bl			; paso a la pos 6 del jugador el tipo de su primea carta
		
								; La siguiente carta siempre esta en la pos 3 del buffer juagdor
		call quitarRepartido
	call numeroRandom
	call verificacion
	.carta2:
		mov cx, word [cartas+ eax]
		mov word[jugador3 + 3], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
		
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador3 + 7], dh			; paso a la pos 5 del jugador el valor en int de su segunda carta
		mov byte[jugador3 + 8], bl			; paso a la pos 6 del jugador el tipo de su segunda carta
		
		call quitarRepartido

	pop eax
	pop edx
	pop ebx
	pop ecx
	ret
;**************************************************************************************************************************************************************************
reparteAjugador4:
	push ecx
	push ebx
	push edx
	push eax
	
	call numeroRandom
	call verificacion
	.carta1:
		mov cx, word[cartas+ eax]			; Carta en posicion random
		mov word[jugador4 + 1], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
				
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador4 + 5], dh			; paso a la pos 5 del jugador el valor en int de su primera carta
		mov byte[jugador4 + 6], bl			; paso a la pos 6 del jugador el tipo de su primea carta
		
		call quitarRepartido
		
		
	call numeroRandom
	call verificacion
	.carta2:
		mov cx, word [cartas+ eax]
		mov word[jugador4 + 3], cx
		
		mov dl, byte[cartas+eax]			; paso al dl el valor de la carta
		call Cambio
		
		mov bl, byte[cartas + eax +1]			; paso al bl el tipo de la carta
				
		mov byte[jugador4 + 7], dh			; paso a la pos 5 del jugador el valor en int de su segunda carta
		mov byte[jugador4 + 8], bl			; paso a la pos 6 del jugador el tipo de su segunda carta
		
		call quitarRepartido
	pop eax
	pop edx
	pop ebx
	pop ecx
	ret
;**************************************************************************************************************************************************************************
crearMasoDeCArtas:
	call crearMasoJugador1
	call crearMasoJugador2
	call crearMasoJugador3
	call crearMasoJugador4
;**************************************************************************************************************************************************************************

crearMasoJugador1:
	mov bl, byte[jugador1 + 5]
	mov byte[jugador1Maso + 0], bl
	
	mov bl, byte[jugador1 + 6]
	mov byte[jugador1Maso + 1], bl
	
	mov bl, byte[jugador1 + 7]
	mov byte[jugador1Maso + 2], bl
	
	mov bl, byte[jugador1 + 8]
	mov byte[jugador1Maso + 3], bl
	
	mov bl, byte[masoComunal + 0]
	mov byte[jugador1Maso + 4], bl
	
	mov bl, byte[masoComunal + 1]
	mov byte[jugador1Maso + 5], bl
	
	mov bl, byte[masoComunal + 2]
	mov byte[jugador1Maso + 6], bl
	
	mov bl, byte[masoComunal + 3]
	mov byte[jugador1Maso + 7], bl
	
	mov bl, byte[masoComunal + 4]
	mov byte[jugador1Maso + 8], bl
	
	mov bl, byte[masoComunal + 5]
	mov byte[jugador1Maso + 9], bl
	
	mov bl, byte[masoComunal + 6]
	mov byte[jugador1Maso + 10], bl
	
	mov bl, byte[masoComunal + 7]
	mov byte[jugador1Maso + 11], bl
	
	mov bl, byte[masoComunal + 8]
	mov byte[jugador1Maso + 12], bl
	
	mov bl, byte[masoComunal + 9]
	mov byte[jugador1Maso + 13], bl
	
	ret
;**************************************************************************************************************************************************************************	
crearMasoJugador2:
	mov bl, byte[jugador2 + 5]
	mov byte[jugador2Maso + 0], bl
	
	mov bl, byte[jugador2 + 6]
	mov byte[jugador2Maso + 1], bl
	
	mov bl, byte[jugador2 + 7]
	mov byte[jugador2Maso + 2], bl
	
	mov bl, byte[jugador2 + 8]
	mov byte[jugador2Maso + 3], bl
	
	mov bl, byte[masoComunal + 0]
	mov byte[jugador2Maso + 4], bl
	
	mov bl, byte[masoComunal + 1]
	mov byte[jugador2Maso + 5], bl
	
	mov bl, byte[masoComunal + 2]
	mov byte[jugador2Maso + 6], bl
	
	mov bl, byte[masoComunal + 3]
	mov byte[jugador2Maso + 7], bl
	
	mov bl, byte[masoComunal + 4]
	mov byte[jugador2Maso + 8], bl
	
	mov bl, byte[masoComunal + 5]
	mov byte[jugador2Maso + 9], bl
	
	mov bl, byte[masoComunal + 6]
	mov byte[jugador2Maso + 10], bl
	
	mov bl, byte[masoComunal + 7]
	mov byte[jugador2Maso + 11], bl
	
	mov bl, byte[masoComunal + 8]
	mov byte[jugador2Maso + 12], bl
	
	mov bl, byte[masoComunal + 9]
	mov byte[jugador2Maso + 13], bl
	
	ret

;**************************************************************************************************************************************************************************
crearMasoJugador3:
	mov bl, byte[jugador3 + 5]
	mov byte[jugador3Maso + 0], bl
	
	mov bl, byte[jugador3 + 6]
	mov byte[jugador3Maso + 1], bl
	
	mov bl, byte[jugador3 + 7]
	mov byte[jugador3Maso + 2], bl
	
	mov bl, byte[jugador3 + 8]
	mov byte[jugador3Maso + 3], bl
	
	mov bl, byte[masoComunal + 0]
	mov byte[jugador3Maso + 4], bl
	
	mov bl, byte[masoComunal + 1]
	mov byte[jugador3Maso + 5], bl
	
	mov bl, byte[masoComunal + 2]
	mov byte[jugador3Maso + 6], bl
	
	mov bl, byte[masoComunal + 3]
	mov byte[jugador3Maso + 7], bl
	
	mov bl, byte[masoComunal + 4]
	mov byte[jugador3Maso + 8], bl
	
	mov bl, byte[masoComunal + 5]
	mov byte[jugador3Maso + 9], bl
	
	mov bl, byte[masoComunal + 6]
	mov byte[jugador3Maso + 10], bl
	
	mov bl, byte[masoComunal + 7]
	mov byte[jugador3Maso + 11], bl
	
	mov bl, byte[masoComunal + 8]
	mov byte[jugador3Maso + 12], bl
	
	mov bl, byte[masoComunal + 9]
	mov byte[jugador3Maso + 13], bl
	
	ret
;**************************************************************************************************************************************************************************
crearMasoJugador4:
	mov bl, byte[jugador4 + 5]
	mov byte[jugador4Maso + 0], bl
	
	mov bl, byte[jugador4 + 6]
	mov byte[jugador4Maso + 1], bl
	
	mov bl, byte[jugador4 + 7]
	mov byte[jugador4Maso + 2], bl
	
	mov bl, byte[jugador4 + 8]
	mov byte[jugador4Maso + 3], bl
	
	mov bl, byte[masoComunal + 0]
	mov byte[jugador4Maso + 4], bl
	
	mov bl, byte[masoComunal + 1]
	mov byte[jugador4Maso + 5], bl
	
	mov bl, byte[masoComunal + 2]
	mov byte[jugador4Maso + 6], bl
	
	mov bl, byte[masoComunal + 3]
	mov byte[jugador4Maso + 7], bl
	
	mov bl, byte[masoComunal + 4]
	mov byte[jugador4Maso + 8], bl
	
	mov bl, byte[masoComunal + 5]
	mov byte[jugador4Maso + 9], bl
	
	mov bl, byte[masoComunal + 6]
	mov byte[jugador4Maso + 10], bl
	
	mov bl, byte[masoComunal + 7]
	mov byte[jugador4Maso + 11], bl
	
	mov bl, byte[masoComunal + 8]
	mov byte[jugador4Maso + 12], bl
	
	mov bl, byte[masoComunal + 9]
	mov byte[jugador4Maso + 13], bl
	
	ret
;**************************************************************************************************************************************************************************
quitarRepartido:
	mov byte[cartas + eax], 20H
	inc eax
	mov byte[cartas + eax], 20H
	ret

;**************************************************************************************************************************************************************************
imprimirJugador1:
pushad
	
	mov eax, 4
	mov ebx, 1
	mov ecx, jugadorEtiqueta
	mov edx, jugadorEtiquetalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, monedaEtiqueta
	mov edx, monedaEtiquetaLen
	int 80h
	
	mov dl,byte[jugador1+0]
	mov esi, edx
	call itoa
	
	call imprimirNumero
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta1Etiqueta
	mov edx, carta1Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador1 + 1]
	mov word[primeraCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, primeraCarta
	mov edx, primeraCartalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta2Etiqueta
	mov edx, carta2Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador1 + 3]
	mov word[segundaCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, segundaCarta
	mov edx, segundaCartalen
	int 80h	
popad
	ret

;**************************************************************************************************************************************************************************		
imprimirJugador2:

pushad
	
	mov eax, 4
	mov ebx, 1
	mov ecx, jugador2Etiqueta
	mov edx, jugador2Etiquetalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, monedaEtiqueta
	mov edx, monedaEtiquetaLen
	int 80h
	
	mov dl,byte[jugador2+0]
	mov esi, edx
	call itoa
	
	call imprimirNumero
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta1Etiqueta
	mov edx, carta1Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador2 + 1]
	mov word[primeraCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, primeraCarta
	mov edx, primeraCartalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta2Etiqueta
	mov edx, carta2Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador2 + 3]
	mov word[segundaCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, segundaCarta
	mov edx, segundaCartalen
	int 80h	
popad
	ret

	
;**************************************************************************************************************************************************************************		
imprimirJugador3:
pushad

	mov eax, 4
	mov ebx, 1
	mov ecx, jugador3Etiqueta
	mov edx, jugador3Etiquetalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, monedaEtiqueta
	mov edx, monedaEtiquetaLen
	int 80h
	
	mov dl,byte[jugador3+0]
	mov esi, edx
	call itoa
	
	call imprimirNumero
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta1Etiqueta
	mov edx, carta1Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador3 + 1]
	mov word[primeraCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, primeraCarta
	mov edx, primeraCartalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta2Etiqueta
	mov edx, carta2Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador3 + 3]
	mov word[segundaCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, segundaCarta
	mov edx, segundaCartalen
	int 80h	
popad
	ret		
	

imprimirJugador4:
pushad

	
	mov eax, 4
	mov ebx, 1
	mov ecx, jugador4Etiqueta
	mov edx, jugador4Etiquetalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, monedaEtiqueta
	mov edx, monedaEtiquetaLen
	int 80h
	
	mov dl,byte[jugador4+0]
	mov esi, edx
	call itoa
	
	call imprimirNumero
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta1Etiqueta
	mov edx, carta1Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador4+ 1]
	mov word[primeraCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, primeraCarta
	mov edx, primeraCartalen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, carta2Etiqueta
	mov edx, carta2Etiquetalen
	int 80h
	
	xor edx, edx
	mov dx, word[jugador4 + 3]
	mov word[segundaCarta + 0], dx
	
	mov eax, 4
	mov ebx, 1
	mov ecx, segundaCarta
	mov edx, segundaCartalen
	int 80h	
popad
	ret		
	

imprimirGananciaTotal:


	pushad
	call imprimirNuevaLinea
	mov ecx, mensajeTotalFichasApostadas
	mov edx, largoMensajeTotalFichasApostadas
	call print
	mov esi, [gananciaTotal]
	call itoa
	mov ecx, number
	mov edx, numberLen
	call print
	call imprimirNuevaLinea
	call imprimirNuevaLinea

	popad
	ret


;**************************************************************************************************************************************************************************		
imprimirNumero:
	pushad
	
	mov eax, 4
	mov ebx, 1
	mov ecx, number
	mov edx, numberLen
	int 80h
	
	popad
	ret

;**************************************************************************************************************************************************************************	
	
itoa:
      push eax					; Guardo los valores en la pila
      push ebx
      push ecx
      push edx
      
      xor eax, eax				; Limpio los registros a utilizar
      xor ebx, ebx
      xor ecx, ecx
      xor edx, edx
      
     
      
      mov eax, esi				; paso el registro ESI con el num a convertir al EAX
      
      mov ecx, 3 				; indica el ultimo indice de la etiqueta, el num se pasara de
						; atras para adelante.

      .divide:
	      mov ebx, 10			; paso el operando al ebx
	      div ebx				; divido
	      add edx, 30h			; le sumo 30h (o 48) para pasarlo a string
	      mov byte[number + ecx], dl		; lo ubico en el espacio correspondiente
	      xor edx, edx
  
      .preparo:					; prepara los registros para la siguiente division
	      dec ecx

	      cmp eax, ebx			; divide eax hasta que este sea cero!!!!! 
	      ja .divide
	      
	      add eax, 30h
	      mov byte[number + ecx], al
	      
      pop edx					; saco los registros de la pila
      pop ecx
      pop ebx
      pop eax
      
      ret

;***************************************************************************************************************************************************************************
Cambio:	
	.equivalente:
		    
		      cmp dl, 32H		; compara la pos de la tabla con "2"
		      je .esDos
		      cmp dl, 33H
		      je .esTres
		      cmp dl, 34H
		      je .esCuatro
		      cmp dl, 35H
		      je .esCinco
		      cmp dl, 36H
		      je .esSeis
		      cmp dl, 37H
		      je .esSiete
		      cmp dl, 38H
		      je .esOcho
		      cmp dl, 39H
		      je .esNueve
		      cmp dl, 30H		; Compara la pos de la tabla con "0"
		      je .esDiez
		      cmp dl, 4AH		; Compara la pos de la tabla con "J"
		      je .esOnce
		      cmp dl, 51H		; Compara la pos de la tabla con "Q"
		      je .esDoce
		      cmp dl, 4BH		; Compara la pos de la tabla con "K"
		      je .esTrece
		      cmp dl, 41H		; Compara la pos de la tabla con "A"
		      je .esCatorce
	
	.esDos:
		
		mov dh, 2
		
		jmp Salir
	    
	.esTres:
		mov dh, 3
		
		jmp Salir
		
	.esCuatro:
		mov dh, 4
		
		jmp Salir
		
	.esCinco:
		mov dh, 5
		
		jmp Salir
		
	.esSeis:
		mov dh, 6
		
		jmp Salir
		
	.esSiete:
		mov dh, 7
		
		jmp Salir
		
	.esOcho:
		mov dh, 8
		
		jmp Salir
		
	.esNueve:
		mov dh, 9
		
		jmp Salir
		
	.esDiez:
		mov dh, 10
		
		jmp Salir
		
	.esOnce:
		mov dh, 11
		
		jmp Salir
		
	.esDoce:
		mov dh, 12
		
		jmp Salir
		
	.esTrece:
		mov dh, 13
		
		jmp Salir
		
	.esCatorce:
		mov dh, 14
		
		jmp Salir
Salir:
	ret


;::::::::::::::::::::::::::::::::::::::::::::::PROCEDIMIENTOS RUBEN:::::::::::::::::::::::::::::::::::::::
;
;
;

;::::::::::::PROCEDIMIENTOS:::::::::::::::::::
  ;In:
  ;ecx=address of the string
  ;edx=length of string
  ;RgsA:  none
print:
    push    ebx     ;push the value of ebx into the stack (Stack Pointer, esp = esp-4)
    push    eax
    mov     eax,4   ;4 is the syscall code for write
    mov     ebx,1   ;std output (terminal)
    int     80h    ;syscall (kernel interrupt)
    pop     eax     ;loads the (last pushed) value from the stack into eax (esp = esp+4)
    pop     ebx
    ret             ;ret and call are explained later...


xTen:                   ;Result: eax=eax*10
			;RgsA: eax
	push    ebx
	mov     ebx,eax ;ebx=eax
	shl     eax,2   ;shift left by 2 places
	add     eax,ebx ;eax=eax+ebx
	shl     eax,1
	pop     ebx
	ret

byTen:                  ;Result: eax=eax/10, ebx=eax%10
			;RgsA:   eax, ebx
	push    edx
	push    ecx
	mov     edx,0
	mov     ecx,10
	div     ecx
	mov     ebx,edx
	pop     ecx
	pop     edx
	ret

toInt:                  ;Out:   eax=toInt(string at ecx)
			;In:    ecx=address of string
			;       edx=max length of string
			;RgsA:  eax
	push    ebx
	mov     eax,0
	mov     ebx,0
    .loopStr:           ;'.label' means local label. It is associated with the previous non-local label
	call    xTen    ;So this '.loopStr' can be globally accessed as 'toInt.loopStr' (rarely needed)
	push    edx     ;store edx
	mov     edx,0
	mov     dl,byte[ecx+ebx]        ;[..] means dereferencing, 'byte' tells the size of dereferenced data
					; there are also word, dword and qword
	sub     dl,0x30 ;ascii code of '0'
	add     eax,edx
	pop     edx     ;restore edx
	inc     ebx     ;increment ebx by 1
	cmp     byte[ecx+ebx],0xa
	jle     .return
	cmp     ebx,edx
	jge     .return
	jmp     .loopStr
    .return:
	pop     ebx
	ret

toStr:      ;Out:   ecx=toStr(eax)
	;In:    eax=integer to convert
	;       ecx=address where string should be stored 
	;       edx=max length of string
	;RgsA:  none
	push    ebx
	push    eax
	mov     ebx,0
	push    0
	.loopDiv:                   ;repeatedly divide eax by 10 and stack up the remainders (ascii) till eax=0
	call    byTen
	add     ebx,0x30
	push    ebx
	cmp     eax,0
	jg      .loopDiv
	mov     ebx,0
	.loopStr:                   ;pop the remainders into [ecx+n] (this will be in reverse order to stacking)
	pop     eax
	cmp     eax,0
	je      .loopFill
	cmp     ebx,edx
	je      .loopStr        ;pop the remaining items from the stack if the number cannot fit into the string
	mov     byte[ecx+ebx],al        ;Note that the value of eax, ax and al are the same until
		; they are overflowed (ie. eax=256 [2^8] then al=0, ah=1, ax=2^8)
	inc     ebx
	jmp     .loopStr
	.loopFill:                  ;fill the remaining space in [ecx+..] with zeroes (null values)
	cmp     ebx,edx
	je      .return
	mov     byte[ecx+ebx],0
	inc     ebx
	jmp     .loopFill
	.return:
	pop     eax
	pop     ebx
	ret

combinarCartasComunitariaConJugador1:
	pushad
	;El jugador tiene 7 cartas en su maso posible
	;Se combinan esas 7 cartas
	;Las posiciones X, Y son los indices 0, 1 respectivamente
	;Las cartas comumitas serian las ABCDE, indices 2, 3, 4, 5, 6
	;Existen 10 combinaciones posibles para 5 elementos diferentes tomados de 3 en 3
	;inicialmente el maso se encuentra representado por 7 cartas
	;[X,Y,A,B,C,D,E]
	;El buffer de las combinaciones esta lleno con cambios de linea
	;Al final el buffer va estar lleno por las 10 posibles combinaciones
	;Con la forma [X,Y,A',B',C',=], el = luego va ser sustituido por el ranking de la combinacion

	xor ebx,ebx; ebx = 0

	;GENERA [X,Y,A,B,C] = 0
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+0*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+0*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+0*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+0*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+0*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+0*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+0*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+0*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+0*11+8], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+0*11+9], ah; Copia la carta C tipo al buffer


	;GENERA [X,Y,A,B,D] = 1
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+1*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+1*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+1*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+1*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+1*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+1*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+1*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+1*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+1*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+1*11+9], ah; Copia la carta D al buffer


	;GENERA [X,Y,A,B,E] = 2
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+2*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+2*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+2*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+2*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+2*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+2*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+2*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+2*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+2*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+2*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,A,C,D] = 3
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+3*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+3*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+3*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+3*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+3*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+3*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+3*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+3*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+3*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+3*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,A,C,E] = 4
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+4*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+4*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+4*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+4*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+4*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+4*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+4*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+4*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+4*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+4*11+9], ah; Copia la carta E tipo al buffer
	


	;GENERA [X,Y,A,D,E] = 5
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+5*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+5*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+5*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+5*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador1+5*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador1+5*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+5*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+5*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+5*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+5*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,C,D] = 6
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+6*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+6*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+6*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+6*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+6*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+6*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+6*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+6*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+6*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+6*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,B,C,E] = 7
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+7*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+7*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+7*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+7*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+7*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+7*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+7*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+7*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+7*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+7*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,D,E] = 8
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+8*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+8*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+8*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+8*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador1+8*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador1+8*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+8*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+8*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+8*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+8*11+9], ah; Copia la carta E tipo al buffer



	;GENERA [X,Y,C,D,E] = 9
	mov al, byte[jugador1+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador1+9*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador1+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador1+9*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador1+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador1+9*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador1+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador1+9*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador1+9*11+4], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador1+9*11+5], ah; Copia la carta C Ctipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador1+9*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador1+9*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador1+9*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador1+9*11+9], ah; Copia la carta E tipo al buffer

	popad
	ret




combinarCartasComunitariaConJugador2:
	pushad
	;El jugador tiene 7 cartas en su maso posible
	;Se combinan esas 7 cartas
	;Las posiciones X, Y son los indices 0, 1 respectivamente
	;Las cartas comumitas serian las ABCDE, indices 2, 3, 4, 5, 6
	;Existen 10 combinaciones posibles para 5 elementos diferentes tomados de 3 en 3
	;inicialmente el maso se encuentra representado por 7 cartas
	;[X,Y,A,B,C,D,E]
	;El buffer de las combinaciones esta lleno con cambios de linea
	;Al final el buffer va estar lleno por las 10 posibles combinaciones
	;Con la forma [X,Y,A',B',C',=], el = luego va ser sustituido por el ranking de la combinacion

	xor ebx,ebx; ebx = 0

	;GENERA [X,Y,A,B,C] = 0
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+0*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+0*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+0*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+0*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+0*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+0*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+0*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+0*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+0*11+8], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+0*11+9], ah; Copia la carta C tipo al buffer


	;GENERA [X,Y,A,B,D] = 1
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+1*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+1*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+1*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+1*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+1*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+1*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+1*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+1*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+1*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+1*11+9], ah; Copia la carta D al buffer


	;GENERA [X,Y,A,B,E] = 2
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+2*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+2*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+2*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+2*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+2*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+2*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+2*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+2*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+2*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+2*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,A,C,D] = 3
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+3*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+3*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+3*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+3*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+3*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+3*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+3*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+3*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+3*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+3*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,A,C,E] = 4
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+4*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+4*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+4*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+4*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+4*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+4*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+4*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+4*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+4*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+4*11+9], ah; Copia la carta E tipo al buffer
	


	;GENERA [X,Y,A,D,E] = 5
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+5*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+5*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+5*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+5*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador2+5*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador2+5*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+5*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+5*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+5*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+5*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,C,D] = 6
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+6*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+6*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+6*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+6*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+6*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+6*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+6*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+6*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+6*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+6*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,B,C,E] = 7
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+7*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+7*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+7*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+7*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+7*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+7*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+7*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+7*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+7*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+7*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,D,E] = 8
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+8*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+8*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+8*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+8*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador2+8*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador2+8*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+8*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+8*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+8*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+8*11+9], ah; Copia la carta E tipo al buffer



	;GENERA [X,Y,C,D,E] = 9
	mov al, byte[jugador2+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador2+9*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador2+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador2+9*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador2+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador2+9*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador2+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador2+9*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador2+9*11+4], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador2+9*11+5], ah; Copia la carta C Ctipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador2+9*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador2+9*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador2+9*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador2+9*11+9], ah; Copia la carta E tipo al buffer

	popad
	ret


combinarCartasComunitariaConJugador3:
	pushad
	;El jugador tiene 7 cartas en su maso posible
	;Se combinan esas 7 cartas
	;Las posiciones X, Y son los indices 0, 1 respectivamente
	;Las cartas comumitas serian las ABCDE, indices 2, 3, 4, 5, 6
	;Existen 10 combinaciones posibles para 5 elementos diferentes tomados de 3 en 3
	;inicialmente el maso se encuentra representado por 7 cartas
	;[X,Y,A,B,C,D,E]
	;El buffer de las combinaciones esta lleno con cambios de linea
	;Al final el buffer va estar lleno por las 10 posibles combinaciones
	;Con la forma [X,Y,A',B',C',=], el = luego va ser sustituido por el ranking de la combinacion

	xor ebx,ebx; ebx = 0

	;GENERA [X,Y,A,B,C] = 0
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+0*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+0*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+0*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+0*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+0*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+0*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+0*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+0*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+0*11+8], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+0*11+9], ah; Copia la carta C tipo al buffer


	;GENERA [X,Y,A,B,D] = 1
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+1*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+1*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+1*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+1*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+1*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+1*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+1*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+1*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+1*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+1*11+9], ah; Copia la carta D al buffer


	;GENERA [X,Y,A,B,E] = 2
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+2*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+2*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+2*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+2*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+2*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+2*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+2*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+2*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+2*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+2*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,A,C,D] = 3
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+3*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+3*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+3*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+3*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+3*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+3*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+3*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+3*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+3*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+3*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,A,C,E] = 4
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+4*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+4*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+4*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+4*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+4*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+4*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+4*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+4*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+4*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+4*11+9], ah; Copia la carta E tipo al buffer
	


	;GENERA [X,Y,A,D,E] = 5
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+5*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+5*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+5*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+5*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador3+5*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador3+5*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+5*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+5*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+5*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+5*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,C,D] = 6
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+6*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+6*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+6*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+6*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+6*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+6*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+6*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+6*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+6*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+6*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,B,C,E] = 7
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+7*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+7*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+7*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+7*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+7*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+7*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+7*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+7*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+7*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+7*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,D,E] = 8
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+8*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+8*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+8*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+8*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador3+8*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador3+8*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+8*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+8*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+8*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+8*11+9], ah; Copia la carta E tipo al buffer



	;GENERA [X,Y,C,D,E] = 9
	mov al, byte[jugador3+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador3+9*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador3+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador3+9*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador3+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador3+9*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador3+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador3+9*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador3+9*11+4], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador3+9*11+5], ah; Copia la carta C Ctipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador3+9*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador3+9*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador3+9*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador3+9*11+9], ah; Copia la carta E tipo al buffer

	popad
	ret


combinarCartasComunitariaConJugador4:
	pushad
	;El jugador tiene 7 cartas en su maso posible
	;Se combinan esas 7 cartas
	;Las posiciones X, Y son los indices 0, 1 respectivamente
	;Las cartas comumitas serian las ABCDE, indices 2, 3, 4, 5, 6
	;Existen 10 combinaciones posibles para 5 elementos diferentes tomados de 3 en 3
	;inicialmente el maso se encuentra representado por 7 cartas
	;[X,Y,A,B,C,D,E]
	;El buffer de las combinaciones esta lleno con cambios de linea
	;Al final el buffer va estar lleno por las 10 posibles combinaciones
	;Con la forma [X,Y,A',B',C',=], el = luego va ser sustituido por el ranking de la combinacion

	xor ebx,ebx; ebx = 0

	;GENERA [X,Y,A,B,C] = 0
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+0*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+0*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+0*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+0*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+0*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+0*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+0*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+0*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+0*11+8], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+0*11+9], ah; Copia la carta C tipo al buffer


	;GENERA [X,Y,A,B,D] = 1
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+1*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+1*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+1*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+1*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+1*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+1*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+1*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+1*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+1*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+1*11+9], ah; Copia la carta D al buffer


	;GENERA [X,Y,A,B,E] = 2
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+2*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+2*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+2*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+2*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+2*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+2*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+2*11+6], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+2*11+7], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+2*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+2*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,A,C,D] = 3
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+3*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+3*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+3*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+3*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+3*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+3*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+3*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+3*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+3*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+3*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,A,C,E] = 4
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+4*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+4*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+4*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+4*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+4*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+4*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+4*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+4*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+4*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+4*11+9], ah; Copia la carta E tipo al buffer
	


	;GENERA [X,Y,A,D,E] = 5
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+5*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+5*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+5*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+5*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+0]; Carta A valor
	mov byte[posiblesCombinacionesJugador4+5*11+4], al; Copia la carta A valor al buffer 
	mov ah, byte[cartasComunitarias+1]; Carta A tipo
	mov byte[posiblesCombinacionesJugador4+5*11+5], ah; Copia la carta A tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+5*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+5*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+5*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+5*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,C,D] = 6
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+6*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+6*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+6*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+6*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+6*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+6*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+6*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+6*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+6*11+8], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+6*11+9], ah; Copia la carta D tipo al buffer


	;GENERA [X,Y,B,C,E] = 7
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+7*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+7*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+7*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+7*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+7*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+7*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+7*11+6], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+7*11+7], ah; Copia la carta C tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+7*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+7*11+9], ah; Copia la carta E tipo al buffer


	;GENERA [X,Y,B,D,E] = 8
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+8*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+8*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+8*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+8*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+2]; Carta B valor
	mov byte[posiblesCombinacionesJugador4+8*11+4], al; Copia la carta B valor al buffer 
	mov ah, byte[cartasComunitarias+3]; Carta B tipo
	mov byte[posiblesCombinacionesJugador4+8*11+5], ah; Copia la carta B tipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+8*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+8*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+8*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+8*11+9], ah; Copia la carta E tipo al buffer



	;GENERA [X,Y,C,D,E] = 9
	mov al, byte[jugador4+1]; Carta X valor
	mov byte[posiblesCombinacionesJugador4+9*11+0], al; Copia la carta X valor al buffer 
	mov ah, byte[jugador4+2]; Carta X tipo
	mov byte[posiblesCombinacionesJugador4+9*11+1], ah; Copia la carta X tipo al buffer
	mov al, byte[jugador4+3]; Carta Y valor
	mov byte[posiblesCombinacionesJugador4+9*11+2], al; Copia la carta Y valor al buffer 
	mov ah, byte[jugador4+4]; Carta Y tipo
	mov byte[posiblesCombinacionesJugador4+9*11+3], ah; Copia la carta Y tipo al buffer
	;

	mov al, byte[cartasComunitarias+4]; Carta C valor
	mov byte[posiblesCombinacionesJugador4+9*11+4], al; Copia la carta C valor al buffer 
	mov ah, byte[cartasComunitarias+5]; Carta C tipo
	mov byte[posiblesCombinacionesJugador4+9*11+5], ah; Copia la carta C Ctipo al buffer


	mov al, byte[cartasComunitarias+6]; Carta D valor
	mov byte[posiblesCombinacionesJugador4+9*11+6], al; Copia la carta D valor al buffer 
	mov ah, byte[cartasComunitarias+7]; Carta D tipo
	mov byte[posiblesCombinacionesJugador4+9*11+7], ah; Copia la carta D tipo al buffer


	mov al, byte[cartasComunitarias+8]; Carta E valor
	mov byte[posiblesCombinacionesJugador4+9*11+8], al; Copia la carta E valor al buffer 
	mov ah, byte[cartasComunitarias+9]; Carta E tipo
	mov byte[posiblesCombinacionesJugador4+9*11+9], ah; Copia la carta E tipo al buffer

	popad
	ret



;In:    ecx=address where the input gets stored
;		edx=max length of input string
;RgsA:  none
scan:                   
                         
	push    ebx
	push    eax
	mov     eax,3   ;syscall code for read
	mov     ebx,0   ;std input (terminal)
	int     0x80
	pop     eax
	pop     ebx
	ret


mostrarMensajeInicial:
	pushad

	  ;ecx=address of the string
	  ;edx=length of string
	mov ecx, mensajeBienvenida
	mov edx, largoMensajeBienvenida
	call print 	

	popad
	ret


imprimirNombre:
	pushad

	  ;ecx=address of the string
	  ;edx=length of string
	mov ecx, bufferNombre
	mov edx, sizeBufferNombre
	call print 	

	popad
	ret

imprimirNuevaLinea:
	pushad

	mov ecx, nuevaLinea
	mov edx, 1
	call print 	

	popad
	ret

mostrarPeticionNombre:
	pushad

	mov ecx, mensajeDigiteNombre
	mov edx, largoMensajeDigiteNombre
	call print 	

	popad
	ret


;Copia un string de terminacion nula, de una ubicacion de origen
;a una ubicacion de destino
;antes de llamar al procedimiento, de debe asegurar que el operando 
;de destino sea lo suficiente grande como para poder almacenar 
;la cadena que se va copiar
;EAX debe contener la logitud de la cadena a copiar
;ESI debe tener el puntero de la Cadena de Origen
;EDI debe tener el puntero de la Cadena de Destino


copiarString:
	pushad
	mov ecx, eax; Contador para rep
	;inc ecx; incrementa 1 por el byte de cambio de linea (IMPORTANTE)
	cld; direccion: avance
	rep movsb
	popad
	ret

cicloVerificarCombinacionesJugador1:
	pushad


	xor ecx, ecx

	.obtenerRankingJugador1:

		mov eax, sizeMano
		mov esi, posiblesCombinacionesJugador1
		add esi, ecx
		mov edi, mano
		call copiarString

		push ecx
		call clasificacionJugadas
		pop ecx

		mov ah, byte[mano+10]; Combinacion n, se actualiza el ranking

		mov byte[posiblesCombinacionesJugador1+ecx+10], ah; Copia el resultado del ranking al buffer

		add ecx, 11

		cmp ecx, 11*10
		jb .obtenerRankingJugador1


	; mov ecx, posiblesCombinacionesJugador1
	; mov edx, sizeBufferCombinaciones
	; call print

	popad
	ret 
	
obtenerMejorJugadaJugador1:
	pushad

;EAX debe contener la logitud de la cadena a copiar
;ESI debe tener el puntero de la Cadena de Origen
;EDI debe tener el puntero de la Cadena de Destino

	;Se copia la primer jugada al maso con la mejor jugada
	mov eax, largoMejorMano
	mov esi, posiblesCombinacionesJugador1
	;add esi, ecx
	mov edi, mejorManoJugador1
	call copiarString

	xor ecx, ecx
	add ecx, 21
	.obtenerMejorManoJugador1:
		
	 	cmp ecx, 109
	 	ja .salirobtenerMejorJugadaJugador1

	 	mov al, byte[mejorManoJugador1+10]; Ranking anterior
	 	mov ah, byte[posiblesCombinacionesJugador1+ecx]; Nuevo ranking
	 	cmp al, ah
	 	jb .continuarCicloObtenerMejorManoJugador1; Si el ranking anterior es MENOR se mantiene como la mejor jugada


	 	.actualizarMejorJugadaJugador1:
	 		;Se copia la primer jugada al maso con la mejor jugada
	 		mov eax, largoMejorMano
	 		sub ecx, 10
	 		mov esi, posiblesCombinacionesJugador1
	 		add esi, ecx
	 		mov edi, mejorManoJugador1
	 		call copiarString
	 		add ecx, 10

	 	.continuarCicloObtenerMejorManoJugador1:
	 		add ecx, 11
	 		jmp .obtenerMejorManoJugador1

;::::::::::

	.salirobtenerMejorJugadaJugador1:
		popad
		ret


;:::::::::::::::::::::::::::
;JUGADOR 2
;:::::::::::::::::::::::::::

cicloVerificarCombinacionesJugador2:
	pushad


	xor ecx, ecx

	.obtenerRankingJugador2:

		mov eax, sizeMano
		mov esi, posiblesCombinacionesJugador2
		add esi, ecx
		mov edi, mano
		call copiarString

		push ecx
		call clasificacionJugadas
		pop ecx

		mov ah, byte[mano+10]; Combinacion n, se actualiza el ranking

		mov byte[posiblesCombinacionesJugador2+ecx+10], ah; Copia el resultado del ranking al buffer

		add ecx, 11

		cmp ecx, 11*10
		jb .obtenerRankingJugador2


	; mov ecx, posiblesCombinacionesJugador2
	; mov edx, sizeBufferCombinaciones
	; call print

	popad
	ret 
	
obtenerMejorJugadaJugador2:
	pushad

;EAX debe contener la logitud de la cadena a copiar
;ESI debe tener el puntero de la Cadena de Origen
;EDI debe tener el puntero de la Cadena de Destino

	;Se copia la primer jugada al maso con la mejor jugada
	mov eax, largoMejorMano
	mov esi, posiblesCombinacionesJugador2
	;add esi, ecx
	mov edi, mejorManoJugador2
	call copiarString

	xor ecx, ecx
	add ecx, 21
	.obtenerMejorManoJugador2:
		
	 	cmp ecx, 109
	 	ja .salirobtenerMejorJugadaJugador2

	 	mov al, byte[mejorManoJugador2+10]; Ranking anterior
	 	mov ah, byte[posiblesCombinacionesJugador2+ecx]; Nuevo ranking
	 	cmp al, ah
	 	jb .continuarCicloObtenerMejorManoJugador2; Si el ranking anterior es MENOR se mantiene como la mejor jugada


	 	.actualizarMejorJugadaJugador2:
	 		;Se copia la primer jugada al maso con la mejor jugada
	 		mov eax, largoMejorMano
	 		sub ecx, 10
	 		mov esi, posiblesCombinacionesJugador2
	 		add esi, ecx
	 		mov edi, mejorManoJugador2
	 		call copiarString
	 		add ecx, 10

	 	.continuarCicloObtenerMejorManoJugador2:
	 		add ecx, 11
	 		jmp .obtenerMejorManoJugador2

;::::::::::

	.salirobtenerMejorJugadaJugador2:
		popad
		ret


;:::::::::::::::::::::::::::
;JUGADOR 3
;:::::::::::::::::::::::::::

cicloVerificarCombinacionesJugador3:
	pushad


	xor ecx, ecx

	.obtenerRankingJugador3:

		mov eax, sizeMano
		mov esi, posiblesCombinacionesJugador3
		add esi, ecx
		mov edi, mano
		call copiarString

		push ecx
		call clasificacionJugadas
		pop ecx

		mov ah, byte[mano+10]; Combinacion n, se actualiza el ranking

		mov byte[posiblesCombinacionesJugador3+ecx+10], ah; Copia el resultado del ranking al buffer

		add ecx, 11

		cmp ecx, 11*10
		jb .obtenerRankingJugador3


	; mov ecx, posiblesCombinacionesJugador3
	; mov edx, sizeBufferCombinaciones
	; call print

	popad
	ret 
	
obtenerMejorJugadaJugador3:
	pushad

;EAX debe contener la logitud de la cadena a copiar
;ESI debe tener el puntero de la Cadena de Origen
;EDI debe tener el puntero de la Cadena de Destino

	;Se copia la primer jugada al maso con la mejor jugada
	mov eax, largoMejorMano
	mov esi, posiblesCombinacionesJugador3
	;add esi, ecx
	mov edi, mejorManoJugador3
	call copiarString

	xor ecx, ecx
	add ecx, 21
	.obtenerMejorManoJugador3:
		
	 	cmp ecx, 109
	 	ja .salirobtenerMejorJugadaJugador3

	 	mov al, byte[mejorManoJugador3+10]; Ranking anterior
	 	mov ah, byte[posiblesCombinacionesJugador3+ecx]; Nuevo ranking
	 	cmp al, ah
	 	jb .continuarCicloObtenerMejorManoJugador3; Si el ranking anterior es MENOR se mantiene como la mejor jugada


	 	.actualizarMejorJugadaJugador3:
	 		;Se copia la primer jugada al maso con la mejor jugada
	 		mov eax, largoMejorMano
	 		sub ecx, 10
	 		mov esi, posiblesCombinacionesJugador3
	 		add esi, ecx
	 		mov edi, mejorManoJugador3
	 		call copiarString
	 		add ecx, 10

	 	.continuarCicloObtenerMejorManoJugador3:
	 		add ecx, 11
	 		jmp .obtenerMejorManoJugador3

;::::::::::

	.salirobtenerMejorJugadaJugador3:
		popad
		ret


;:::::::::::::::::::::::::::
;JUGADOR 4
;:::::::::::::::::::::::::::

cicloVerificarCombinacionesJugador4:
	pushad


	xor ecx, ecx

	.obtenerRankingJugador4:

		mov eax, sizeMano
		mov esi, posiblesCombinacionesJugador4
		add esi, ecx
		mov edi, mano
		call copiarString

		push ecx
		call clasificacionJugadas
		pop ecx

		mov ah, byte[mano+10]; Combinacion n, se actualiza el ranking

		mov byte[posiblesCombinacionesJugador4+ecx+10], ah; Copia el resultado del ranking al buffer

		add ecx, 11

		cmp ecx, 11*10
		jb .obtenerRankingJugador4


	; mov ecx, posiblesCombinacionesJugador4
	; mov edx, sizeBufferCombinaciones
	; call print

	popad
	ret 
	
obtenerMejorJugadaJugador4:
	pushad

	; EAX debe contener la logitud de la cadena a copiar
	; ESI debe tener el puntero de la Cadena de Origen
	; EDI debe tener el puntero de la Cadena de Destino

	;Se copia la primer jugada al maso con la mejor jugada
	mov eax, largoMejorMano
	mov esi, posiblesCombinacionesJugador4
	;add esi, ecx
	mov edi, mejorManoJugador4
	call copiarString

	xor ecx, ecx
	add ecx, 21
	.obtenerMejorManoJugador4:
		
	 	cmp ecx, 109
	 	ja .salirobtenerMejorJugadaJugador4

	 	mov al, byte[mejorManoJugador4+10]; Ranking anterior
	 	mov ah, byte[posiblesCombinacionesJugador4+ecx]; Nuevo ranking
	 	cmp al, ah
	 	jb .continuarCicloObtenerMejorManoJugador4; Si el ranking anterior es MENOR se mantiene como la mejor jugada


	 	.actualizarMejorJugadaJugador4:
	 		;Se copia la primer jugada al maso con la mejor jugada
	 		mov eax, largoMejorMano
	 		sub ecx, 10
	 		mov esi, posiblesCombinacionesJugador4
	 		add esi, ecx
	 		mov edi, mejorManoJugador4
	 		call copiarString
	 		add ecx, 10

	 	.continuarCicloObtenerMejorManoJugador4:
	 		add ecx, 11
	 		jmp .obtenerMejorManoJugador4

;::::::::::

	.salirobtenerMejorJugadaJugador4:
		popad
		ret


seleccionarElGanador:

	pushad

	mov byte[jugadorGanador], 0 ;Jugador 1 es el actual ganador

	;EAX debe contener la logitud de la cadena a copiar
	;ESI debe tener el puntero de la Cadena de Origen
	;EDI debe tener el puntero de la Cadena de Destino

	;Se copia la primer jugada al maso con la mejor jugada
	lea ecx, [manosDeJugadores+0]; saca la mano del jugador 1 compararla con la siguiente
	mov ecx, [ecx]
	mov eax, largoMejorMano
	mov esi, ecx

	mov edi, mejorMano
	call copiarString

	mov byte[mejorMano+10], 78; Coloca una N en el indice de la mejor jugada

	mov ebx, 0; i = 0
	.forBuscarGanador: 

		;Codigo a realizar
		mov al, byte[banderasJugadoresActivos+ebx]; se obtiene la bandera del jugador actual
		cmp al, 0; Compara si el jugador esta activo
		je .continuarForBuscarGanador; si no esta activo lo omite

		;Si esta activo lo utiliza
		lea ecx, [manosDeJugadores+4*ebx]; saca la mano siguiente a comparar
		mov ecx, [ecx]
		mov al, [ecx+10]; Se obtien el puntaje del ranking del jugador i
		mov ah, byte[mejorMano+10]
		cmp al, ah; Compara la mejor mano con la siguiente mano
		jb .copiarMejorMano; Si la mejor mano actual sigue siendo la mejor, se continua buscando
		je .desempatarJugadas
		ja .continuarForBuscarGanador

		.desempatarJugadas:
			jmp .copiarMejorMano

		;Si la siguiente mano es la la mejor se actualiza la variable mejor mano
		.copiarMejorMano:
			mov eax, largoMejorMano
			mov esi, ecx
			mov edi, mejorMano
			call copiarString

		.actualizarMejorJugador:
			mov byte[jugadorGanador], bl
			add byte[jugadorGanador], 1


		.continuarForBuscarGanador:
			inc ebx
			cmp ebx, cantidadJugadores
			jb .forBuscarGanador




	.salirBuscarGanador:
		popad 
		ret

	; mov byte[jugadorGanador], 1 ;Jugador 1 es el actual ganador

	; mov al, mejorManoJugador1+10
	; mov ah, mejorManoJugador2+10

	; cmp al, ah
	; ja .elMejorJugadorEsEl2
	; jmp .continuarConJugador2y3

	; .elMejorJugadorEsEl2:
	; 	mov byte[jugadorGanador], 2; Jugador 2 es el actual ganador

	; .continuarConJugador2y3:
	; 	mov al, mejorManoJugador2+10
	; 	mov ah, mejorManoJugador3+10

	; mejorManoJugador1
	; mejorManoJugador2
	; mejorManoJugador3
	; mejorManoJugador4


	popad 
	ret
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;verificacion INICIO PROCEDIMIENTOS
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;mano : db "QC7P5P3P0PN",0AH
;manoLen equ $-mano
;utliza mano como buffer para definir la jugada
clasificacionJugadas:

     push ecx
     push ebx

     xor ecx,ecx   ; recorre la mano
     xor ebx,ebx 
     
     
     mov ecx,1     ; ahi se encuentra el símbolo de la primera carta

     mov bl, byte[mano + ecx]   ;mueve el primer símbolo a bl
     
     
    .revisoSimbolo:
    
	add ecx,2  ; simbolo de la segunda carta de la mano.
    
        cmp ecx,9
        ja .listo
        

        cmp  byte[mano + ecx],bl
        je .revisoSimbolo
	jne .sonDiferentes

    .sonDiferentes:
    
        pop ebx
        pop ecx
        
 ;        mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaDiferentes
	; mov edx, EtiquetaDiferentesLen
	; int 80h
	
	call Poquer
	cmp byte[mano+10],"N"
	jne .encontreJugada
	
	call Escalera
	cmp byte[mano+10],"N"
	jne .encontreJugada
	
	call jugadasConTrio
	cmp byte[mano+10],"N"
	jne .encontreJugada
	
	call jugadasConPares
	
	cmp byte[mano+10],"N"
	jne .encontreJugada
	
	mov byte[mano+10],39H  ;significa que no posee ninguna de las jugadas anteriores, asi que lo que se debe buscar es su carta más alta
	ret
	
	.encontreJugada:
	
	    ret
     
     .listo:         			; entrará si todos los símbolos son Iguales
				    
	pop ebx
        pop ecx
        
 ;        mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaIguales
	; mov edx, EtiquetaIgualesLen
	; int 80h
	
	call EscaleraReal    		;busca escalera real en la mano
	cmp byte[mano+10],"N"
	jne .jugadaEncontrada
	
	call EscaleraDeColor		;busca escalera color en la mano
	
	cmp byte[mano+10],"N"		; si entra a está parte ya la mano cumple con la jugada *color*
	je .esColor
	ret
	
	.jugadaEncontrada:
	
	   ret
	   
	.esColor:
	mov byte[mano + 10], 34H
	
	ret
	
	
	
	

;*******************************************************************************************************************************************

EscaleraReal:
;cartas del 10-14
  
	push ecx ; recorrera la mano de 5 cartas
	push ebx
	push esi
	
	xor esi,esi
	xor ecx,ecx
	xor ebx,ebx

	mov ebx,10   
	
	busqueda:
	  cmp ecx,8
	  ja .noEsta
	  
	  cmp ebx,14
	  ja  .salir
	
	  call asignacion     ;me devolverá en esi el número que posee la primera posición
	
	
	  cmp esi,ebx
	  je .sigueBusqueda   ; si hay un 10 voy a buscar del 11-14
	  jne .sig            ; si no voy a buscarlo a las demas posiciones.
	
	.sigueBusqueda:
	  
	  xor ecx,ecx
	  inc ebx
	  jmp busqueda
	
	   
        .sig:
        
          add ecx,2
          jmp busqueda
          
        .noEsta:
	    pop esi
	    pop ebx
	    pop ecx

             
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaNoEscaleraReal
	    ; mov edx, EtiquetaNoEscaleraRealLen
	    ; int 80h
	    ret
        
	    
        .salir:
        
            mov byte[mano + 10], 30H
            pop esi
            pop ebx
            pop ecx

             
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaEscaleraReal
	    ; mov edx, EtiquetaEscaleraRealLen
	    ; int 80h
            
            ret

;**********************************************************************************************************************************************
EscaleraDeColor:
;Cartas consecutivas del mismo palo

      push ecx
      push eax
      push edx
      push esi
      
      xor ecx,ecx ;para recorrer la mano 
      xor eax,eax
      xor edx,edx
      xor esi,esi
      
      call menor  ; este procedimiento traerá en eax el menor de la mano.
      mov edx, eax
      add edx,4
      
      inc eax
      
      .busqueda:
	  cmp ecx,8
	  ja .noEsta
	  
	  cmp eax,edx
	  ja  .salir
	
	  call asignacion     ;me devolverá en esi el número que posee la primera posición
	
	
	  cmp esi,eax
	  je .sigueBusqueda   ; si hay un 10 voy a buscar del 11-14
	  jne .sig            ; si no voy a buscarlo a las demas posiciones.
	
	.sigueBusqueda:
	  
	  xor ecx,ecx
	  inc eax
	  jmp .busqueda
	
	   
        .sig:
        
          add ecx,2
          jmp .busqueda
          
        .noEsta:
            pop esi
	    pop edx
	    pop eax
	    pop ecx
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaNOEscaleraColor
	    ; mov edx, EtiquetaNOEscaleraColorLen
	    ; int 80h
	    
	    ret
        
	    
        .salir:
        
            mov byte[mano + 10], 31H
            pop esi
            pop edx
	    pop eax
	    pop ecx
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaEscaleraColor
	    ; mov edx, EtiquetaEscaleraColorLen
	    ; int 80h
            
            ret
;**************************************************************************************************************************************************
Poquer:
; 4 cartas iguales en su valores

    
    push ebx
    push ecx
    push edx
    push esi
    
    xor ecx,ecx
    xor ebx,ebx
    xor eax,eax   
    xor edx,edx		    ;lleva el numero de iguales que encuentra en el proceso
    xor esi,esi             
    
    .inicio:
   
    mov bl,byte[mano + esi] ; primer numero de la mano. ESI manejará los valores del bl
    mov ecx,esi              ; para empezar comparación con número de la siguiente carta de la mano
    add ecx,2
    
    .comparacion:
    
    
      cmp edx,3              ;edx contiene la cantidad de iguales
      je .encontrado         ;encontré 4 iguales
      
      
      cmp ecx,8              ; final de la mano
      ja .reinicio
      
      cmp byte[mano + ecx], bl
      je  .cartasIguales
      jne .sigCarta
      
      .sigCarta:
	  add ecx,2
	  jmp .comparacion
      
      .cartasIguales:       ;lleva el conteo de las cartas iguales que encuentra en la mano
      
	inc edx
	add ecx,2           ;siguiente número
	jmp .comparacion
    
    
     .noEncontrado:         ;no encontro un trio,debe ir a buscar en sig jugadas
	pop esi
	pop edx
	pop ecx
	pop ebx
	
	
	; mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaNOPoquer
	; mov edx, EtiquetaNOPoquerLen
	; int 80h
            
	
	ret
	
     .reinicio:
     
        xor edx,edx
	xor ebx,ebx
	xor ecx,ecx
	
	add esi,2
	
        cmp esi,4
        je .noEncontrado
        
	jmp .inicio
      
     .encontrado:  
     
	mov byte[mano+10],32H
	pop esi
	pop edx
	pop ecx
	pop ebx
	

	; mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaPoquer
	; mov edx, EtiquetaPoquerLen
	; int 80h
            
	
	ret
;**********************************************************************************************************************************************
Escalera:
;Cartas consecutivas de palo distinto

      push ecx
      push eax
      push edx
      push esi
      
      xor ecx,ecx ;para recorrer la mano 
      xor eax,eax
      xor edx,edx
      xor esi,esi
      
      call menor  ; este procedimiento traerá en eax el menor de la mano.
      mov edx, eax
      add edx,4
      
      inc eax
      
      .busqueda:
	  cmp ecx,8
	  ja .noEsta
	  
	  cmp eax,edx
	  ja  .salir
	
	  call asignacion     ;me devolverá en esi el número que posee la primera posición
	
	
	  cmp esi,eax
	  je .sigueBusqueda   ; si hay un 10 voy a buscar del 11-14
	  jne .sig            ; si no voy a buscarlo a las demas posiciones.
	
	.sigueBusqueda:
	  
	  xor ecx,ecx
	  inc eax
	  jmp .busqueda
	
	   
        .sig:
        
          add ecx,2
          jmp .busqueda
          
        .noEsta:
            pop esi
	    pop edx
	    pop eax
	    pop ecx
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaNOEscalera
	    ; mov edx, EtiquetaNOEscaleraLen
	    ; int 80h
	    
	    ret
        
	    
        .salir:
        
            mov byte[mano + 10], 35H
            pop esi
            pop edx
	    pop eax
	    pop ecx
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaEscalera
	    ; mov edx, EtiquetaEscaleraLen
	    ; int 80h
            
            ret
	                 
			                       
;**********************************************************************************************************************************************	
	  
jugadasConTrio:
; el procedimiento revisa si la mano posee un trío o un Full
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    xor ecx,ecx
    xor ebx,ebx
    xor eax,eax   
    xor edx,edx		    ;lleva el numero de iguales que encuentra en el proceso
    xor esi,esi             
    
    .inicio:
   
    mov bl,byte[mano + esi] ; primer numero de la mano. ESI manejará los valores del bl
    mov ecx,esi              ; para empezar comparación con número de la siguiente carta de la mano
    add ecx,2
    
    .comparacion:
    
    
      cmp edx,2              ;edx contiene la cantidad de iguales
      je .encontrado         ;encontré 3 iguales
      
      
      cmp ecx,8              ; final de la mano
      ja .reinicio
      
      cmp byte[mano + ecx], bl
      je  .cartasIguales
      jne .sigCarta
      
      .sigCarta:
	  add ecx,2
	  jmp .comparacion
      
      .cartasIguales:       ;lleva el conteo de las cartas iguales que encuentra en la mano
      
	inc edx
	add ecx,2           ;siguiente número
	jmp .comparacion
    
    
     .noEncontrado:         ;no encontro un trio,debe ir a buscar en sig jugadas
	
	pop esi
	pop edx
	pop ecx
	pop ebx
	pop eax
	
	; mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaNOTrio
	; mov edx, EtiquetaNOTrioLen
	; int 80h
	    
	ret
	
     .reinicio:
     
        xor edx,edx
	xor ebx,ebx
	xor ecx,ecx
	
	add esi,2
	
        cmp esi,6
        je .noEncontrado
        
	jmp .inicio
      
     .encontrado:                              ; encontro 3 cartas iguales
	mov al , bl                            ; eax tendrá el número que se encuentra 3 veces en la mano
        jmp .segundaRevision                   ; ya que irá a ver si las 2 que quedan son iguales (full)
			                       ; si es asi se añade a la posicion 10 un 4 si NO un 7
			                       
			                       
			                       
     .segundaRevision:
     
     
         xor ecx,ecx
         xor ebx,ebx
         
         .busq:
         
	  cmp byte[mano+ ecx], al
	  je .incremento
	  jne .movimiento
         
         .incremento:
         
	    add ecx,2
	    
	    jmp .busq
	 .movimiento:
	     mov bl,byte[mano+ecx]
	     
	     .otroIgual:
	        
	        add ecx,2
	        cmp ecx,8
	        ja .noPares
	        
	        cmp bl,byte[mano+ecx]
	        jne .otroIgual
	        je .pares
	        
	  .pares:     ;significa que la jugada es un full
	  
	    mov byte[mano+10],33H
	    pop esi
	    pop edx
	    pop ecx
	    pop ebx
	    pop eax
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaFull
	    ; mov edx, EtiquetaFullLen
	    ; int 80h
	   
	    ret
	    
	      
	      
	  .noPares:  ;significa que la jugada es un trío
	    mov byte[mano+10],36H
	    pop esi
	    pop edx
	    pop ecx
	    pop ebx
	    pop eax
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaTrio
	    ; mov edx, EtiquetaTrioLen
	    ; int 80h
	    
	    ret
	  
;***************************************************************************************************************************************************************

jugadasConPares:
; el procedimiento revisa si la mano posee una pareja o una doble pareja
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    xor ecx,ecx
    xor ebx,ebx
    xor eax,eax   
    xor edx,edx		    ;lleva el numero de iguales que encuentra en el proceso
    xor esi,esi             
    
    .inicio:
   
    mov bl,byte[mano + esi]  ; primer numero de la mano. ESI manejará los valores del bl
    mov ecx,esi              ; para empezar comparación con número de la siguiente carta de la mano
    add ecx,2
    
    .comparacion:
    
    
      cmp edx,1              ;edx contiene la cantidad de iguales
      je .encontrado         ;encontré 1 igual
      
      
      cmp ecx,8              ; final de la mano
      ja .reinicio
      
      cmp byte[mano + ecx], bl
      je  .cartasIguales
      jne .sigCarta
      
      .sigCarta:
	  add ecx,2
	  jmp .comparacion
      
      .cartasIguales:       ;lleva el conteo de las cartas iguales que encuentra en la mano
      
	inc edx
	add ecx,2           ;siguiente número
	jmp .comparacion
    
    
     .noEncontrado:         ;no encontro parejas,debe ir a buscar en sig jugadas
	pop esi
	pop edx
	pop ecx
	pop ebx
	pop eax
	
	
	; mov eax, 4
	; mov ebx, 1
	; mov ecx, EtiquetaNOPareja
	; mov edx, EtiquetaNOParejaLen
	; int 80h
	ret
	
     .reinicio:
     
        xor edx,edx
	xor ebx,ebx
	xor ecx,ecx
	
	add esi,2
	
        cmp esi,8
        je .noEncontrado
        
	jmp .inicio
      
     .encontrado:                              ; encontro 2 cartas iguales
	mov al , bl                            ; eax tendrá el número que se encuentra 2 veces en la mano
        jmp .segundaRevision                   ; ya que irá a ver si entre las otras hay otra pareja
			                       ; si es asi la jugada es doble pareja, si no es pareja
		

      .segundaRevision:
      
         xor ecx,ecx
         xor ebx,ebx
         xor esi,esi
         
         .busq:
         
	  cmp byte[mano+ ecx], al
	  je .incremento
	  cmp byte[mano+ecx],bl
	  je .incremento
	  jne .movimiento
         
         .incremento:
         
	    add ecx,2
	    jmp .busq
	    
	 .movimiento:
	     mov bl,byte[mano+ecx]  ;carta que vere si tiene pareja en la mano
	      
	     .otroIgual:            ;buscara otro igual al bl en la mano
	        
	        add ecx,2
	        
	        cmp ecx,8           ;solo 2 busquedas posibles más
	        ja .otraCarta
	        
	        cmp bl,byte[mano+ecx]
	        jne .otroIgual
	        je .pares
	        
	        .otraCarta:
	        
	         cmp esi,1
	         je .noPares
	         
	         inc esi
	         xor ecx,ecx
	        
	         
	         jmp .busq
	         
	         
	    .pares:     ;significa que la jugada es un doble Pareja
	  
	    mov byte[mano+10],37H
	    pop esi
	    pop edx
	    pop ecx
	    pop ebx
	    pop eax
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaDobleP
	    ; mov edx, EtiquetaDoblePLen
	    ; int 80h
	    ret
	    
	      
	      
	  .noPares:  ;significa que la jugada es una pareja
	    mov byte[mano+10],38H
	    pop esi
	    pop edx
	    pop ecx
	    pop ebx
	    pop eax
	    
	    ; mov eax, 4
	    ; mov ebx, 1
	    ; mov ecx, EtiquetaPareja
	    ; mov edx, EtiquetaParejaLen
	    ; int 80h
	    
	    ret
	        
;***********************************************************************************************************************************************************






imprimirMano:
        pushad

        mov eax, 4
	mov ebx, 1
	mov ecx, mano
	mov edx, manoLen
	int 80h
	
	popad
	ret


menor:
      
      push ecx
      xor ecx,ecx
      
      call asignacion
      mov eax,esi  ;eax almacenará el número menor de la mano
      
      .ciclo:  ;recorrera toda la mano en busca del menor
      
	  add ecx,2
	  cmp ecx,8
	  ja .listo
	  

	  call asignacion
	  call .menor
	  jmp .ciclo
	  
	  
	  .listo:
	    pop ecx
	    ret
	  
	  
      .menor:
	  cmp eax,esi
	  ja .cambie
	  ret
	  
	  .cambie:
	  
	  mov eax,esi
	  ret
	    
	
	

asignacion:

    
    
    
    xor esi,esi

   
    
    cmp byte[mano +ecx], "2"
    je .asignoDos
    
    cmp byte[mano +ecx], "3"
    je .asignoTres
    
    cmp byte[mano +ecx], "4"
    je .asignoCuatro
    
    cmp byte[mano +ecx], "5"
    je .asignoCinco
    
    cmp byte[mano +ecx], "6"
    je .asignoSeis
    
    cmp byte[mano +ecx], "7"
    je .asignoSiete
    
    cmp byte[mano +ecx], "8"
    je .asignoOcho
    
    cmp byte[mano +ecx], "9"
    je .asignoNueve
    
    cmp byte[mano +ecx], "0"
    je .asignoDiez
    
    cmp byte[mano +ecx], "J"
    je .asignoOnce
    
    cmp byte[mano +ecx], "Q"
    je .asignoDoce
    
    cmp byte[mano +ecx], "K"
    je .asignoTrece
    
    cmp byte[mano +ecx], "A"
    je .asignoCatorce
    


    
    .asignoDos:
        mov esi,2
	
        ret
        
     .asignoTres:
        mov esi,3
	
	ret
	
     .asignoCuatro:
        mov esi,4
	
	ret
	
     .asignoCinco:
        mov esi,5
	
	ret
	
      .asignoSeis:
        mov esi,6
	
	ret
	
      .asignoSiete:
        mov esi,7
	
	ret
	
      .asignoOcho:
        mov esi,8
	
	ret
      .asignoNueve:
        mov esi,9
	
	ret
	
      .asignoDiez:
        mov esi,10
	
	ret
      .asignoOnce:
        mov esi,11
	
	ret
	
      .asignoDoce:
        mov esi,12
	
	ret
      .asignoTrece:
        mov esi,13
	
	ret
	
      .asignoCatorce:
        mov esi,14
	
	ret

;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;verificacion FIN
;::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

;:::::::::::::::::::::::::
;RONDAS
;:::::::::::::::::::::::::
aumentarRonda:
	pushad
	mov ecx, [numeroRondaActual]
	inc ecx
	mov [numeroRondaActual], ecx
	popad
	ret


;:::::::::::::
seOmiteJugador:
	pushad
	mov ecx, mensajeSeOmite
	mov edx, largoMensajeSeOmite
	call print
	popad
	ret


mostrarTotalActivos:
		;Muestra cuantos jugadores activos hay al final de la ronda INICIO
		pushad

		mov ebx, 0
		mov eax, 0; Activos iniciales

		.forSumarActivos:; Se ejecuta la cantidad de jugadores -2
			xor ecx, ecx
			mov cl, byte[banderasJugadoresActivos+ebx]
			cmp ecx, 1
			je .sumarUnoAActivos
			jmp .continuarForSumarActivos

			.sumarUnoAActivos:
				inc eax

			.continuarForSumarActivos:
				inc ebx

			cmp ebx, cantidadJugadores 
		jb .forSumarActivos



		pushad

			mov ecx, mensajeJugadoresActivos
			mov edx, largoMensajeJugadoresActivos
			call print

		popad



		mov esi, eax
		call itoa
		mov ecx, number
		mov edx, numberLen
		call print


		popad

		ret


diminuirActivos:
	pushad


	mov eax, [totalJugadoresActivos]
	dec eax
	mov [totalJugadoresActivos], eax

	call mostrarTotalActivos

	popad
	ret


imprimirCartasComunales:
	pushad
	mov eax, 4
	mov ebx, 1
	mov ecx, cartasComunitariasEtiqueta
	mov edx, cartasComunitariasEtiquetaLen
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, cartasComunitarias
	mov edx, cartasComunitariaslen
	int 80h
	popad
	ret


mostrarMejorManoJugador1:
	pushad

	mov ecx, mensajeMejorManoJugador1
	mov edx, mensajeMejorManoJugador1Len
	call print

	mov ecx, mejorManoJugador1
	mov edx, largoMejorMano
	call print
	call imprimirNuevaLinea
	popad
	ret


mostrarMejorManoJugador2:
	pushad

	mov ecx, mensajeMejorManoJugador2
	mov edx, mensajeMejorManoJugador2Len
	call print


	mov ecx, mejorManoJugador2
	mov edx, largoMejorMano
	call print
	call imprimirNuevaLinea
	popad
	ret


mostrarMejorManoJugador3:
	pushad

	mov ecx, mensajeMejorManoJugador3
	mov edx, mensajeMejorManoJugador3Len
	call print

	mov ecx, mejorManoJugador3
	mov edx, largoMejorMano
	call print
	call imprimirNuevaLinea
	popad
	ret

mostrarMejorManoJugador4:
	pushad

	mov ecx, mensajeMejorManoJugador4
	mov edx, mensajeMejorManoJugador4Len
	call print

	mov ecx, mejorManoJugador4
	mov edx, largoMejorMano
	call print
	call imprimirNuevaLinea
	popad
	ret


mostrarMejoresManos:
	pushad
	call mostrarMejorManoJugador1
	call mostrarMejorManoJugador2
	call mostrarMejorManoJugador3
	call mostrarMejorManoJugador4
	popad
	ret

mostrarMejorManoGanadora:
	pushad

	; mov ecx, mensajeGanador
	; mov edx, mensajeGanadorLen
	; call print

	call imprimirNuevaLinea

	; call imprimirNuevaLinea

	xor eax, eax
	mov al, byte[jugadorGanador]

	cmp eax, 1
	je .ganadorJugador1
	cmp eax, 2
	je .ganadorJugador2
	cmp eax, 3
	je .ganadorJugador3
	cmp eax, 4
	je .ganadorJugador4

	.ganadorJugador1:
		mov ecx, GanadorJugador1
		mov edx, GanadorJugador1Len
		call print
		jmp .salir

	.ganadorJugador2:
		mov ecx, GanadorJugador2
		mov edx, GanadorJugador2Len
		call print
		jmp .salir


	.ganadorJugador3:
		mov ecx, GanadorJugador3
		mov edx, GanadorJugador3Len
		call print
		jmp .salir


	.ganadorJugador4:
		mov ecx, GanadorJugador4
		mov edx, GanadorJugador4Len
		call print
		jmp .salir

	.salir:
		mov ecx, mejorMano
		mov edx, largoMejorMano
		call print

		call imprimirNuevaLinea

		popad
		ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DESEMPATE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Desempatar:
      push ecx
      push eax   
      push ebx    
      
      xor ecx,ecx			;para recorrer las manos
        			

   
      cmp byte[mano1 + 10], 31H   	;Si las 2 son Escalera de color
      je .DesempatePorMasAlta
      
      cmp byte[mano1+10],35H 		;Si las 2 son Escalera
      je .DesempatePorMasAlta
      
      cmp byte[mano1+10],39H  		;Si las 2 son carta Alta
      je .DesempatePorMasAlta
      
      cmp byte[mano1+10],38H 		;si las 2 son Pareja
      je .DesempatePorPareja
      
      cmp byte[mano1 +10],36H          ; si las 2 son trio
      je .DesempatarTrio
      
      cmp byte[mano1+10],34H           ; si las 2 son color 
      je .DesempatePorMasAlta
      
      .DesempatePorMasAlta:    		;Será general, tanto para las del mismo palo como para las de diferente
      
	  xor eax,eax			;tendrá el mayor de mano1
	  xor ebx,ebx         		;tendrá el mayor de mano2
	  xor ecx,ecx
	  
	  call calculaMayorMano1
	  xor ecx,ecx
	  call calculaMayorMano2
	  
	 
	  
	  cmp eax,ebx
	  ja .ganador1
	  jb .ganador2
	  je .ganador1
	 

	  
	    
	
	.DesempatePorPareja:     ;buscará la pareja,para sacar la mayor entre las 2 manos recibidas
	    
	    lea edx, [mano1]
	    mov [punteroMano], edx
	    
	    mov esi, [punteroMano]
	    
	    call EncuentroPareja
	    call asignacionANumero
	    mov ebx,esi
	    
	    lea edx, [mano2]
	    mov [punteroMano], edx
	    
	    mov esi, [punteroMano]
	    
	    call EncuentroPareja
	    call asignacionANumero
	    mov eax,esi
	    
	    cmp ebx,eax
	    ja .ganador1
	    jb .ganador2
	    je .DesempatePorMasAlta
	    
	
	.DesempatarTrio:
	
	    lea edx, [mano1]
	    mov [punteroMano], edx
	    
	    mov esi, [punteroMano]
	    
	    call EncuentroTrio
	    call asignacionANumero
	    mov ebx,esi
	    
	    lea edx, [mano2]
	    mov [punteroMano], edx
	    
	    mov esi, [punteroMano]
	    
	    call EncuentroTrio
	    call asignacionANumero
	    mov eax,esi
	    
	    cmp ebx,eax
	    ja .ganador1
	    jb .ganador2
	    je .DesempatePorMasAlta
	
	    
	   
	.ganador1:
	    pop ebx
	    pop eax
	    pop ecx
	    
	    mov eax, 4
	    mov ebx, 1
	    mov ecx, EtiquetaGanador
	    mov edx, EtiquetaGanadorLen
	    int 80h
	    ret
	    
	 .ganador2:
	   
	    pop ebx
	    pop eax
	    pop ecx
	    
	    mov eax, 4
	    mov ebx, 1
	    mov ecx, EtiquetaGanador2
	    mov edx, EtiquetaGanador2Len
	    int 80h
	    ret
	    
	    
	    
	  
	    
	  
;******************************************************************************************************************************************************
;Funciones secundarias

	  
calculaMayorMano1:
;Obtiene el mayor de la primera mano

  push edx
  
  
  xor eax,eax
  xor edx,edx
  
  lea edx, [mano1]
  mov [punteroMano], edx
  
  
  call asignacionGeneral	;Deja en ESI el resultado de la asignación
  mov eax,esi  			;EAX almacenará el número mayor de la mano1
      
      .ciclo:  			;Recorre la mano en busca del mayor
      
	  add ecx,2
	  cmp ecx,8
	  ja .listo
	  

	  call asignacionGeneral
	  jmp  .mayor
	  
	  
	  
	  .listo:
	 
	    pop edx
	    ret
	  
	  
      .mayor:
	  cmp eax,esi
	  je .cambie
	  jmp .ciclo
	  
	  .cambie:
	  
	  mov eax,esi
	  jmp .ciclo
	    


calculaMayorMano2:

;Obtiene el mayor de la Segunda mano
  
  push edx
 
  
  xor ebx,ebx
  xor edx,edx
 
  
  lea edx, [mano2]
  mov [punteroMano], edx
 
  
  call asignacionGeneral		;Deja en ESI el resultado de la asignación
  mov ebx,esi  			;EBX almacenará el número mayor de la mano2
      
      .ciclo:  			;Recorre la mano en busca del mayor
      
	  add ecx,2
	  cmp ecx,8
	  ja .listo
	  

	  call asignacionGeneral
	  jmp  .mayor
	  
	  
	  
	  .listo:
	 
	    pop edx
	    ret
	  
	  
      .mayor:

	  cmp ebx,esi
	  je .cambie
	  jmp .ciclo
	  
	  .cambie:
	  
	  mov ebx,esi
	  jmp .ciclo
	  
	    
EncuentroPareja:
          
          push ebx
          
	  xor ecx,ecx
	  xor ebx,ebx
	  xor eax,eax   
	  xor edx,edx		    ;lleva el numero de iguales que encuentra en el proceso
	  xor edi,edi             
	  
	  .inicio:
	
	  mov bl,byte[esi]  ; primer numero de la mano. EDI manejará los valores del bl
	  mov ecx,edi              ; para empezar comparación con número de la siguiente carta de la mano
	  add ecx,2
	  
	  .comparacion:
	  
	  
	    cmp edx,1              ;edx contiene la cantidad de iguales
	    je .encontrado         ;encontré 1 igual
	    
	    
	    cmp ecx,8              ; final de la mano
	    ja .reinicio
	    
	    cmp byte[esi], bl
	    je  .cartasIguales
	    jne .sigCarta
	    
	    .sigCarta:
		add ecx,2
		add esi,ecx
		jmp .comparacion
	    
	    .cartasIguales:       ;lleva el conteo de las cartas iguales que encuentra en la mano
	    
	      inc edx
	      add ecx,2           ;siguiente número
	      jmp .comparacion
	  
	  
	  .reinicio:
	  
	      xor edx,edx
	      xor ebx,ebx
	      xor ecx,ecx
	      
	      add edi,2
	      add esi,edi
	      
	      jmp .inicio
	    
	  .encontrado: ; encontro la pareja
	      mov al , bl
	      pop ebx
	      ret                                    ; eax tendrá la carta que se encuentra 2 veces
	                                      
EncuentroTrio:

     
    push ebx
   
    
    xor ecx,ecx
    xor ebx,ebx
    xor eax,eax   
    xor edx,edx		    ;lleva el numero de iguales que encuentra en el proceso
    xor edi,edi             
    
    .inicio:
   
    mov bl,byte[mano + edi]  ; primer numero de la mano. ESI manejará los valores del bl
    mov ecx,edi              ; para empezar comparación con número de la siguiente carta de la mano
    add ecx,2
    
    .comparacion:
    
    
      cmp edx,2              ;edx contiene la cantidad de iguales
      je .encontrado         ;encontré 3 iguales
      
      
      cmp ecx,8              ; final de la mano
      ja .reinicio
      
      cmp byte[mano + ecx], bl
      je  .cartasIguales
      jne .sigCarta
      
      .sigCarta:
	  add ecx,2
	  jmp .comparacion
      
      .cartasIguales:       ;lleva el conteo de las cartas iguales que encuentra en la mano
      
	inc edx
	add ecx,2           ;siguiente número
	jmp .comparacion
    
    
     .reinicio:
     
        xor edx,edx
	xor ebx,ebx
	xor ecx,ecx
	
	add edi,2
	
	jmp .inicio
      
     .encontrado:                              ; encontro 3 cartas iguales
	mov al , bl                           ; eax tendrá el número que se encuentra 3 veces en la mano
	pop ebx
	ret


asignacionGeneral:

    push edi
    xor esi,esi
    xor edi,edi

    mov edi, [punteroMano]
    add edi, ecx
    
    cmp byte[edi], "2"
    je .asignoDos
    
    cmp byte[edi], "3"
    je .asignoTres
    
    cmp byte[edi], "4"
    je .asignoCuatro
    
    cmp byte[edi], "5"
    je .asignoCinco
    
    cmp byte[edi], "6"
    je .asignoSeis
    
    cmp byte[edi], "7"
    je .asignoSiete
    
    cmp byte[edi], "8"
    je .asignoOcho
    
    cmp byte[edi], "9"
    je .asignoNueve
    
    cmp byte[edi], "0"
    je .asignoDiez
    
    cmp byte[edi], "J"
    je .asignoOnce
    
    cmp byte[edi], "Q"
    je .asignoDoce
    
    cmp byte[edi], "K"
    je .asignoTrece
    
    cmp byte[edi], "A"
    je .asignoCatorce
    


    
    .asignoDos:
        mov esi,2
	pop edi
        ret
        
     .asignoTres:
        mov esi,3
	pop edi
	ret
	
     .asignoCuatro:
        mov esi,4
	pop edi
	ret
	
     .asignoCinco:
        mov esi,5
	pop edi
	ret
	
      .asignoSeis:
        mov esi,6
	pop edi
	ret
	
      .asignoSiete:
        mov esi,7
	pop edi
	ret
	
      .asignoOcho:
        mov esi,8
	pop edi
	ret
      .asignoNueve:
        mov esi,9
	pop edi
	ret
	
      .asignoDiez:
        mov esi,10
	pop edi
	ret
      .asignoOnce:
        mov esi,11
	pop edi
	ret
	
      .asignoDoce:
        mov esi,12
	pop edi
	ret
      .asignoTrece:
        mov esi,13
	pop edi
	ret
	
      .asignoCatorce:
        mov esi,14
	pop edi
	ret	  

	

asignacionANumero:

    
    
    
    xor esi,esi

   
    
    cmp al , "2"
    je .asignoDos
    
    cmp al, "3"
    je .asignoTres
    
    cmp al, "4"
    je .asignoCuatro
    
    cmp al, "5"
    je .asignoCinco
    
    cmp al, "6"
    je .asignoSeis
    
    cmp al, "7"
    je .asignoSiete
    
    cmp al, "8"
    je .asignoOcho
    
    cmp al, "9"
    je .asignoNueve
    
    cmp al, "0"
    je .asignoDiez
    
    cmp al, "J"
    je .asignoOnce
    
    cmp al, "Q"
    je .asignoDoce
    
    cmp al, "K"
    je .asignoTrece
    
    cmp al, "A"
    je .asignoCatorce
    


    
    .asignoDos:
        mov esi,2
	
        ret
        
     .asignoTres:
        mov esi,3
	
	ret
	
     .asignoCuatro:
        mov esi,4
	
	ret
	
     .asignoCinco:
        mov esi,5
	
	ret
	
      .asignoSeis:
        mov esi,6
	
	ret
	
      .asignoSiete:
        mov esi,7
	
	ret
	
      .asignoOcho:
        mov esi,8
	
	ret
      .asignoNueve:
        mov esi,9
	
	ret
	
      .asignoDiez:
        mov esi,10
	
	ret
      .asignoOnce:
        mov esi,11
	
	ret
	
      .asignoDoce:
        mov esi,12
	
	ret
      .asignoTrece:
        mov esi,13
	
	ret
	
      .asignoCatorce:
        mov esi,14
	
	ret
