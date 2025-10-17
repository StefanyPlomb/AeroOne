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
  UMcadastrofuncionario in 'Model\Gestor\UMcadastrofuncionario.pas',
  UCadastroFuncionarios in 'View\Gestor\UCadastroFuncionarios.pas' {FormCadastroFuncionaris},
  UGestor in 'View\Gestor\UGestor.pas' {FormGestor},
  UViewVoo in 'View\Gestor\UViewVoo.pas' {FormVoos},
  UCadastroVoo in 'View\Gestor\UCadastroVoo.pas' {FormCadastroVoos},
  UAeromoc in 'View\Funcion�rio\UAeromoc.pas' {FormAeroMoc},
  UDash in 'View\UDash.pas' {FormDash},
  UCheckin in 'View\Funcion�rio\UCheckin.pas' {FormCheckin},
  UIniciarCheckin in 'View\Funcion�rio\UIniciarCheckin.pas' {FormCheckin_Iniciado},
  ULiberarCheckin in 'View\Funcion�rio\ULiberarCheckin.pas' {FormLiberarCheckin},
  UMapaAcentos in 'View\Funcion�rio\UMapaAcentos.pas' {FormMapaAcentos},
  UVoosAeroMo in 'View\Funcion�rio\UVoosAeroMo.pas' {FormVoosAeroMo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // S� os forms que realmente abrem na inicializa��o
  Application.CreateForm(TFormLogin, FormLogin); // LOGIN
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

