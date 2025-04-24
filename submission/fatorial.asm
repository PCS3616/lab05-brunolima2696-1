SC FACT
HM =0

@ /100
N    K =0
RES  K =1
CTE1 K =1

@ /200
FACT K =0
LOOP LD N
     JZ END
     ML RES
     MM RES
     LD N
     SB CTE1
     MM N
     JP LOOP

END  RS FACT
