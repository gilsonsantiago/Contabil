
{****************************************************************************
 *  
 *  Autor: Gilson Santiago
 *  Data:  29 de setembro de 2018
 *  Unit:  Modulo  
 ********************************************************}

unit modulo;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdModulo = class(TDataModule)
    Conexao: TADOConnection;
    QUsuarios: TADOQuery;
    DSUsuario: TDataSource;
    QUsuariosidusuario: TAutoIncField;
    QUsuariosnome: TWideStringField;
    QUsuariosusuario: TWideStringField;
    QUsuariosstatus: TWideStringField;
    QUsuariossenha: TWideStringField;
    QUsuariosdataCadastro: TDateTimeField;
    QUsuariosnivel: TWideStringField;
    QUsuariosano: TIntegerField;
    QUsuariosmes: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dModulo: TdModulo;

implementation

{$R *.dfm}

end.