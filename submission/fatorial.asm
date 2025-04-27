MAIN        SC FAT_SUB        
            HM /0000           


@ /200
FAT_SUB     K /0000
LOOP        LD N               
            JZ FIM_FAT         

            ML RES             
            MM RES

            LD N
            SB UM              
            MM N

            JP LOOP            
FIM_FAT     RS FAT_SUB


@ /100
N           K /0000            
RES         K /0001            
UM          K /0001            
