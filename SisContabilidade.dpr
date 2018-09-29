program SisContabilidade;

uses
  Forms,
  uContabil in 'uContabil.pas' {sisContabil},
  sisCotabil in 'Telas\sisCotabil.pas' {frmContabilidade},
  modulo in 'Funcoes\modulo.pas' {dModulo: TDataModule},
  DBconfiguracao in 'Funcoes\DBconfiguracao.pas',
  Usuarios in 'Classes\Usuarios.pas',
  AnoMes in 'Classes\AnoMes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TsisContabil, sisContabil);
  Application.CreateForm(TfrmContabilidade, frmContabilidade);
  Application.CreateForm(TdModulo, dModulo);
  Application.Run;
end.
