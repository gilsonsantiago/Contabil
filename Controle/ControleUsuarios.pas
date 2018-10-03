
{****************************************************************************
 *  Model de Controle de Usuarios
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

unit ControleUsuarios;


interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls,
  ExtCtrls, modulo, pdatas, usuarios;

 {****************************************************************************
 *  Publicação das funções
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************} 

function  autenticarusuario      ( usu : tusuarios) : integer;
function  consultaUsuarios       ( idusuario : integer): boolean;
function  gravarUsuario          ( usu : tusuarios) : boolean;
function  alterarUsuario         ( usu : tusuarios) : boolean;
function  excluirUsuario         ( idusu : integer) : boolean;
function  consultaLoginUsuarios  ( login : string)  : integer;



implementation

{****************************************************************************
 *  Autenticação do Usuários.
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function autenticarusuario ( usu : tusuarios) : integer;

begin

  try

     dmodulo.QUsuarios.Close;

     dmodulo.QUsuarios.SQL.Clear;

     dmodulo.QUsuarios.SQL.Add('SELECT * FROM usuarios WHERE usuario = :nusuario and senha = :nsenha ');

     dmodulo.QUsuarios.Parameters.ParamByName('nusuario').Value := usu.usuario;

     dmodulo.QUsuarios.Parameters.ParamByName('nsenha').value   := usu.senha;

     dmodulo.QUsuarios.Open;
      
     result := (dmodulo.QUsuarios.RecordCount);

  except
     
	 result := 0;
	  
  end;  

end;

{****************************************************************************
 *  Consultar Login
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function consultaLoginUsuarios  ( login : string) : integer;

begin

  try

    dmodulo.qCadUsuario.close;

    dmodulo.qCadUsuario.sql.clear;

    dmodulo.qCadUsuario.sql.add('SELECT * FROM usuarios WHERE usuario = :nusuario');

    dmodulo.qCadUsuario.Parameters.ParamByName('nusuario').value := login;

    dmodulo.qCadUsuario.open;

    result :=  dmodulo.qCadUsuario.RecordCount;

  except

    result :=  0;

  end;

end;


{****************************************************************************
 *  Consultar o Banco de Dados
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function consultaUsuarios  ( idusuario : integer) : boolean;

begin

   if (idusuario = 0)  then

   begin

      dmodulo.qCadUsuario.close;

      dmodulo.qCadUsuario.sql.clear;

      dmodulo.qCadUsuario.sql.add('SELECT * FROM usuarios ');

      dmodulo.qCadUsuario.open;
	  
	  result := true;

   end

  else

   begin

      dmodulo.qCadUsuario.close;

      dmodulo.qCadUsuario.sql.clear;

      dmodulo.qCadUsuario.sql.add('SELECT * FROM usuarios WHERE idusuario = :nidusuario');

      dmodulo.qCadUsuario.Parameters.ParamByName('nidusuario').value := idusuario;

      dmodulo.qCadUsuario.open;
	  
	  result := true;

   end;
   
   result := false;
   

end;

{****************************************************************************
 *  Gravar os dados dos usuarios
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function  gravarUsuario     ( usu : tusuarios) : boolean;
begin
  
   try

     dmodulo.ExecutaSQLc.CommandText := 'insert into usuarios (nome,  ' +
                                        'usuario, senha)' +
                                        'VALUES (:nnome, :nusuario,   ' +
                                        ':nsenha) ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nnome').value := usu.nome;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nusuario').value := usu.usuario;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nsenha').value := usu.senha;

     dmodulo.ExecutaSQLc.execute;

      result := true;

   except

      result := false;

   end;

end;




{****************************************************************************
 *  Alterar os dados dos usuarios
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function  alterarUsuario ( usu : tusuarios) : boolean;
begin
  
   try

     dmodulo.ExecutaSQLc.CommandText := 'UPDATE usuarios SET nome = :nnome, usuario = :nusuario where idusuario = :nid ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nnome').value := usu.nome;

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nusuario').value := usu.usuario;

      dmodulo.ExecutaSQLc.Parameters.ParamByName('nid').value := usu.idusuario;

     dmodulo.ExecutaSQLc.execute;

     result := true;

   except

      result := false;

   end;

end;




{****************************************************************************
 *  Deletar usuario
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function  excluirUsuario ( idusu : integer) : boolean;
begin
  
   try

     dmodulo.ExecutaSQLc.CommandText := 'DELETE * FROM usuarios WHERE idusuario = :nid ';

     dmodulo.ExecutaSQLc.Parameters.ParamByName('nid').value := idusu;

     dmodulo.ExecutaSQLc.execute;

     result := true;

   except

      result := false;

   end;

end;


end.
