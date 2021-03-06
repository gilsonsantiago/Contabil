unit sisCotabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Usuarios, ExtCtrls, Grids, DBGrids;

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
    N3: TMenuItem;
    SairdoSistema1: TMenuItem;
    Relatrios1: TMenuItem;
    CaixaDiario1: TMenuItem;
    Razo1: TMenuItem;
    Dirio1: TMenuItem;
    N4: TMenuItem;
    Demonstrativo1: TMenuItem;
    Competencias1: TMenuItem;
    N5: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Competencias1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContabilidade: TfrmContabilidade;
  dadosUsuarios : tusuarios;

implementation

uses modulo, AnoMes, CadastroUsuarios, cadastroEmpresas, competencia;

{$R *.dfm}

procedure TfrmContabilidade.Competencias1Click(Sender: TObject);
begin
    frmCompetencia.ShowModal;
end;

procedure TfrmContabilidade.Empresa1Click(Sender: TObject);
begin
      frmCadEmpresas.ShowModal;
end;

procedure TfrmContabilidade.Usurios1Click(Sender: TObject);
begin
      frmCadastro.ShowModal;
end;

end.
