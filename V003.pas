program V003;

type vetor = array [1..200] of real;
var
    v: vetor;
    n: integer;

procedure ler_vetor (var w: vetor; var tam: integer);
var
    i: integer;

begin
    
    read(tam);
        for i:= 1 to tam do
            read(w[i]);

end;

procedure imprime_vetor (var w: vetor; var tam: integer);
var
    i: integer;
begin

    for i:= tam downto 1 do
        write(w[i]:0:0, ' ');

end;

function ordenado (var w: vetor; var tam: integer): boolean;
var
    i: integer;
begin
    
    ordenado:= true;

        for i:= 1 to (tam - 1) do 

            if (w[i] > w[i + 1]) then 
                ordenado:= false;

end;

begin

    ler_vetor(v, n);
    
    if ordenado (v, n) and (n <> 0) then
        writeln('sim')
    else begin
        if (n = 0) then 
            write('vetor vazio')
        else
            writeln('nao');
    
    end;

    imprime_vetor (v, n);

end.
