program SisContabilidade;

uses
  Forms,
  uContabil in 'uContabil.pas' {sisContabil},
  sisCotabil in 'Telas\sisCotabil.pas' {frmContabilidade},
  modulo in 'Funcoes\modulo.pas' {dModulo: TDataModule},
  DBconfiguracao in 'Funcoes\DBconfiguracao.pas',
  Usuarios in 'Classes\Usuarios.pas',
  CadastroUsuarios in 'Telas\CadastroUsuarios.pas' {frmCadastro},
  inclusaoUsuario in 'Telas\inclusaoUsuario.pas' {adicionarUsuario},
  ControleUsuarios in 'Controle\ControleUsuarios.pas',
  pdatas in 'Funcoes\pdatas.pas',
  numescrito in 'Funcoes\numescrito.pas',
  alterarUsuarios in 'Telas\alterarUsuarios.pas' {frmAlterarUsuario},
  cadastroEmpresas in 'Telas\cadastroEmpresas.pas' {frmCadEmpresas},
  adicionarEmpresas in 'Telas\adicionarEmpresas.pas' {frmAdicionarEmpresa},
  alterarEmpresas in 'Telas\alterarEmpresas.pas' {frmAlterarEmpresa},
  controleEmpresas in 'Controle\controleEmpresas.pas',
  Empresas in 'Classes\Empresas.pas',
  competencia in 'Telas\competencia.pas' {frmCompetencia},
  AnoMes in 'Classes\AnoMes.pas',
  adicionarCompetencia in 'Telas\adicionarCompetencia.pas' {frmAdicionarCompetencia},
  controleCompetencia in 'Controle\controleCompetencia.pas',
  inclusaodeCompetencias in 'Telas\inclusaodeCompetencias.pas' {frmincluirCompetencia};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TsisContabil, sisContabil);
  Application.CreateForm(TfrmContabilidade, frmContabilidade);
  Application.CreateForm(TdModulo, dModulo);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TadicionarUsuario, adicionarUsuario);
  Application.CreateForm(TfrmAlterarUsuario, frmAlterarUsuario);
  Application.CreateForm(TfrmCadEmpresas, frmCadEmpresas);
  Application.CreateForm(TfrmAdicionarEmpresa, frmAdicionarEmpresa);
  Application.CreateForm(TfrmAlterarEmpresa, frmAlterarEmpresa);
  Application.CreateForm(TfrmCompetencia, frmCompetencia);
  Application.CreateForm(TfrmAdicionarCompetencia, frmAdicionarCompetencia);
  Application.CreateForm(TfrmincluirCompetencia, frmincluirCompetencia);
  Application.Run;
end.
