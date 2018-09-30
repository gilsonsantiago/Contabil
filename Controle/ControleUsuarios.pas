
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

  

function autenticarusuario ( usu : tusuarios) : integer;



implementation



function autenticarusuario ( usu : tusuarios) : integer;
var
  contador : integer;
begin

     dmodulo.QUsuarios.Close;

     dmodulo.QUsuarios.SQL.Clear;

     dmodulo.QUsuarios.SQL.Add('SELECT * FROM usuarios WHERE usuario = :nusuario and senha = :nsenha ');

     dmodulo.QUsuarios.Parameters.ParamByName('nusuario').Value := usu.usuario;

     dmodulo.QUsuarios.Parameters.ParamByName('nsenha').value   := usu.senha;

     dmodulo.QUsuarios.Open;

     contador := dmodulo.QUsuarios.RecordCount();

     result :=  contador;


end;

end.
