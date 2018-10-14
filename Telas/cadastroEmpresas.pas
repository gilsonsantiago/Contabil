unit cadastroEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, modulo, empresas, controleempresas, Grids, DBGrids;

type
  TfrmCadEmpresas = class(TForm)
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresas: TfrmCadEmpresas;

implementation

uses adicionarEmpresas, alterarEmpresas;


{$R *.dfm}

procedure TfrmCadEmpresas.Button1Click(Sender: TObject);
begin
     frmadicionarempresa.ShowModal;
     consultaEmpresa('');
     

end;

procedure TfrmCadEmpresas.Button2Click(Sender: TObject);
begin
     frmAlterarEmpresa.ShowModal;
     consultaEmpresa('');
end;

procedure TfrmCadEmpresas.Button3Click(Sender: TObject);
var
 exclui : boolean;
begin

  if messagedlg ('Tem certeza da exclusão ? ', mtconfirmation, [mbYes, mbNo], 0) = mrYes then

     exclui :=  exclusaoEmpresa (dmodulo.qCadEmpresaidempresa.Value);

  if exclui then

     showmessage ('Usuário excluido com sucesso...')

  else

     showmessage ('Usuário não foi excluido...');


   consultaEmpresa('');

end;

procedure TfrmCadEmpresas.Button4Click(Sender: TObject);
begin
     consultaempresa('');
end;

procedure TfrmCadEmpresas.Button6Click(Sender: TObject);
begin
     consultaEmpresa(frmCadEmpresas.edit1.Text);
end;

procedure TfrmCadEmpresas.FormShow(Sender: TObject);
begin
    consultaEmpresa('');
end;

end.
