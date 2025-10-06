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
  FVpainelvoofuncionario in 'View\Funcionário\FVpainelvoofuncionario.pas' {Form12},
  UData in 'Data\UData.pas' {DataModule1: TDataModule},
  FVrelatorios in 'View\Gestor\FVrelatorios.pas' {FormRelatorios},
  UMcadastrofuncionario in 'Model\Gestor\UMcadastrofuncionario.pas',
  UCadastroFuncionarios in 'View\Gestor\UCadastroFuncionarios.pas' {FormCadastroFuncionaris},
  UGestor in 'View\Gestor\UGestor.pas' {FormGestor},
  UViewVoo in 'View\Gestor\UViewVoo.pas' {FormVoos},
  UCadastroVoo in 'View\Gestor\UCadastroVoo.pas' {FormCadastroVoos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Só os forms que realmente abrem na inicialização
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormRelatorios, FormRelatorios);
  Application.CreateForm(TFormCadastroFuncionaris, FormCadastroFuncionaris);
  Application.CreateForm(TFormGestor, FormGestor);
  Application.CreateForm(TFormVoos, FormVoos);
  Application.CreateForm(TFormCadastroVoos, FormCadastroVoos);
  // login
  Application.CreateForm(TFormGestor, FormGestor);
  //Application.CreateForm(TForm8, Form8);
//  Application.CreateForm(TForm9, Form9);
//  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  // gestor
//  Application.CreateForm(TForm3, Form3); // funcionario
//  Application.CreateForm(TForm4, Form4); // passageiros
//  Application.CreateForm(TForm5, Form5); // piloto

  Application.Run;
end.

