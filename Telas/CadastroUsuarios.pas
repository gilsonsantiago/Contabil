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
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses Usuarios, DBconfiguracao, inclusaoUsuario,
     AnoMes, alterarUsuarios;

{$R *.dfm}

procedure TfrmCadastro.Button1Click(Sender: TObject);
begin

     adicionarUsuario.ShowModal;
     consultaUsuarios(0) ;

end;

procedure TfrmCadastro.Button2Click(Sender: TObject);
begin
     frmAlterarUsuario.ShowModal;
     consultaUsuarios(0) ;
     
end;

procedure TfrmCadastro.Button3Click(Sender: TObject);
var
  eclui : boolean;
begin
  if messagedlg ('Tem certeza da exclusão ? ', mtconfirmation, [mbYes, mbNo], 0) = mrYes then

     eclui :=  excluirUsuario (dmodulo.qCadUsuarioidusuario.Value);

  if eclui then

     showmessage ('Usuário excluido com sucesso...')

  else
  
     showmessage ('Usuário não foi excluido...');

  consultaUsuarios(0) ;

end;

procedure TfrmCadastro.Button4Click(Sender: TObject);
begin

     consultaUsuarios(0) ;

end;

procedure TfrmCadastro.Button5Click(Sender: TObject);
begin
     frmCadastro.Close;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
      consultaUsuarios(0) ;
end;

end.
