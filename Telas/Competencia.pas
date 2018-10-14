unit competencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, anomes, controleCompetencia,
  modulo, Grids, DBGrids;

type
  TfrmCompetencia = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompetencia: TfrmCompetencia;

implementation

{$R *.dfm}

procedure TfrmCompetencia.FormShow(Sender: TObject);
begin
      consultaCompetencia (0,0 );
end;

end.
