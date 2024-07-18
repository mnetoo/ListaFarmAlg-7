program lindo;
type vetor = array [1..100] of integer;
var v, d, ig: vetor;

procedure ler_vetor (x: integer; var v: vetor); 
var i: integer;
begin
    for i:= 1 to x do
        read (v[i]);
end; 

function existe (v: integer; var d: vetor; tamd: integer): boolean;
var tem: boolean;
    i: integer;
begin
    i:= 1;
    tem:= false;
    while (i<=tamd) and (not tem) do
    begin
        if d[i] = v then // v= v[i]
            tem:= true;
        i:= i+1;
    end;
    existe:= tem;
end;

procedure distintos (var v: vetor; var d: vetor; var tamd: integer; n: integer);
var i: integer;
begin
    for i:= 1 to n do
        if not existe (v[i], d, tamd) then
        begin
            tamd:= tamd + 1;
            d[tamd]:= v[i];
        end;
        
end;

procedure programa (var v: vetor; var d: vetor; var ig: vetor);
var n, tamd: integer;
    i, j: integer;
begin
    read (n);
    if n=0 then
        write ('vetor vazio')
    else
    begin
        tamd:= 0;
        ler_vetor (n, v);
        distintos (v, d, tamd, n);
        
        if tamd>1 then
            write ('a sequencia tem ', tamd, ' numeros distintos: ')
        else
            write ('a sequencia tem ', tamd, ' numero distinto: ');
        for i:=1 to tamd do
            write (d[i], ' ');
        writeln;
        for i:= 1 to tamd do
            for j:= 1 to n do 
                if d[i] = v[j] then
                    ig[i]:= ig[i]+1;
        
        for i:= 1 to tamd do
            if ig[i]>1 then
                writeln (d[i], ' ocorre ', ig[i], ' vezes')
            else
                writeln (d[i], ' ocorre ', ig[i], ' vez');
    end;

end; 

begin
    programa (v, d, ig);
end.
