unit uContabil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dbconfiguracao,   Menus;

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

uses sisCotabil;

{$R *.dfm}

procedure TsisContabil.Button1Click(Sender: TObject);
begin


      conectar();





      frmContabilidade.ShowModal;
end;

procedure TsisContabil.Button2Click(Sender: TObject);
begin
     sisContabil.Close;
end;

end.
