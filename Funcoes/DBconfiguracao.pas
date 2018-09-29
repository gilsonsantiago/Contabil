
{****************************************************************************
 *  Funções de conecao de banco de dados MSACESS a partir de um arquivo .INI
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 ********************************************************}

unit DBconfiguracao;

interface

uses sysutils, inifiles, Messages, Dialogs, modulo;

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

     arquivo:= tinifile.Create('c:\aplicacao\contabil\Configura.ini');  // sera modificado posteriomente

     caminho     := arquivo.ReadString('configuraDB', 'database', '' );

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

     arquivo:= tinifile.Create('c:\aplicacao\contabil\Configura.ini'); // sera modificado posteriomente

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
  *
  *  Atributos a serem usados na ConnectionString
  *
  *  Provider=SQLOLEDB.1;
  *  Persist Security Info=False;
  *  User ID=%s;
  *  Password=%s;
  *  Data Source=%s;
  *  Use Procedure for Prepare=1;
  *  Auto Translate=True;
  *  Packet Size=4096;
  *  Use Encryption for Data=False;
  *  Tag with column collation when possible=False'
  *  Remote Server=ServerRef';
  *  Data Source=%s;
  *	 Use Procedure for Prepare=1;
  *	 
  *
  ********************************************************}
  

 Function Conectar : boolean;
 var
   bancodados : string;

 begin

   bancodados := '';

   bancodados := dbconfiguracao.lerEndereco() + '\DB\' +
                 dbconfiguracao.lerNomeBanco();

   dmodulo.Conexao.Connected := false;

   dmodulo.Conexao.LoginPrompt := false;

   dmodulo.Conexao.Provider := 'Microsoft.Jet.OLEDB.4.0';

   dmodulo.Conexao.ConnectionString :=  bancodados;

   dmodulo.Conexao.Connected := true ;


   if dmodulo.Conexao.Connected = true then

      begin

        showmessage (bancodados);

        result := true;

      end

     else

        result := false;
      
 end;


end.
