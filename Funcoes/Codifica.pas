unit Codifica;

interface

uses sysutils;

 function Encripta (Texto: String):String;
 function Decripta (Texto: String):String;

implementation

 // Fun��o de encripta��o de string
 function Encripta(Texto: String):String;
 var
  r : string;
  i : integer;
 begin
  For i := 1 to Length(texto) do
   r := r + chr(Ord(Texto[i]) + i + 115);
    result:= r;
 end;

  // Fun��o de decripta��o de string
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
 