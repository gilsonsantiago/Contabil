unit inclusaoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, usuarios, modulo, ControleUsuarios, ExtCtrls;

type
  TadicionarUsuario = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adicionarUsuario: TadicionarUsuario;

implementation


{$R *.dfm}

procedure TadicionarUsuario.Button1Click(Sender: TObject);
var
  usu : tusuarios;
  flag : integer;
begin

  flag  := consultaLoginUsuarios (adicionarusuario.Edit3.Text);

  if (flag  > 0 ) then

    begin

      showmessage ('Usuário já cdastrado...');

     end

  else

    begin

       usu := tusuarios.Create();

       usu.nome         := adicionarUsuario.Edit2.Text;
       usu.usuario      := adicionarUsuario.Edit3.Text;
       usu.senha        := adicionarUsuario.Edit4.Text;

       if (gravarUsuario( usu)) then

           showmessage ('Dados gravados com sucesso...')

       else

           showmessage ('Ocorreu erro na gravação...') ;  // Final do IF
       
    end;

    adicionarUsuario.Close;

 end;
  
end.
