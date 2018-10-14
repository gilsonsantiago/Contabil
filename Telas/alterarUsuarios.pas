unit alterarUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, usuarios, modulo,  ExtCtrls, Mask, DBCtrls;

type
  TfrmAlterarUsuario = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterarUsuario: TfrmAlterarUsuario;

implementation

uses ControleUsuarios, inclusaoUsuario;

{$R *.dfm}

procedure TfrmAlterarUsuario.Button1Click(Sender: TObject);
var
  usu : tusuarios;
  flag : integer;
begin

     usu := tusuarios.Create();

     usu.idusuario := strtoint(frmalterarusuario.Edit1.text);
     usu.nome      := (frmalterarusuario.Edit2.Text);
     usu.usuario   := frmalterarusuario.Edit3.Text;

     if (alterarusuario(usu)) then

        showmessage ('Dados alterados com sucesso...')

     else

        showmessage ('Ocorreu erro na gravação...') ;  // Final do IF
       
   
    frmalterarusuario.Close;

end;

procedure TfrmAlterarUsuario.FormShow(Sender: TObject);
begin

  frmAlterarUsuario.Edit1.Text :=  dmodulo.qCadUsuarioidusuario.AsString;
  frmAlterarUsuario.Edit2.Text :=  dmodulo.qCadUsuarionome.Value;
  frmAlterarUsuario.Edit3.Text :=  dmodulo.qCadUsuariousuario.Value;

 end;

end.
