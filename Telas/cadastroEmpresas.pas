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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresas: TfrmCadEmpresas;

implementation

uses adicionarEmpresas, alterarEmpresas;


{$R *.dfm}

procedure TfrmCadEmpresas.Button1Click(Sender: TObject);
begin
     frmadicionarempresa.ShowModal;
end;

procedure TfrmCadEmpresas.Button2Click(Sender: TObject);
begin
     frmAlterarEmpresa.ShowModal;
end;

end.
