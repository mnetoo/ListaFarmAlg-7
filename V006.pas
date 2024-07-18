program V006;

type
   vetor = array [1..200] of real;

var
   v: vetor;
   x: real;
   tam, cod: integer;

function busca(var v: vetor; x: real; tam: integer):integer;
var
   i: integer;
begin
   
   busca:= 0;
      for i:= 1 to tam do
         if (v[i] = x) then
            busca:= i;

end;

procedure imprime(var v: vetor; tam: integer);
var
   i: integer;
begin

   if (tam = 0) then
      write('vazio')
   else begin
      for i:= 1 to tam do
         write(v[i]:0:1, ' ');
   end;
   writeln;
   
end;

procedure insere(var v: vetor; var tam: integer);
var 
   i:integer;
begin

   read(x);
   i:= tam;

      if ((tam + 1) <= 200) then begin
         while (v[i] > x) and (i <> 0) do begin
            v[i + 1]:= v[i];
            i:= i + 1;
         end;
         v[i + 1]:= x;
         tam:= tam + 1;
      end
      else
         writeln('erro');

end;

procedure remove(var v: vetor; var tam: integer);
var 
   i,posi:integer;
begin 

   read(x);
      posi:= busca(v, x, tam);

         if (posi <> 0) then begin
            for i:= 1 to (tam - 1) do
               v[i]:= v[i + 1];
            tam:= tam - 1;
            imprime(v, tam);
         end
         else
            writeln('erro');

end;

begin

   tam:= 0;

   repeat begin

      read(cod);

         if (cod = 1) then
            insere(v, tam)
         else if (cod = 2) then
            remove(v, tam)
         else if (cod = 0) then
            imprime(v, tam);
      
   end;
   until (cod = 0);
end.
