{****************************************************************************
 *  Classe de Empresas
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

unit Empresas;

interface

 type  Empresa = class

  protected

    fid : integer;
    fnome : string;
    fendereco : string;
    fcidade : string;
    fcnpj : string;
    fidusuario : integer;
    fano : integer;
    fmes : integer;
    fanoatual : integer;
    fmesatual : integer;

  private

    function getano: integer;
    function getanoatual: integer;
    function getcidade: string;
    function getcnpj: string;
    function getendereco: string;
    function getid: integer;
    function getidusuario: integer;
    function getmes: integer;
    function getmesatual: integer;
    function getnome: string;

    procedure setano(const Value: integer);
    procedure setanoatual(const Value: integer);
    procedure setcidade(const Value: string);
    procedure setcnpj(const Value: string);
    procedure setendereco(const Value: string);
    procedure setid(const Value: integer);
    procedure setidusuario(const Value: integer);
    procedure setmes(const Value: integer);
    procedure setmesatual(const Value: integer);
    procedure setnome(const Value: string);
    

  published

    property id : integer read getid write setid;
    property nome : string read getnome write setnome;
    property endereco : string read getendereco write setendereco;
    property cidade : string read getcidade write setcidade;
    property cnpj : string read getcnpj write setcnpj;
    property idusuario : integer read getidusuario write setidusuario;
    property ano : integer read getano write setano;
    property mes : integer read getmes write setmes;
    property anoatual : integer read getanoatual write setanoatual;
    property mesatual : integer read getmesatual write setmesatual;

 end;


implementation

{ Empresa }

function Empresa.getano: integer;
begin
     result := self.fano;
end;

function Empresa.getanoatual: integer;
begin
     result := self.fanoatual;
end;

function Empresa.getcidade: string;
begin
     result := self.fcidade;
end;

function Empresa.getcnpj: string;
begin
     result := self.fcnpj;
end;

function Empresa.getendereco: string;
begin
     result := self.fendereco;
end;

function Empresa.getid: integer;
begin
     result := self.fid;
end;

function Empresa.getidusuario: integer;
begin
     result := self.fidusuario;
end;

function Empresa.getmes: integer;
begin
    result := self.fmes;
end;

function Empresa.getmesatual: integer;
begin
     result := self.fmesatual;
end;

function Empresa.getnome: string;
begin
     result := self.fnome;
end;




procedure Empresa.setano(const Value: integer);
begin
     self.fano := value;
end;

procedure Empresa.setanoatual(const Value: integer);
begin
    self.fanoatual := value;
end;

procedure Empresa.setcidade(const Value: string);
begin
     self.fcidade := value;
end;

procedure Empresa.setcnpj(const Value: string);
begin
     self.fcnpj := value;
end;

procedure Empresa.setendereco(const Value: string);
begin
     self.fendereco := value;
end;

procedure Empresa.setid(const Value: integer);
begin
     self.fid := value;
end;

procedure Empresa.setidusuario(const Value: integer);
begin
    self.fidusuario := value;
end;

procedure Empresa.setmes(const Value: integer);
begin
     self.fmes := value;
end;

procedure Empresa.setmesatual(const Value: integer);
begin
     self.fmesatual := value;
end;

procedure Empresa.setnome(const Value: string);
begin
     self.fnome := value;
end;

end.
