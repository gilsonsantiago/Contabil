unit uContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dbconfiguracao,   Menus, Grids, DBGrids;

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
    DBGrid1: TDBGrid;
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

uses sisCotabil, modulo;

{$R *.dfm}

procedure TsisContabil.Button1Click(Sender: TObject);
begin

   if conectar() then

      begin

       showmessage ('Conex�o bem sucedida ');

       //  frmContabilidade.ShowModal;

       //   siscontabil.Close;

      end

    else
    
     begin

       showmessage ('N�o foi poss�vel a conex�o');

       siscontabil.Close;

     end;

     //  ser� modificado para fun��o

    {
     dmodulo.QUsuarios.Close;
     dmodulo.QUsuarios.Open;


     dmodulo.QUsuarios.SQL.Add('SELECT * FROM USUARIOS WHERE usuario = :nusuario and senha = :nsenha');

     dmodulo.QUsuarios.Parameters.ParamByName('nusuario').Value := sisContabil.Edit1.Text;

     dmodulo.QUsuarios.Parameters.ParamByName('nsenha').value   := sisContabil.Edit2.Text;

     dmodulo.QUsuarios.ExecSQL;

     dmodulo.QUsuarios.Open;      }



    { if (dmodulo.QUsuarios.RecordCount < 0 ) then
       begin
         showmessage ('Usu�rio n�o Cadastrado...');

         sisContabil.Close;

      end

     else
     
      begin
         showmessage ('Usu�rio Autenticado...');

         frmContabilidade.ShowModal;

         siscontabil.Close;

      end;     }

end;

procedure TsisContabil.Button2Click(Sender: TObject);
begin
     sisContabil.Close;
end;

end.
