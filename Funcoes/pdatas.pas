{****************************************************************************
 *  Modulo de Manipulação de Datas;
 *  Adaptação e Acrescimo de funcções por Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}



unit pdatas;

interface

{****************************************************************************
 *  Publicações de funções
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}


Function dataextenso ( data: tDatetime): string;
Function diaextenso  ( data: tDatetime): string;
Function mesextenso  ( data: tDatetime): string;
Function anoextenso  ( data: tDatetime): string;
Function datatexto   ( data: tDatetime): string;
Function mesano      ( data: tDatetime): string;
Function datanumero  ( data1:  string) : string;
FUNCTION datastrnum  ( data: tdatetime): string;
function valida_data ( data1:  string) : boolean;

implementation

uses sysutils, numescrito;


{****************************************************************************
 *  Funçao que escreve por extenso a data passada por parametro
 *  Formato :  xx de mes de xxxx
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function DataExtenso( Data: TDateTime): string;
var Ano, Mes, Dia : Word;
    Mes1 : String;
begin
  // Retorna a data por extenso
  DecodeDate(Data, Ano, Mes, Dia);
  
  Case Mes of
  
    1  : Mes1 := 'Janeiro';
	
    2  : Mes1 := 'Fevereiro';
	
    3  : Mes1 := 'Março';
	
    4  : Mes1 := 'Abril';
	
    5  : Mes1 := 'Maio';
	
    6  : Mes1 := 'Junho';
	
    7  : Mes1 := 'Julho';
	
    8  : Mes1 := 'Agosto';
	
    9  : Mes1 := 'Setembro';
	
    10 : Mes1 := 'Outubro';
	
    11 : Mes1 := 'Novembro';
	
    12 : Mes1 := 'Dezembro';
	
  end;
  
  if (Dia = 1) then
  
    Result := IntToStr(Dia)+'º de '+Mes1+' de '+IntToStr(Ano)
	
  else begin
  
    Result := IntToStr(Dia)+' de '+Mes1+' de '+IntToStr(Ano);
	
  end;

end;

{****************************************************************************
 *  Funçao que escreve por extenso a data passada por parametro
 *  Formato :  20/09/2018  =  vinte de setembro de dois mil e dezoito
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function Datatexto( Data: TDateTime): string;
var Ano, Mes, Dia : Word;
    Mes1 : String;
begin
  // Retorna a data por extenso
  DecodeDate(Data, Ano, Mes, Dia);
  
  Case Mes of
  
    1  : Mes1 := 'Janeiro';
	
    2  : Mes1 := 'Fevereiro';
	
    3  : Mes1 := 'Março';
	
    4  : Mes1 := 'Abril';
	
    5  : Mes1 := 'Maio';
	
    6  : Mes1 := 'Junho';
	
    7  : Mes1 := 'Julho';
	
    8  : Mes1 := 'Agosto';
	
    9  : Mes1 := 'Setembro';
	
    10 : Mes1 := 'Outubro';
	
    11 : Mes1 := 'Novembro';
	
    12 : Mes1 := 'Dezembro';
	
  end;

  Result := diaextenso (data)+ ' de '+Mes1+' de ' + anoextenso(data);


end;

{****************************************************************************
 *  Funçao que escreve por extenso a data passada por parametro
 *  Formato :  20/09/2018 = 20092018
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function mesano( Data: TDateTime): string;
var
Ano, Mes, Dia : Word;
mes1 : string;
begin
  // Retorna a data por extenso
  
  DecodeDate(Data, Ano, Mes, Dia);

  if (mes < 10) then
  
     mes1 := '0' + inttostr(mes)
	 
    else
	
     mes1 := inttostr(mes);

  if (Dia < 10) then
  
    Result := '0' + IntToStr(Dia) + mes1 + IntToStr(Ano)
	
   else
   
    Result :=  IntToStr(Dia) + mes1 + IntToStr(Ano);

  end;

  
  
{****************************************************************************
 *  Funçao que valida a data
 *  Formato :  
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

FUNCTION datanumero ( data1: string) : string;
begin
  if length(data1) <> 10   then
  
     result := '00000000'
	 
  else
  
    result := copy (data1,1,2) + copy (data1, 4, 2) + copy (data1, 7,4);
	
end;

FUNCTION valida_data ( data1: string) : boolean;
var
  ndia, nmes : integer;
begin
    result := true ;

    ndia := strtoint(copy (data1,1,2));
	
    nmes := strtoint(copy (data1,4,2));

  if nmes > 12 then
  
     result := false
	 
   else
   
    begin

    case nmes of

    1:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;

    2:
      begin
	  
        if ndia > 29 then
		
           result := false;
		   
      end;

    3:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;

    4:
      begin
	  
         if ndia >30 then
		 
            result := false;
			
      end;

    5:
      begin
	  
        if ndia > 31 then
		
            result := false;
			
      end;

    6:
      begin
	  
         if ndia >30 then
		 
            result := false;
			
      end;

    7:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;

    8:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;


    9:
      begin
	  
         if ndia >30 then
		 
            result := false;
			
      end;

    10:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;

    11:
      begin
	  
         if ndia >30 then
		 
            result := false;
			
      end;

    12:
      begin
	  
        if ndia > 31 then
		
           result := false;
		   
      end;

     end  //   case
	 
   end
end;

{****************************************************************************
 *  Funçao que converte tipo data para string  
 *  Formato :  20/09/2018 = 20092018
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

FUNCTION datastrnum ( data: tdatetime) : string;
var
  data1 : string;
begin

  data1 := datetostr(data);
  
  if length(data1) <> 10 then
  
     result := '00000000'
	 
  else
  
    result := copy (data1,1,2) + copy (data1, 4, 2) + copy (data1, 7,4);
	
end;



{****************************************************************************
 *  Funçao que escreve dia por extenso
 *  Formato :  20/09/2018 = vinte
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function Diaextenso( Data: TDateTime): string;
var Ano, Mes, Dia : Word;
    Mes1 : String;
begin
  // Retorna a data por extenso
  DecodeDate(Data, Ano, Mes, Dia);

  Result := escrito(dia) ;


end;



{****************************************************************************
 *  Funçao que escreve por extenso o mes
 *  Formato :  20/09/2018 = setembro
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

function mesExtenso( Data: TDateTime): string;
var Ano, Mes, Dia : Word;
    Mes1 : String;
begin
  // Retorna a data por extenso
  DecodeDate(Data, Ano, Mes, Dia);

  Result := escrito(mes);

end;




{****************************************************************************
 *  Funçao que escreve por extenso o ano 
 *  Formato :  20/09/2018 = dois mil e dezoito
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}
function anoExtenso( Data: TDateTime): string;
var Ano, Mes, Dia : Word;
    Mes1 : String;
begin
  // Retorna a data por extenso
  DecodeDate(Data, Ano, Mes, Dia);

  Result := escrito(ano);

end;
 //--------------------
 


end.   // Fim da Unit
