MAIN         K /0000
             GD /000
             SB ASCII            
             MM X
             GD /000
             GD /000
             SB ASCII            
             MM Y
             LD Y
             AD X
             MM RES
             ML MIL
             SB A000
             JN END
             LD RES
             SB 000A
             AD CEM
             MM RES
END          LD RES
             AD ASCII            
             PD /100
             HM =0

@ /200
ASCII    K /3030
MIL      K /1000
CEM      K /0100
000A     K /000A
A000     K /A000

X        K =0
Y        K =0
RES      K =0
