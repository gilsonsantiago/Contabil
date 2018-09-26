unit DBconfiguracao;

interface

uses sysutils, inifiles;

 Function lerNomeBanco : string;
 Function lerEndereco  : string;

implementation
    
// Ler arquivo de configuraçao de DB

Function lerNomeBanco  : string;
var
 arquivo : tinifile;
 caminho, enderecohost : string;
begin
   ARQUIVO := tinifile.Create('');

   try
     arquivo:= tinifile.Create('Configura.ini');

     caminho     := arquivo.ReadString('configura', 'database', '' );

     result := caminho;

     arquivo.Free;

   except
   
     arquivo.Free;

     exit

   end;
end;

// Ler arquivo de endereco do host do DB

Function lerEndereco  : string;
var
 arquivo : tinifile;
 caminho, enderecohost : string;
begin
   ARQUIVO := tinifile.Create('');

   try
     arquivo:= tinifile.Create('Configura.ini');

     enderecohost:= arquivo.ReadString('enderecohost', 'caminhohost', '' );

     result := enderecohost;

     arquivo.Free;

   except

     arquivo.Free;

     exit

   end;
end;

end.
