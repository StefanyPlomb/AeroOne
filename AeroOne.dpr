program AeroOne;

uses
  Vcl.Forms,
  ULoginView in 'view\ULoginView.pas' {FormLogin},
  UMeusDadosView in 'view\UMeusDadosView.pas' {FormMeusDados},
  UConexaoView in 'view\UConexaoView.pas' {FormConexao},
  UPilotoView in 'view\piloto\UPilotoView.pas' {FormPiloto},
  UPassageiroView in 'view\passageiro\UPassageiroView.pas' {FormPassageiro},
  UGestorView in 'view\gestor\UGestorView.pas' {FormGestor},
  UEnderecoController in 'controller\UEnderecoController.pas',
  UFuncionarioController in 'controller\UFuncionarioController.pas',
  UGestorController in 'controller\UGestorController.pas',
  UPassageiroController in 'controller\UPassageiroController.pas',
  UPilotoController in 'controller\UPilotoController.pas',
  UVooController in 'controller\UVooController.pas',
  UConn in 'model\dao\UConn.pas' {DataModuleConn: TDataModule},
  UUsuarioController in 'controller\UUsuarioController.pas',
  UAeroMocCheckInView in 'view\aeromoc\UAeroMocCheckInView.pas' {FormCheckIn},
  UAeroMocIniciarCheckInView in 'view\aeromoc\UAeroMocIniciarCheckInView.pas' {FormCheckInIniciado},
  UAeroMocMapaAcentosView in 'view\aeromoc\UAeroMocMapaAcentosView.pas' {FormMapaAcentos},
  UAeroMocView in 'view\aeromoc\UAeroMocView.pas' {FormAeroMoc},
  UAeroMocVooView in 'view\aeromoc\UAeroMocVooView.pas' {FormVoosAeroMo},
  UGestorFuncionarioView in 'view\gestor\UGestorFuncionarioView.pas' {FormGestorFuncionario},
  UGestorRelatorioView in 'view\gestor\UGestorRelatorioView.pas' {FormGestorRelatorio},
  UUsuario in 'model\UUsuario.pas',
  UGestorVooView in 'view\gestor\UGestorVooView.pas' {Form1},
  UEndereco in 'model\UEndereco.pas',
  UEnderecoDao in 'model\dao\UEnderecoDao.pas',
  UFuncionarioDao in 'model\dao\UFuncionarioDao.pas',
  UGestorDao in 'model\dao\UGestorDao.pas',
  UPassageiroDao in 'model\dao\UPassageiroDao.pas',
  UPilotoDao in 'model\dao\UPilotoDao.pas',
  UUsuarioDao in 'model\dao\UUsuarioDao.pas',
  UVooDao in 'model\dao\UVooDao.pas',
  UGestorHomeView in 'view\gestor\UGestorHomeView.pas' {FormGestorHome},
  UVoo in 'model\UVoo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModuleConn, DataModuleConn);
  Application.Run;
end.
