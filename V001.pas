program V001;

type
    vetor = array [1..200] of real;

var
    n, i: integer;
    v: vetor;
    numerador, denominador: real;
    
    

begin

    read(n);

    if (n = 0) then begin
        write('vetor vazio');
        exit;
    end;

        for i:= 1 to n do
            read(v[i]);

        numerador:= 0;
        denominador:= 0;

            for i:= 1 to n do
                if (i mod  2= 0) and (v[i]> 0) then
                    numerador:= numerador + v[i]
                else if (i mod 2 = 1) and (v[i] < 0) then
                    denominador:= denominador + v[i];

    if (denominador = 0) then
        write('divisao por zero')
    else
        write((numerador/denominador):0:2);

end.
