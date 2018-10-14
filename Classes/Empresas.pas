{****************************************************************************
 *  Classe de Empresas
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

unit Empresas;

interface

 type  TEmpresa = class

  protected

    fidempresa : integer;
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
    function getidempresa: integer;
    function getidusuario: integer;
    function getmes: integer;
    function getmesatual: integer;
    function getnome: string;

    procedure setano(const Value: integer);
    procedure setanoatual(const Value: integer);
    procedure setcidade(const Value: string);
    procedure setcnpj(const Value: string);
    procedure setendereco(const Value: string);
    procedure setidempresa(const Value: integer);
    procedure setidusuario(const Value: integer);
    procedure setmes(const Value: integer);
    procedure setmesatual(const Value: integer);
    procedure setnome(const Value: string);
    

  published

    property idempresa : integer read getidempresa write setidempresa;
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

function tEmpresa.getano: integer;
begin
     result := self.fano;
end;

function tEmpresa.getanoatual: integer;
begin
     result := self.fanoatual;
end;

function tEmpresa.getcidade: string;
begin
     result := self.fcidade;
end;

function tEmpresa.getcnpj: string;
begin
     result := self.fcnpj;
end;

function tEmpresa.getendereco: string;
begin
     result := self.fendereco;
end;

function tEmpresa.getidempresa: integer;
begin
     result := self.fidempresa;
end;

function tEmpresa.getidusuario: integer;
begin
     result := self.fidusuario;
end;

function tEmpresa.getmes: integer;
begin
    result := self.fmes;
end;

function tEmpresa.getmesatual: integer;
begin
     result := self.fmesatual;
end;

function tEmpresa.getnome: string;
begin
     result := self.fnome;
end;




procedure tEmpresa.setano(const Value: integer);
begin
     self.fano := value;
end;

procedure tEmpresa.setanoatual(const Value: integer);
begin
    self.fanoatual := value;
end;

procedure tEmpresa.setcidade(const Value: string);
begin
     self.fcidade := value;
end;

procedure tEmpresa.setcnpj(const Value: string);
begin
     self.fcnpj := value;
end;

procedure tEmpresa.setendereco(const Value: string);
begin
     self.fendereco := value;
end;

procedure tEmpresa.setidempresa(const Value: integer);
begin
     self.fidempresa := value;
end;

procedure tEmpresa.setidusuario(const Value: integer);
begin
    self.fidusuario := value;
end;

procedure tEmpresa.setmes(const Value: integer);
begin
     self.fmes := value;
end;

procedure tEmpresa.setmesatual(const Value: integer);
begin
     self.fmesatual := value;
end;

procedure tEmpresa.setnome(const Value: string);
begin
     self.fnome := value;
end;

end.
