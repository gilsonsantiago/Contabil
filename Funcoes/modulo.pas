unit modulo;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdModulo = class(TDataModule)
    Conexao: TADOConnection;
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
