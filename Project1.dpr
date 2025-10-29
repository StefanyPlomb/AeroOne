program Project1;

uses
  Vcl.Forms,
  UMgestor in 'Model\UMgestor.pas',
  UCgestor in 'Controller\UCgestor.pas',
  UMfuncionario in 'Model\UMfuncionario.pas',
  UCfuncionario in 'Controller\UCfuncionario.pas',
  UMpassageiros in 'Model\UMpassageiros.pas',
  UCpassageiros in 'Controller\UCpassageiros.pas',
  UMpiloto in 'Model\UMpiloto.pas',
  UCpiloto in 'Controller\UCpiloto.pas',
  FVlogin in 'View\FVlogin.pas' {FormLogin},
  UData in 'Data\UData.pas' {DataModule1: TDataModule},
  FVrelatorios in 'View\Gestor\FVrelatorios.pas' {FormRelatorios},
  Mcadastrofuncionario in 'Model\Gestor\Mcadastrofuncionario.pas',
  UCadastroFuncionarios in 'View\Gestor\UCadastroFuncionarios.pas' {FormCadastroFuncionaris},
  UGestor in 'View\Gestor\UGestor.pas' {FormGestor},
  UViewVoo in 'View\Gestor\UViewVoo.pas' {FormVoos},
  UCadastroVoo in 'View\Gestor\UCadastroVoo.pas' {FormCadastroVoos},
  UAeromoc in 'View\Funcionário\UAeromoc.pas' {FormAeroMoc},
  UDash in 'View\UDash.pas' {FormDash},
  UCheckin in 'View\Funcionário\UCheckin.pas' {FormCheckin},
  UIniciarCheckin in 'View\Funcionário\UIniciarCheckin.pas' {FormCheckin_Iniciado},
  ULiberarCheckin in 'View\Funcionário\ULiberarCheckin.pas' {FormLiberarCheckin},
  UMapaAcentos in 'View\Funcionário\UMapaAcentos.pas' {FormMapaAcentos},
  UVoosAeroMo in 'View\Funcionário\UVoosAeroMo.pas' {FormVoosAeroMo},
  UConexão in 'View\UConexão.pas' {Form5},
  UDados in 'View\UDados.pas' {FormMeusDados},
  UPartidaVoo in 'View\Piloto\UPartidaVoo.pas' {Form3},
  UPiloto in 'View\Piloto\UPiloto.pas' {FormPiloto},
  UPassageiro in 'View\Passageiro\UPassageiro.pas' {FormPassageiro},
  MEndereco in 'Model\MEndereco.pas',
  CEnderecoController in 'Controller\CEnderecoController.pas',
  CBloquear in 'Controller\CBloquear.pas',
  CCadastroFuncionario in 'Controller\Gestor\CCadastroFuncionario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Só os forms que realmente abrem na inicialização
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  // LOGIN
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFormMeusDados, FormMeusDados);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFormPiloto, FormPiloto);
  Application.CreateForm(TFormPassageiro, FormPassageiro);

  Application.CreateForm(TDataModule1, DataModule1);  //BD

  Application.CreateForm(TFormRelatorios, FormRelatorios);
  Application.CreateForm(TFormCadastroFuncionaris, FormCadastroFuncionaris);
  Application.CreateForm(TFormGestor, FormGestor);  // GESTOR
  Application.CreateForm(TFormVoos, FormVoos);
  Application.CreateForm(TFormCadastroVoos, FormCadastroVoos);
  Application.CreateForm(TFormAeroMoc, FormAeroMoc);   //AEROMOCA
  Application.CreateForm(TFormDash, FormDash);
  Application.CreateForm(TFormCheckin, FormCheckin);
  Application.CreateForm(TFormCheckin_Iniciado, FormCheckin_Iniciado);
  Application.CreateForm(TFormLiberarCheckin, FormLiberarCheckin);
  Application.CreateForm(TFormMapaAcentos, FormMapaAcentos);
  Application.CreateForm(TFormVoosAeroMo, FormVoosAeroMo);
  Application.CreateForm(TFormGestor, FormGestor);

  Application.Run;
end.

