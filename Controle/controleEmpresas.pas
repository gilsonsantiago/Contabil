 {****************************************************************************
 *  Controle de Empresas
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  14 de outubro de 2018
 ********************************************************}


unit controleEmpresas;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls,
  ExtCtrls, modulo, empresas, pdatas;


  function  consultaEmpresa  ( nomeempresa : string)  : boolean;
  function  gravarEmpresa    ( empe : Tempresa ) : boolean;
  function  alteracaoEmpresa ( empe : tempresa) : boolean;
  function  exclusaoEmpresa  ( idempe : integer) : boolean;


implementation


function  consultaEmpresa ( nomeempresa : string)  : boolean;
begin

 if (nomeempresa = '')  then

   begin

      dmodulo.qCadEmpresa.close;

      dmodulo.qCadEmpresa.sql.clear;

      dmodulo.qCadEmpresa.sql.add('SELECT * FROM Empresa ');

      dmodulo.qCadEmpresa.open;

	  result := true;

   end

  else

   begin

     dmodulo.qCadEmpresa.close;

      dmodulo.qCadEmpresa.sql.clear;

      dmodulo.qCadEmpresa.sql.add('SELECT * FROM Empresa WHERE nome = :nnome ');

      dmodulo.qCadEmpresa.Parameters.ParamByName('nnome').value := nomeempresa;

      dmodulo.qCadEmpresa.open;

	  result := true;

   end;
   
   result := false;


end;



{****************************************************************************
 *  Gravar os dados do Ente
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  14 de outubro de 2018
 ********************************************************}

function  gravarEmpresa   ( empe : Tempresa ) : boolean;
begin

   try

     dmodulo.ExecutaSQLc.CommandText := 'insert into empresa (nome,  ' +
                                        'endereco, ' +
                                        'cidade,' + 
                                        'cnpj) ' +
                                        'VALUES (:nnome, ' + 
										':nendereco,   ' +
										':ncidade,   ' +
                                        ':ncnpj) ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nnome').value := empe.nome;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nendereco').value := empe.endereco;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('ncidade').value := empe.cidade;
	 
	 dmodulo.ExecutaSQLc.Parameters.ParamByName('ncnpj').value := empe.cnpj;
	  
	 dmodulo.ExecutaSQLc.execute;

     result := true;

   except

      result := false;

   end;

end;



{****************************************************************************
 *  Alterar os dados do Ente
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  14 de outubro de 2018
 ********************************************************}

function  alteracaoEmpresa ( empe : tempresa) : boolean;
begin
  
   try

     dmodulo.ExecutaSQLc.CommandText := 'UPDATE Empresa SET nome = :nnome, ' + 
	                                            'endereco = :nendereco, '+
                                                'cidade = :ncidade,' + 
												'cnpj = :ncnpj where idempresa = :nidempresa ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nnome').value := empe.nome;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nendereco').value := empe.endereco;
	 
	 dmodulo.ExecutaSQLc.Parameters.ParamByName('ncidade').value := empe.cidade;
	 
	 dmodulo.ExecutaSQLc.Parameters.ParamByName('ncnpj').value := empe.cnpj;
	
     dmodulo.ExecutaSQLc.Parameters.ParamByName('nidempresa').value := empe.idempresa;

     dmodulo.ExecutaSQLc.execute;

     result := true;

   except

      result := false;

   end;

end;



{****************************************************************************
 *  Deletar dados do Ente
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  14 de outubro de 2018
 ********************************************************}

function  exclusaoEmpresa ( idempe : integer) : boolean;
begin
  
   try

     dmodulo.ExecutaSQLc.CommandText := 'DELETE * FROM empresa WHERE idempresa = :nidempresa ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nidempresa').value := idempe;

     dmodulo.ExecutaSQLc.execute;

     result := true;

   except

      result := false;

   end;

end;


end.
