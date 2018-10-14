{****************************************************************************
 *  Classe de Competencia 
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 *  Data de Alteração: 14 de Outubro de 2018
 ********************************************************}


unit AnoMes;

interface
   type Tanomes = class
     protected
       fidCompetencia : integer;
       fano : integer;
       fmes : integer;

     private

      function getano: integer;
      function getmes: integer;  
	    function getidcompetencia: integer;

      procedure setano(const Value: integer);
      procedure setmes(const Value: integer);
      procedure setidcompetencia(const Value: integer);
     
 	 public

       property ano : integer read getano write setano;
       property mes : integer read getmes write setmes ;
	   property idcompetencia : integer read getidcompetencia write setidcompetencia;

   end;

implementation

{ Tanomes }

function Tanomes.getidcompetencia: integer;
begin
    result := self.fidCompetencia;
end;

function Tanomes.getano: integer;
begin
    result := self.fano;
end;

function Tanomes.getmes: integer;
begin
     result := self.fmes;
end;

procedure Tanomes.setano(const Value: integer);
begin
    self.fano := value;
end;

procedure Tanomes.setidcompetencia(const Value: integer);
begin
   self.fidCompetencia := value;
end;

procedure Tanomes.setmes(const Value: integer);
begin
    self.fmes := value;
end;

end.
