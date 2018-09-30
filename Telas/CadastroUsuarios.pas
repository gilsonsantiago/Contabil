unit CadastroUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, ControleUsuarios,
  modulo;

type
  TfrmCadastro = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses Usuarios, DBconfiguracao, inclusaoUsuario,
     AnoMes;

{$R *.dfm}

procedure TfrmCadastro.Button1Click(Sender: TObject);
begin
     adicionarUsuario.ShowModal;
end;

procedure TfrmCadastro.Button4Click(Sender: TObject);
begin

     consultaUsuarios(0) ;

end;

procedure TfrmCadastro.Button5Click(Sender: TObject);
begin
     frmCadastro.Close;
end;

end.
