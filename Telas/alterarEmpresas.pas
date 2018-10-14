unit alterarEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, modulo, controleEmpresas,  empresas,  StdCtrls;

type
  TfrmAlterarEmpresa = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAlterarEmpresa: TfrmAlterarEmpresa;

implementation

{$R *.dfm}

procedure TfrmAlterarEmpresa.Button1Click(Sender: TObject);
var
  empe : tempresa;
  flag : boolean;
begin

       empe := tempresa.Create();

       empe.idempresa := strtoint(frmAlterarEmpresa.Edit1.text);
       empe.nome := frmAlterarEmpresa.Edit2.text;
       empe.endereco := frmAlterarEmpresa.Edit3.Text;
       empe.cidade :=  frmAlterarEmpresa.Edit4.Text;
       empe.cnpj  := frmAlterarEmpresa.Edit5.Text;

       if ( alteracaoEmpresa ( empe)) then

           showmessage ('Dados gravados com sucesso...')

       else

           showmessage ('Ocorreu erro na gravação...') ;  // Final do IF

    
     frmAlterarEmpresa.close;

end;

procedure TfrmAlterarEmpresa.Button2Click(Sender: TObject);
begin
    frmAlterarEmpresa.Close;
end;

procedure TfrmAlterarEmpresa.FormShow(Sender: TObject);
begin
      frmAlterarEmpresa.Edit1.Text := inttostr(dmodulo.qCadEmpresaidempresa.Value);
      frmAlterarEmpresa.Edit2.Text := dmodulo.qCadEmpresanome.Value;
      frmAlterarEmpresa.Edit3.Text := dmodulo.qCadEmpresaendereco.Value;
      frmAlterarEmpresa.Edit4.Text := dmodulo.qCadEmpresacidade.Value;
      frmAlterarEmpresa.Edit5.Text := dmodulo.qCadEmpresacnpj.Value;
      
end;

end.
