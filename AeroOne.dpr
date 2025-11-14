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
  UPassageiroController in 'controller\UPassageiroController.pas',
  UPilotoController in 'controller\UPilotoController.pas',
  UVooController in 'controller\UVooController.pas',
  UConn in 'model\dao\UConn.pas' {DataModuleConn: TDataModule},
  UUsuarioController in 'controller\UUsuarioController.pas',
  UGestorFuncionarioView in 'view\gestor\UGestorFuncionarioView.pas' {FormGestorFuncionario},
  UGestorRelatorioView in 'view\gestor\UGestorRelatorioView.pas' {FormGestorRelatorio},
  UUsuario in 'model\UUsuario.pas',
  UGestorVooView in 'view\gestor\UGestorVooView.pas' {Form1},
  UEndereco in 'model\UEndereco.pas',
  UEnderecoDao in 'model\dao\UEnderecoDao.pas',
  UPassageiroDao in 'model\dao\UPassageiroDao.pas',
  UPilotoDao in 'model\dao\UPilotoDao.pas',
  UUsuarioDao in 'model\dao\UUsuarioDao.pas',
  UVooDao in 'model\dao\UVooDao.pas',
  UGestorHomeView in 'view\gestor\UGestorHomeView.pas' {FormGestorHome},
  UVoo in 'model\UVoo.pas',
  UAeronave in 'model\UAeronave.pas',
  UComissarioDao in 'model\dao\UComissarioDao.pas',
  UComissarioController in 'controller\UComissarioController.pas',
  UComissarioCheckInView in 'view\comissario\UComissarioCheckInView.pas' {FormCheckIn},
  UComissarioIniciarCheckInView in 'view\comissario\UComissarioIniciarCheckInView.pas' {FormCheckInIniciado},
  UComissarioMapaAcentosView in 'view\comissario\UComissarioMapaAcentosView.pas' {FormMapaAcentos},
  UComissarioView in 'view\comissario\UComissarioView.pas' {FormAeroMoc},
  UComissarioVooView in 'view\comissario\UComissarioVooView.pas' {FormVoosAeroMo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModuleConn, DataModuleConn);
  Application.Run;
end.
