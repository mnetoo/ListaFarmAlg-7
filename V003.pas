program V003;

type vetor = array [1..200] of integer;

var
    v: vetor;
    n: integer;

procedure lervetor (var w: vetor; var tam: integer);
var
    i: integer;
begin
    
    read(tam);
        for i:= 1 to tam do
            read(w[i]);

end;

function ordenado (var w: vetor; var tam: integer):boolean;
var
    i: integer;
begin

    ordenado:= true;

        for i:= 1 to (tam-1) do
            if (w[i] > w[i+1]) then
                ordenado:= false;   

end;

procedure imprimevetor (var w: vetor; var tam: integer);
var
    i: integer;
begin

    for i:= tam downto 1 do 
        write(w[i], ' ');

end;


begin

    lervetor (v, n);

    if (n = 0) then begin
        write('vetor vazio');
        exit;
    end;

    if ordenado (v, n) then
        writeln('sim')
    else
        writeln('nao');

    imprimevetor (v, n);

end.
