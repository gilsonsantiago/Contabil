
{****************************************************************************
 *  Funções de conecao de banco de dados MSACESS a partir de um arquivo .INI
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 ********************************************************}

unit DBconfiguracao;

interface

uses sysutils, inifiles, modulo;

 {***********************************************
 *  Publicação das funcoes da unit
 ********************************************************}

 Function lerNomeBanco : string;
 Function lerEndereco  : string;
 Function Conectar     : boolean;

implementation

{***********************************************
 *  Ler arquivo de configuraçao de DB
 ********************************************************}

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

{***********************************************
 *  Ler arquivo de endereco do host do DB
 ********************************************************}

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


 {***********************************************
  * Faz a coneção com o banco de dados cadastrado
  *  no arquivo de Configuração
  ********************************************************}

 Function Conectar : boolean;
 var
   bancodados : string;
 begin

   bancodados := '';
   bancodados := lerendereco() + '/DB' + lernomebanco();

   if dmodulo.Conexao.Connected = true then
      begin
        dmodulo.Conexao.Connected := false;

        dmodulo.Conexao.Provider := 'Microsoft.Jet.OLEDB.4.0';
        dmodulo.Conexao.ConnectionString :=  bancodados;

        dmodulo.Conexao.Connected := true
        
      end
    else
        result := true;

 end;


end.
