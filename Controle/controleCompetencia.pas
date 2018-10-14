unit controleCompetencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls,
  ExtCtrls, modulo, pdatas;

  function  consultaCompetencia ( cano, cmes : integer)  : boolean;

implementation

function  consultaCompetencia ( cano, cmes : integer)  : boolean;
begin

 if (cano = 0) and (cmes = 0)  then

   begin

      dmodulo.qCadCompetencia.close;

      dmodulo.qCadCompetencia.sql.clear;

      dmodulo.qCadCompetencia.sql.add('SELECT * FROM exercicios ');

      dmodulo.qCadCompetencia.open;

	  result := true;

   end

  else

   begin

     dmodulo.qCadCompetencia.close;

      dmodulo.qCadCompetencia.sql.clear;

      dmodulo.qCadCompetencia.sql.add('SELECT * FROM exercicios WHERE ano = :nano and mes = :nmes ');

      dmodulo.qCadCompetencia.Parameters.ParamByName('nano').value := cano;

      dmodulo.qCadCompetencia.Parameters.ParamByName('nmes').value := cmes;

      dmodulo.qCadCompetencia.open;

	  result := true;

   end;
   
   result := false;

end;




end.
