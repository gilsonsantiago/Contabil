unit adicionarEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmAdicionarEmpresa = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdicionarEmpresa: TfrmAdicionarEmpresa;

implementation

{$R *.dfm}

end.
