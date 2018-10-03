unit cadastroEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TfrmCadEmpresas = class(TForm)
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Button6: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresas: TfrmCadEmpresas;

implementation

{$R *.dfm}

end.
