{****************************************************************************
 *  Classe de Competencia 
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}


unit AnoMes;

interface
   type Tanomes = class
     protected

       fano : integer;
       fmes : integer;

     private

      function getano: integer;
      function getmes: integer;

      procedure setano(const Value: integer);
      procedure setmes(const Value: integer);

     public

       property ano : integer read getano write setano;
       property mes : integer read getmes write setmes ;

   end;

implementation

{ Tanomes }

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

procedure Tanomes.setmes(const Value: integer);
begin
    self.fmes := value;
end;

end.
