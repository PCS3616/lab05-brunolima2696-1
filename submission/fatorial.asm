; Programa principal
MAIN        LV /0001            ; AC = 1
            MM N                ; Salva em N (0x100)
            MM RES              ; Inicia resultado com 1 (em 0x102)
            SC FAT_SUB          ; Chama sub-rotina fatorial
            HM                  ; Encerra

; Sub-rotina de fatorial
FAT_SUB     LD N                ; Carrega N
            JZ FIM_FAT          ; Se N == 0, fim
            ML RES              ; AC = AC * RES
            MM RES              ; Atualiza resultado
            LD N                ; Carrega N
            SB UM               ; N = N - 1
            MM N                ; Atualiza N
            JP FAT_SUB          ; Volta para reiniciar loop
FIM_FAT     RS FAT_SUB          ; Retorna

; Constantes e variáveis
@ /100
N           K /0000             ; Argumento do fatorial

@ /102
RES         K /0000             ; Resultado do fatorial

UM          K /0001             ; Constante 1
