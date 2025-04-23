; Programa principal
MAIN        LD UM               ; AC = 1
            MM RES              ; RES = 1
            SC FAT_SUB          ; Chama sub-rotina fatorial
            HM                  ; Halt

; Sub-rotina de fatorial iterativo
FAT_SUB     K=0
            LD N                ; Carrega N
            JZ FIM_FAT          ; Se N == 0, fim
            ML RES              ; AC = AC * RES
            MM RES              ; RES ← AC
            LD N
            SB UM               ; N = N - 1
            MM N
            JP FAT_SUB          ; Volta para repetir
FIM_FAT     RS FAT_SUB

; Constantes e variáveis
@ /0100
N           K /0000             ; Endereço do argumento (inicializado externamente)

@ /0102
RES         K /0000             ; Endereço do resultado

UM          K /0001             ; Constante 1
