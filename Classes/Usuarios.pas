{****************************************************************************
 *  Classe de Tusuarios
 *  Autor: Gilson Santiago
 *  Data:  30 de setembro de 2018
 ********************************************************}

unit Usuarios;

interface

type Tusuarios = class

  protected
   
    fidusuario : integer;
    fnome : string;
    fusuario : string;
    fstatus : string;
    fsenha: string;
    fdataCadastro : TDateTime ;
    fnivel : string;
    fano : integer;
    fmes : integer;

  Private
 
    function getano: integer;
    function getdataCadastro: TDateTime;
    function getidusuario: integer;
    function getmes: integer;
    function getnivel: string;
    function getnome: string;
    function getsenha: string;
    function getstatus: string;
    function getusuario: string;

    procedure setano(const Value: integer);
    procedure setdataCadastro(const Value: TDateTime);
    procedure setmes(const Value: integer);
    procedure setidusuario(const Value: integer);
    procedure setnivel(const Value: string);
    procedure setnome(const Value: string);
    procedure setsenha(const Value: string);
    procedure setstatus(const Value: string);
    procedure setusuario(const Value: string);

  public

    property idusuario : integer read getidusuario write setidusuario;
    property nome : string read getnome write setnome;
    property usuario : string read getusuario write setusuario;
    property status : string read getstatus write setstatus;
    property senha: string read getsenha write setsenha;
    property dataCadastro : TDateTime read getdataCadastro write setdataCadastro;
    property nivel : string read getnivel  write setnivel ;
    property ano : integer read getano write setano;
    property mes : integer read getmes write setmes;

end;

implementation

{ Tusuarios }

function Tusuarios.getano: integer;
begin
     result := self.fano;
end;

function Tusuarios.getdataCadastro: TDateTime;
begin
     result := self.fdataCadastro;
end;

function Tusuarios.getidusuario: integer;
begin
      result := self.fidusuario;
end;

function Tusuarios.getmes: integer;
begin
     result := self.fmes;
end;

function Tusuarios.getnivel: string;
begin
     result := self.fnivel;
end;

function Tusuarios.getnome: string;
begin
     result := self.fnome;
end;

function Tusuarios.getsenha: string;
begin
     result := self.fsenha;
end;

function Tusuarios.getstatus: string;
begin
     result := self.fstatus;
end;

function Tusuarios.getusuario: string;
begin
     result := self.fusuario;
end;

procedure Tusuarios.setano(const Value: integer);
begin
      self.fano := value;
end;

procedure Tusuarios.setdataCadastro(const Value: TDateTime);
begin
      self.fdataCadastro := value;
end;

procedure Tusuarios.setmes(const Value: integer);
begin
      self.fmes := value;
end;

procedure Tusuarios.setidusuario(const Value: integer);
begin
     self.fidusuario := value;
end;

procedure Tusuarios.setnivel(const Value: string);
begin
     self.fnivel := value;
end;

procedure Tusuarios.setnome(const Value: string);
begin
     self.fnome := value;
end;

procedure Tusuarios.setsenha(const Value: string);
begin
     self.fsenha := value;
end;

procedure Tusuarios.setstatus(const Value: string);
begin
     self.fstatus := value;
end;

procedure Tusuarios.setusuario(const Value: string);
begin
     self.fusuario := value;
end;

end.
