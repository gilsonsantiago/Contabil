
{****************************************************************************
 *  Model de Controle de Usuarios
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

unit ControleUsuarios;


interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls,
  ExtCtrls, modulo, usuarios;

 {****************************************************************************
 *  Publicação das funções
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************} 

function  autenticarusuario ( usu : tusuarios) : integer;
procedure consultaUsuarios  ( idusuario : integer);



implementation

{****************************************************************************
 *  Autenticação do Usuários.
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

function autenticarusuario ( usu : tusuarios) : integer;

begin

     dmodulo.QUsuarios.Close;

     dmodulo.QUsuarios.SQL.Clear;

     dmodulo.QUsuarios.SQL.Add('SELECT * FROM usuarios WHERE usuario = :nusuario and senha = :nsenha ');

     dmodulo.QUsuarios.Parameters.ParamByName('nusuario').Value := usu.usuario;

     dmodulo.QUsuarios.Parameters.ParamByName('nsenha').value   := usu.senha;

     dmodulo.QUsuarios.Open;
      
     result := (dmodulo.QUsuarios.RecordCount);


end;


{****************************************************************************
 *  Consultar o Banco de Dados
 *  usando:   parametro 0 =  todos registro  -  1 - uma busca do codigo
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

procedure consultaUsuarios  ( idusuario : integer);

begin

   if (idusuario = 0)  then

   begin

      dmodulo.qCadUsuario.close;

      dmodulo.qCadUsuario.sql.clear;

      dmodulo.qCadUsuario.sql.add('SELECT * FROM usuarios ');

      dmodulo.qCadUsuario.open;

   end

  else

   begin

      dmodulo.qCadUsuario.close;

      dmodulo.qCadUsuario.sql.clear;

      dmodulo.qCadUsuario.sql.add('SELECT * FROM usuarios WHERE idusuario = :nidusuario');

      dmodulo.qCadUsuario.Parameters.ParamByName('nidusuario').value := idusuario;

      dmodulo.qCadUsuario.open;

   end;
   

end;

end.
