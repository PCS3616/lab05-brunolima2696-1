; Programa principal
SC FAT_SUB         ; Chama sub-rotina
HM /0000           ; Fim da execução

; Sub-rotina iterativa de fatorial
@ /200
FAT_SUB     K /0000
            LD N               ; Carrega N
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

RES         K /0000            ; Resultado (n!)

UM          K /0001            ; Constante 1
