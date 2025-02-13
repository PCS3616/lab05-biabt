@ /000
        GD /000
        MM X
        SB SUB
        MM X     ; salva primeiro digito de x

        GD /000  ; captura o espaço

        GD /000
        MM Y
        SB SUB
        MM Y     ; salva primeiro digito de x
        AD X
        MM SOMA
        SC FUNC 
        LD SOMA
        AD SUB
        PD /100
        HM /00E

@ /200
FUNC    JP /000
        LD SOMA
        ML DEC
        DV DEC
        SB A
        JN RETORNO
        LD SOMA
        SB A
        AD DEC
        MM SOMA
RETORNO RS /200


@ /100
X       K =0
Y       K =0
SOMA    K =0
SUB     K /3030
A       K /000A
DEC     K /0100