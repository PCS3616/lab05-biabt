@ /000
       SC FUNC    ;0000 A200
       HM /00E    ;0002 C00E

@ /200
FUNC    JP /000   ;0200 0000 ; subrotina fatorial
        LD N      ;0202 8100
        JZ /212   ;0204 1212 ; jump se n == 0
        ML FACT   ;0206 6102 ; n! * n
        MM FACT   ;0208 9102
        LD N      ;020A 8100
        SB UM     ;020C 5106 ; n - 1
        MM N      ;020E 9100
        JP /202   ;0210 0202 ; retorna o loop de n != 0
        RS /200   ;0212 B200

@ /100
N       K /005   ;0100 0005 ; n
FACT    K /001   ;0102 0001 ; n!
UM      K =1     ;0106 0001 ; 1