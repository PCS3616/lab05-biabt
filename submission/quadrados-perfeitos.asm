@ /000
            SC FUNC ; chama a subrotina FUNC
            HM /00E ; termina o programa

@ /200
FUNC        JP /000
            LD STOP
            JZ STOP_FUNC
            SC ADDR_ESCR
            LD INDEX
            ML TWO
            AD ONE
            AD SOMA
            MM SOMA
            LD STOP
            SB ONE
            MM STOP
            LD INDEX
            AD ONE
            MM INDEX
            LD SOMA
ESCREVE     K /0000
            JP /202
STOP_FUNC   RS /200

@ /250
ADDR_ESCR   JP /000
            LD INDEX
            ML TWO
            AD CEM
            MM ESCREVE
            RS /250


@ /300
SOMA        K /000
INDEX       K /000
STOP        K =63
TWO         K /002
ONE         K /001
CEM         K /9102  

@ /100
INICIO      K /000 ; inicio dos quadrados