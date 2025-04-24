; Símbolos exportados
> MAIN
> FAT_SUB
> N
> RES

; Programa principal
MAIN        LV /0001           ; AC ← 1
            MM N               ; Salva 1 em N (valor do fatorial)
            MM RES             ; RES ← 1 (acumulador para o fatorial)
            SC FAT_SUB         ; Chama sub-rotina
            HM                 ; Fim da execução

; Sub-rotina iterativa de fatorial
FAT_SUB     LD N               ; Carrega N
            JZ FIM_FAT         ; Se N == 0, termina

            ML RES             ; RES = RES * N
            MM RES

            LD N
            SB UM              ; N = N - 1
            MM N

            JP FAT_SUB         ; Volta ao início da sub-rotina
FIM_FAT     RS FAT_SUB

; Variáveis e constantes
@ /100
N           K /0000            ; Argumento (n)

@ /102
RES         K /0000            ; Resultado (n!)

UM          K /0001            ; Constante 1
