unit sisCotabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TfrmContabilidade = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Configurao1: TMenuItem;
    N1: TMenuItem;
    Usurios1: TMenuItem;
    Empresa1: TMenuItem;
    N2: TMenuItem;
    PlanodeContas1: TMenuItem;
    Movimento1: TMenuItem;
    Lancamentos1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContabilidade: TfrmContabilidade;

implementation

{$R *.dfm}

end.
