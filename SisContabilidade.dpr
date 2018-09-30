program SisContabilidade;

uses
  Forms,
  uContabil in 'uContabil.pas' {sisContabil},
  sisCotabil in 'Telas\sisCotabil.pas' {frmContabilidade},
  modulo in 'Funcoes\modulo.pas' {dModulo: TDataModule},
  DBconfiguracao in 'Funcoes\DBconfiguracao.pas',
  Usuarios in 'Classes\Usuarios.pas',
  AnoMes in 'Classes\AnoMes.pas',
  CadastroUsuarios in 'Telas\CadastroUsuarios.pas' {frmCadastro},
  Competencia in 'Telas\Competencia.pas' {frmCompetencia},
  inclusaoUsuario in 'Telas\inclusaoUsuario.pas' {adicionarUsuario},
  ControleUsuarios in 'Controle\ControleUsuarios.pas',
  pdatas in 'Funcoes\pdatas.pas',
  numescrito in 'Funcoes\numescrito.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TsisContabil, sisContabil);
  Application.CreateForm(TfrmContabilidade, frmContabilidade);
  Application.CreateForm(TdModulo, dModulo);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TfrmCompetencia, frmCompetencia);
  Application.CreateForm(TadicionarUsuario, adicionarUsuario);
  Application.Run;
end.
