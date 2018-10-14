unit adicionarEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, controleempresas, empresas, ExtCtrls;

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
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdicionarEmpresa: TfrmAdicionarEmpresa;

implementation

{$R *.dfm}

procedure TfrmAdicionarEmpresa.Button1Click(Sender: TObject);
var
  empe : tempresa;
  flag : boolean;

begin

  flag := consultaEmpresa(frmAdicionarEmpresa.Edit2.Text);

  if (flag)  then
  
   begin

      showmessage ('Ente já cdastrado...');

     end

  else

    begin

       empe := tempresa.Create();

       empe.nome := frmAdicionarEmpresa.Edit2.text;
       empe.endereco := frmAdicionarEmpresa.Edit3.Text;
       empe.cidade :=  frmAdicionarEmpresa.Edit4.Text;
       empe.cnpj  := frmAdicionarEmpresa.Edit5.Text;

       if (gravarEmpresa( empe)) then

           showmessage ('Dados gravados com sucesso...')

       else

           showmessage ('Ocorreu erro na gravação...') ;  // Final do IF

     end;

    frmAdicionarEmpresa.Close;

end;

end.
