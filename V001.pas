program V001;

type vetor= array [1..200] of real;
var

    n, i: integer;
    soma_posi, soma_neg: real;
    v: vetor;

function par (x: integer): boolean;
begin

    if  (x mod 2 = 0) then  
        par:= true
    else
        par:= false;

end;

begin

    read (n);
    soma_posi:= 0;
    soma_neg:= 0;

        for i:= 1 to n do
        begin

            read(v[i]);
                if par (i) then begin
                    if (v[i] > 0) then
                        soma_posi:= soma_posi + v[i]
                end
                else
                    if (v[i] < 0) then  
                        soma_neg:= soma_neg + v[i];
        
        end;

    if (n = 0) then
        write('vetor vazio')
    else if (soma_neg = 0) then
        write('divisao por zero')
    else
        write((soma_posi/soma_neg):0:2);

end.
