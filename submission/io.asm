MAIN         GD /000
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
             SB CTEA2
             JN END
             LD RES
             SB CTEA1
             AD CEM
             MM RES
             JP END
END          LD RES
             AD ASCII            
             PD /100
             HM =0

@ /200
ASCII    K /3030
MIL      K /1000
CEM      K /0100
CTEA1    K /000A
CTEA2    K /A000

X        K =0
Y        K =0
RES      K =0
