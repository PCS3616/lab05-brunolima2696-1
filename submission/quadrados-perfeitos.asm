MAIN    SC QUADRADOS
        HM /0000

@ /300
QUADRADOS   K/0000
LOOP    LD VAR
        SB CTE
        JZ END
        LD VAR
        ML DOIS
        AD UM
        AD RES
        MM RES
POS     MM /102
        LD POS
        AD DOIS
        MM POS
        LD VAR
        AD UM
        MM VAR
        JP LOOP
END     RS QUADRADOS

@ /400
UM      K =1
DOIS    K =2
RES     K =0
VAR     K =0
CTE     K =64
