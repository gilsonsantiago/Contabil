unit uContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dbconfiguracao, Menus, Grids, DBGrids;

type
  TsisContabil = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sisContabil: TsisContabil;

implementation

uses sisCotabil, modulo, ControleUsuarios, Usuarios;

{$R *.dfm}

procedure TsisContabil.Button1Click(Sender: TObject);
var 
  logar : Tusuarios;
  arqusu : integer;
begin

   if conectar() then

      begin

       showmessage ('Conexão bem sucedida ');

       //  frmContabilidade.ShowModal;

       //   siscontabil.Close;

      end

    else
    
     begin

       showmessage ('Não foi possível a conexão');

       siscontabil.Close;

     end;

     logar := tusuarios.Create();

     logar.usuario := sisContabil.Edit1.text;
	 
     logar.senha   := sisContabil.Edit2.Text;

     arqusu := autenticarusuario (logar);

     if ( arqusu < 0 ) then
       begin
       
         showmessage ('Usuário não cadastrado...');

         sisContabil.Close;

      end

     else
     
      begin

         showmessage ('Usuário autenticado...');



         frmContabilidade.ShowModal;

         siscontabil.Close;

      end;


end;

procedure TsisContabil.Button2Click(Sender: TObject);
begin
     sisContabil.Close;
end;

end.
