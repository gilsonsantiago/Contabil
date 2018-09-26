program SisContabilidade;

uses
  Forms,
  uContabil in 'uContabil.pas' {sisContabil},
  sisCotabil in 'Telas\sisCotabil.pas' {frmContabilidade};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TsisContabil, sisContabil);
  Application.CreateForm(TfrmContabilidade, frmContabilidade);
  Application.Run;
end.
