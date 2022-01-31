unit UExtenso;

interface

    function ExtCem( pCem:String ):String;
    function Extenso( pValor:Extended ):String;
    function StrZero(Numero : Real ; qtdezeros,Decimais: integer): string;
    function iif(Condicao:Boolean; retornaTrue, retornaFalse:Variant):Variant;
    function StripDouble( pString:String ):String;

implementation

uses SysUtils;

function iif(Condicao:Boolean; retornaTrue, retornaFalse:Variant):Variant;
begin
  if Condicao then
     Result := retornaTrue
  else
     Result := retornaFalse;
end;

function StrZero(Numero : Real ; qtdezeros,Decimais: integer): string;
var tamanho,y : integer;
   xdeci,xsig : string;
begin
  Str(Numero:qtdezeros:Decimais, xdeci);
  xdeci := trimright(trimleft(xdeci));
  tamanho := length(xdeci);
  xsig := '';
  for y := 1 to (qtdezeros-tamanho) do
     xsig := xsig + '0';
  Result := xsig+xdeci;
end;

function Extenso( pValor:Extended ):String;
   Const
      aCifra : Array[1..6,1..2] of String = (('TRILHÃO,','TRILHOES,'),
                                             ('BILHAO,' ,'BILHÕES,' ),
                                             ('MILHAO,' ,'MILHÕES,' ),
                                             ('MIL,'     ,'MIL,'     ),
                                             ('    '     ,'   '      ),
                                             ('CENTAVO' ,'CENTAVOS'));
   Var
      tStr,tExtenso,tSubs:String;
      tX,tCentavos:Integer;
   begin
      tSubs := ' ';
      tExtenso := ' ';
      tStr := StrZero(pValor,18,2);  {funcao disponível neste livro}
      tCentavos := StrToInt( Copy(tStr,17,2) );
      if pValor > 0 then
      begin
         if tCentavos > 0 then
           tExtenso := ExtCem( StrZero( tCentavos,3,0 )) + aCifra[6,Trunc(iif(tCentavos =1,1,2))];
         if trunc( pValor ) > 0 then
           tExtenso := iif(trunc( pValor ) = 1,'REAL',' REAIS')+iif(tCentavos > 0, ' E   ','')+tExtenso;
         for tX := 5 Downto 1 do
         begin
            tSubs := Copy(tStr,(tX*3)-2,3);
            if StrToInt( tSubs ) > 0 then
              tExtenso := ExtCem( tSubs ) + aCifra[tX,Trunc(iif(StrToInt( tSubs )=1,1,2))]+'   '+tExtenso;
         end;
      end;
      Result := StripDouble( tExtenso );
   end;

function ExtCem( pCem:String ):String;
   Const
      aCent:Array[1..9] of string =
         ('CENTO','DUZENTOS','TREZENTOS','QUATROCENTOS','QUINHENTOS',
         'SEISCENTOS','SETECENTOS','OITOCENTOS','NOVECENTOS');
      aVint:Array[1..9] of string =  ('ONZE','DOZE','TREZE','QUATORZE',
         'QUINZE','DEZESSEIS','DEZESSETE','DEZOITO','DEZENOVE');
      aDez :Array[1..9] of string = ('DEZ','VINTE','TRINTA','QUARENTA',
         'CINQUENTA','SESSENTA','SETENTA','OITENTA','NOVENTA');
      aUnit:Array[1..9] of string = ('UM','DOIS','TREIS','QUATRO',
         'CINCO','SEIS','SETE','OITO','NOVE');
   Var
      aVal:Array[1..3] of integer;
      text : String;
   begin
      text := '';
      aVal[1] := StrToInt( Copy( pCem,1,1) );
      aVal[2] := StrToInt( Copy( pCem,2,1) );
      aVal[3] := StrToInt( Copy( pCem,3,1) );
      if StrToInt(pCem) > 0 then
      begin
         if StrToInt(pCem) = 100 then
            text := 'CEM'
         else begin
            if aVal[1] > 0 then
              text := aCent[aVal[1]]+iif((aVal[2]+aVal[3]) > 0,' E ',' ');
            if (aVal[2] = 1)  and (aVal[3] > 0) then
               text := text + ' ' + aVint[Aval[3]]
            else begin
               if aVal[2] > 0 then
                text := text+' '+aDez[aVal[2]]+iif(aVal[3]>0, ' E ',' ');
               text := text+iif(aVal[3]>0,' '+aUnit[aVal[3]],' ');
            end;
         end;
      end;
      text := text + ' ';
      Result := text;
   end;

   function StripDouble( pString:String ):String;
   begin
        while pos('  ',pString) > 0 do Delete(pString,pos('  ',pString),1);
         Result := pString;
   end;

end.
