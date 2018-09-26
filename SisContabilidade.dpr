program SisContabilidade;

uses
  Forms,
  uContabil in 'uContabil.pas' {sisContabil},
  sisCotabil in 'Telas\sisCotabil.pas' {frmContabilidade},
  modulo in 'Funcoes\modulo.pas' {dModulo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TsisContabil, sisContabil);
  Application.CreateForm(TfrmContabilidade, frmContabilidade);
  Application.CreateForm(TdModulo, dModulo);
  Application.Run;
end.
