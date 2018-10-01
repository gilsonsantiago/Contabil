
{****************************************************************************
 *  Modulo de Criptografia e descriptografia
 *  Autor: Gilson Santiago
 *  Atualizada em Data:  29 de setembro de 2018
 ********************************************************}

unit Codifica;

interface

uses sysutils;


{****************************************************************************
 *  Publica��o das fun��es
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 ********************************************************}


 function Encripta (Texto: String):String;
 function Decripta (Texto: String):String;

implementation


{****************************************************************************
 *  Fun��o de encripta��o de string
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 ********************************************************}

 function Encripta(Texto: String):String;
 var
  r : string;
  i : integer;
 begin
 
  For i := 1 to Length(texto) do
  
   r := r + chr(Ord(Texto[i]) + i + 115);
   
   result:= r;
   
 end;
 
 
 {****************************************************************************
 *  Fun��o de decripta��o de string
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 ********************************************************}

 function Decripta(Texto: String):String;
 var
  w : string;
  i : integer;
 begin
 
  FOR i := 1 TO Length(texto) do
  
    w := w + chr( Ord(texto[i]) - i - 115 );
	
    result:= w;
	
 end;
 
end.
 